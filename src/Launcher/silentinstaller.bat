rem ========================
rem === silent installer ===
rem ========================

mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( 'Installation des composants necessaires au jeu...', 10, 'BlablaLauncher', 64 );close()"

mkdir C:\\BlablaLand\\PalemoonAutoSetup
mkdir C:\\BlablaLand\\FlashAutoSetup
powershell -Command "Invoke-WebRequest https://rm-eu.palemoon.org/release/palemoon-29.2.1.win64.installer.exe -OutFile C:\\BlablaLand\\PalemoonAutoSetup\\palemoon-29.2.1.win64.installer.exe"
cls
powershell -Command "Invoke-WebRequest http://blablaland.ga/Setup/install_flash_player.exe -OutFile C:\\BlablaLand\\FlashAutoSetup\\install_flash_player.exe"
cls

call C:\\BlablaLand\\PalemoonAutoSetup\\palemoon-29.2.1.win64.installer.exe
call C:\\BlablaLand\\FlashAutoSetup\\install_flash_player.exe

cd C:\\Windows\\System32\\Macromed\\Flash
type nul > mms.cfg
echo AutoUpdateDisable=1 > mms.cfg
echo SilentAutoUpdateEnable=0 > mms.cfg
cls
