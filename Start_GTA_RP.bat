@echo off
RMDIR /s /q "K:\Serveur\Nginx\www\GTA_FiveM\Serveur\cache\files"
XCOPY K:\Serveur\Nginx\www\GTA_FiveM\Serveur K:\Serveur\Nginx\www\GTA_FiveM\Backup\ /m /e /y
echo ---------------------------------------
echo -
echo Pour relancer le serveur, Appuyez sur CTRL + C puis "runserver"
echo -
echo ---------------------------------------
echo -
echo Appuyez sur une touche pour lancer FiveM puis lancer le serveur !
echo -
pause > nul
echo -
echo Lancement de FiveM en cours ...
echo -
echo ---------------------------------------
echo -
echo Bon Game et bon Role Play ... sur OxyCity
start C:\Users\bbrpr\AppData\Local\FiveM\FiveM.exe
CLS 
cd K:\Serveur\Nginx\www\GTA_FiveM\Serveur
cmd /k FXServer.exe +exec server.cfg






