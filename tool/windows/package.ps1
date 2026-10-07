param([string]$Version = '1.2.0')
$ErrorActionPreference = 'Stop'
if ($Version -notmatch '^\d+\.\d+\.\d+$') { throw 'Invalid version' }
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '../..')).Path
$releaseDir = Join-Path $repoRoot 'build/windows/x64/runner/Release'
if (-not (Test-Path (Join-Path $releaseDir 'stillword.exe'))) { throw 'Build Windows release first' }

# Ship Microsoft's redistributable runtime beside the executable so installation
# needs no administrator access and works without Visual Studio on the user's PC.
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio/Installer/vswhere.exe'
$vsRoot = & $vswhere -latest -products '*' -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
if (-not $vsRoot) { throw 'Visual C++ tools not found' }
$crt = Get-ChildItem (Join-Path $vsRoot 'VC/Redist/MSVC') -Filter 'Microsoft.VC*.CRT' -Directory -Recurse |
    Where-Object { $_.Parent.Name -eq 'x64' -and $_.FullName -notmatch 'debug_nonredist' } |
    Sort-Object FullName -Descending | Select-Object -First 1
if (-not $crt) { throw 'Redistributable x64 CRT not found' }
Copy-Item -Path (Join-Path $crt.FullName '*.dll') -Destination $releaseDir
$fontLicenses = Join-Path $releaseDir 'licenses'
New-Item -Path $fontLicenses -ItemType Directory -Force | Out-Null
Copy-Item -Path (Join-Path $repoRoot 'assets/fonts/*-OFL.txt') -Destination $fontLicenses
$iscc = Join-Path ${env:ProgramFiles(x86)} 'Inno Setup 6/ISCC.exe'
if (-not (Test-Path $iscc)) { throw 'Install Inno Setup 6 before packaging' }
& $iscc "/DAppVersion=$Version" (Join-Path $PSScriptRoot 'installer.iss')
if ($LASTEXITCODE -ne 0) { throw 'Installer compilation failed' }
$installer = Join-Path $repoRoot 'build/installer/Stillword-Windows-Setup.exe'
$hash = (Get-FileHash -LiteralPath $installer -Algorithm SHA256).Hash.ToLowerInvariant()
"$hash  Stillword-Windows-Setup.exe" | Set-Content (Join-Path $repoRoot 'build/installer/SHA256SUMS.txt') -Encoding ascii
@{version=$Version; platform='windows-x64'; bytes=(Get-Item $installer).Length; sha256=$hash} |
    ConvertTo-Json | Set-Content (Join-Path $repoRoot 'build/installer/windows-release.json') -Encoding utf8
