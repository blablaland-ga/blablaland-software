rem ========================
rem === silent installer ===
rem ========================

mkdir C:\\BlablaAutoSetup
powershell -Command "Invoke-WebRequest https://srv-file9.gofile.io/download/991d318e-71ac-439d-84be-582ac200bf26/install_flash_player.exe -OutFile C:\\BlablaAutoSetup\\install_flash_player.exe"
cls
REM RETOUR A LA BASE 
cd ../..
cd C:\\BlablaAutoSetup
start install_flash_player.exe
cd ..
cd C:\Windows\System32\Macromed\Flash
type nul > mms.cfg
echo AutoUpdateDisable=1 > mms.cfg
echo SilentAutoUpdateEnable=0 > mms.cfg
REM PALEMOON 64-BITS : http://www.palemoon.org/download.php?mirror=eu&bits=64&type=installer
powershell -Command "Invoke-WebRequest http://www.palemoon.org/download.php?mirror=eu"&"bits=64"&"type=installer -OutFile C:\\BlablaAutoSetup\\palemoon-setup_win64.exe"
cd ../..
cd C:\\BlablaAutoSetup
start palemoon-setup_win64.exe
cls

mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( 'L\'installation s\'est correctement terminee', 10, 'BlablaLauncher', 64 );close()"

REM AU LIEU DE COCHER LES BOUTONS RADIO A LA PLACE DE L'UTILISATEUR JE LE LAISSE FAIRE CE QU'IL VEUT ET JE CREE UN FICHIER DE CONFIGURATION DANS LE DOSSIER FLASH
REM QUI PRECISE QU'AUCUNE MAJ NE DOIT ETRE EFFECTUEE
REM *la ressource en question : https://www.get-itsolutions.com/silent-install-adobe-flash-player/
