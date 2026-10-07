"""Verify the release DLL against Windows' real notification queue.

Usage: python tool/windows/check-notification-queue.py <release-directory>
Creates an isolated test app ID, schedules far-future toasts in a child process,
then verifies persistence and cancellation in a second process. No toast is shown.
"""
import ctypes as c
import os
from pathlib import Path
import subprocess
import sys
import time
import uuid
import winreg


def worker(directory, app_id, guid, stage):
    os.add_dll_directory(str(directory))
    c.windll.ole32.CoInitializeEx(None, 2)
    lib = c.CDLL(str(directory / 'flutter_local_notifications_windows.dll'))
    lib.createPlugin.restype = c.c_void_p
    lib.init.argtypes = [c.c_void_p, c.c_char_p, c.c_char_p, c.c_char_p, c.c_char_p, c.c_void_p]
    lib.init.restype = c.c_bool
    lib.scheduleNotification.argtypes = [c.c_void_p, c.c_int, c.c_char_p, c.c_int]
    lib.scheduleNotification.restype = c.c_bool
    lib.getPendingNotifications.argtypes = [c.c_void_p, c.POINTER(c.c_int)]
    lib.getPendingNotifications.restype = c.POINTER(c.c_int)
    lib.freeDetailsArray.argtypes = [c.POINTER(c.c_int)]
    lib.cancelNotification.argtypes = [c.c_void_p, c.c_int]
    lib.disposePlugin.argtypes = [c.c_void_p]
    plugin = lib.createPlugin()
    # The validation toasts are always cancelled before they become due.
    callback = c.CFUNCTYPE(None, c.c_void_p)(lambda _: None)
    assert lib.init(plugin, b'Stillword queue validation', app_id.encode(), guid.encode(), None, callback)

    def pending():
        length = c.c_int()
        values = lib.getPendingNotifications(plugin, c.byref(length))
        result = [values[i] for i in range(length.value)]
        lib.freeDetailsArray(values)
        return result

    try:
        if stage == 'schedule':
            xml = b'<toast><visual><binding template="ToastGeneric"><text>Stillword queue validation</text></binding></visual></toast>'
            assert lib.scheduleNotification(plugin, 910001, xml, int(time.time()) + 3600)
            assert lib.scheduleNotification(plugin, 910002, xml, int(time.time()) + 7200)
            assert sorted(pending()) == [910001, 910002]
            print('PASS: two native Windows toasts scheduled')
        elif stage == 'verify':
            assert sorted(pending()) == [910001, 910002], 'Queue did not survive process exit'
            lib.cancelNotification(plugin, 910001)
            assert pending() == [910002], 'Cancelling one entry removed the wrong toast'
            lib.cancelNotification(plugin, 910002)
            assert pending() == [], 'Disabled reminders still pending'
            print('PASS: queue survived process exit; individual cancellation and empty queue verified')
        else:
            for notification_id in pending():
                lib.cancelNotification(plugin, notification_id)
    finally:
        lib.disposePlugin(plugin)
        c.windll.ole32.CoUninitialize()


if __name__ == '__main__':
    directory = Path(sys.argv[1]).resolve()
    if len(sys.argv) > 2:
        worker(directory, *sys.argv[2:])
    else:
        guid = str(uuid.uuid4())
        app_id = 'RaizelHub.Stillword.Validation.' + guid
        command = [sys.executable, __file__, str(directory), app_id, guid]
        try:
            subprocess.run(command + ['schedule'], check=True, timeout=30)
            subprocess.run(command + ['verify'], check=True, timeout=30)
        finally:
            subprocess.run(command + ['cleanup'], check=True, timeout=30)
            for key in [
                'Software\\Classes\\AppUserModelId\\' + app_id,
                'Software\\Microsoft\\Windows\\CurrentVersion\\PushNotifications\\Backup\\' + app_id,
            ]:
                try:
                    winreg.DeleteKey(winreg.HKEY_CURRENT_USER, key)
                except FileNotFoundError:
                    pass
