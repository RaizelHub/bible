#ifndef AppVersion
  #define AppVersion "1.3.0"
#endif

[Setup]
AppId={{561B7F60-164F-4977-944E-7E4CE9C22F22}
AppName=Stillword
AppVersion={#AppVersion}
AppPublisher=RaizelHub
AppPublisherURL=https://raizelhub.github.io/bible/
AppSupportURL=https://github.com/RaizelHub/bible/issues
DefaultDirName={localappdata}\Programs\Stillword
DefaultGroupName=Stillword
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0.19041
OutputDir=..\..\build\installer
OutputBaseFilename=Stillword-Windows-Setup
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
UninstallDisplayIcon={app}\stillword.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
AppMutex=Local\RaizelHub.Stillword
CloseApplications=yes

[Files]
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\..\windows\runner\resources\app_icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "remove-reminders.ps1"; DestDir: "{app}"; Flags: ignoreversion

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; Flags: unchecked

[Icons]
Name: "{autoprograms}\Stillword"; Filename: "{app}\stillword.exe"; AppUserModelID: "RaizelHub.Stillword"
Name: "{autodesktop}\Stillword"; Filename: "{app}\stillword.exe"; AppUserModelID: "RaizelHub.Stillword"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Classes\CLSID\{{b4c2eb75-665d-4cb9-9a02-321f5ec40b47}\LocalServer32"; ValueType: string; ValueName: ""; ValueData: """{app}\stillword.exe"" -ToastActivated"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\AppUserModelId\RaizelHub.Stillword"; ValueType: string; ValueName: "DisplayName"; ValueData: "Stillword"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\AppUserModelId\RaizelHub.Stillword"; ValueType: string; ValueName: "IconUri"; ValueData: "{app}\app_icon.ico"
Root: HKCU; Subkey: "Software\Classes\AppUserModelId\RaizelHub.Stillword"; ValueType: string; ValueName: "CustomActivator"; ValueData: "{{b4c2eb75-665d-4cb9-9a02-321f5ec40b47}"
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\PushNotifications\Backup\RaizelHub.Stillword"; Flags: uninsdeletekey

[Run]
Filename: "{app}\stillword.exe"; Description: "Open Stillword"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{sys}\WindowsPowerShell\v1.0\powershell.exe"; Parameters: "-NoProfile -NonInteractive -ExecutionPolicy Bypass -File ""{app}\remove-reminders.ps1"""; Flags: runhidden waituntilterminated; RunOnceId: "ClearStillwordReminders"
