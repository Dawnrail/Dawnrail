$ErrorActionPreference = 'Stop'

$installerUrl = 'https://github.com/angjones3005/Xpecter/releases/latest/download/xpecter-windows-installer.exe'
$installerPath = Join-Path $env:TEMP 'xpecter-windows-installer.exe'

try {
  Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath
  Start-Process -FilePath $installerPath -Wait
}
finally {
  if (Test-Path $installerPath) {
    Remove-Item $installerPath -Force
  }
}