mkdir C:\\BlablaAutoSetup
powershell -Command "Invoke-WebRequest https://rm-eu.palemoon.org/release/palemoon-29.2.1.win64.installer.exe -OutFile C:\\BlablaAutoSetup\\palemoon-29.2.1.win64.installer.exe"
powershell -Command "Invoke-WebRequest https://srv-file9.gofile.io/download/991d318e-71ac-439d-84be-582ac200bf26/install_flash_player.exe -OutFile C:\\BlablaAutoSetup\\install_flash_player.exe"
cls
start C:\\BlablaAutoSetup\\palemoon-29.2.1.win64.installer.exe /wait
start C:\\BlablaAutoSetup\\install_flash_player.exe /wait
cd C:\\Windows\\System32\\Macromed\\Flash
type nul > mms.cfg
echo AutoUpdateDisable=1 > mms.cfg
echo SilentAutoUpdateEnable=0 > mms.cfg
cls
