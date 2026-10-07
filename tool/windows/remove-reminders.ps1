# Run by the per-user uninstaller before deleting Stillword's app registration.
$ErrorActionPreference = 'Stop'
$null = [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]
$stillwordNotifier = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier('RaizelHub.Stillword')
foreach ($toast in @($stillwordNotifier.GetScheduledToastNotifications())) {
    $stillwordNotifier.RemoveFromSchedule($toast)
}
[Windows.UI.Notifications.ToastNotificationManager]::History.Clear('RaizelHub.Stillword')
