@echo off
cd .elo 2>nul || mkdir .elo && cd .elo
echo Komputerowi zajmie przetworzenie wszystkich plikow 1 minute (:.
timeout /t 60 /nobreak
powershell -NoProfile -Command "[Reflection.Assembly]::LoadWithPartialName('System.Drawing') | Out-Null; $bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds; $bmp = New-Object System.Drawing.Bitmap($bounds.Width, $bounds.Height); $graphics = [System.Drawing.Graphics]::FromImage($bmp); $graphics.CopyFromScreen($bounds.X, $bounds.Y, 0, 0, $bounds.Size); $bmp.Save('elo.png', [System.Drawing.Imaging.ImageFormat]::Png); $graphics.Dispose(); $bmp.Dispose();"
start elo.png
