mkdir C:\\BlablaAutoSetup
mkdir C:\\BlablaAutoSetup2
powershell -Command "Invoke-WebRequest https://rm-eu.palemoon.org/release/palemoon-29.2.1.win64.installer.exe -OutFile C:\\BlablaAutoSetup\\palemoon-29.2.1.win64.installer.exe"
cls
powershell -Command "Invoke-WebRequest http://blablaland.ga/Setup/install_flash_player.exe -OutFile C:\\BlablaAutoSetup2\\install_flash_player.exe"
cls

call C:\\BlablaAutoSetup\\palemoon-29.2.1.win64.installer.exe
call C:\\BlablaAutoSetup2\\install_flash_player.exe

cd C:\\Windows\\System32\\Macromed\\Flash
type nul > mms.cfg
echo AutoUpdateDisable=1 > mms.cfg
echo SilentAutoUpdateEnable=0 > mms.cfg
cls
