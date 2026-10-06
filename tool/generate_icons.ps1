Add-Type -AssemblyName System.Drawing
function Write-AppIcon([string]$Path, [int]$Size) {
    $bitmap = New-Object System.Drawing.Bitmap($Size, $Size)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $graphics.Clear([System.Drawing.ColorTranslator]::FromHtml('#243E36'))
    $graphics.ScaleTransform(($Size / 100.0), ($Size / 100.0))
    $pen = New-Object System.Drawing.Pen([System.Drawing.ColorTranslator]::FromHtml('#F2EAD5'), 3.5)
    $pen.LineJoin = [System.Drawing.Drawing2D.LineJoin]::Round
    $book = New-Object System.Drawing.Drawing2D.GraphicsPath
    $book.AddBezier(23, 29, 35, 25, 43, 29, 50, 34)
    $book.AddBezier(50, 34, 57, 29, 65, 25, 77, 29)
    $book.AddLine(77, 29, 77, 69)
    $book.AddBezier(77, 69, 66, 65, 57, 68, 50, 73)
    $book.AddBezier(50, 73, 43, 68, 34, 65, 23, 69)
    $book.CloseFigure()
    $graphics.DrawPath($pen, $book)
    $graphics.DrawLine($pen, 50, 35, 50, 71)
    $graphics.DrawLine($pen, 63, 38, 63, 55)
    $graphics.DrawLine($pen, 57, 44, 69, 44)
    $bitmap.Save((Join-Path (Get-Location) $Path), [System.Drawing.Imaging.ImageFormat]::Png)
    $book.Dispose(); $pen.Dispose(); $graphics.Dispose(); $bitmap.Dispose()
}
$androidSizes = @{mdpi=48; hdpi=72; xhdpi=96; xxhdpi=144; xxxhdpi=192}
foreach ($density in $androidSizes.Keys) { Write-AppIcon "android/app/src/main/res/mipmap-$density/ic_launcher.png" $androidSizes[$density] }
$icons = Get-Content ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json -Raw | ConvertFrom-Json
foreach ($icon in $icons.images) {
    $size = [double]($icon.size.Split('x')[0]) * [double]($icon.scale.Replace('x',''))
    Write-AppIcon "ios/Runner/Assets.xcassets/AppIcon.appiconset/$($icon.filename)" ([int]$size)
}
Write-AppIcon 'web/favicon.png' 32
foreach ($size in @(192,512)) {
    Write-AppIcon "web/icons/Icon-$size.png" $size
    Write-AppIcon "web/icons/Icon-maskable-$size.png" $size
}
