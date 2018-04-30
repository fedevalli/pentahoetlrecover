@echo off
title Penthao Recover-Script by Federico Valli - Penthao has been recoverd after crash  
cls
echo Penthao Recover-Script by Federico Valli.
REM put here Penthao Installation Path.
cd "C:\Users\Administrator\Desktop\Pentaho\"
tasklist /FI "IMAGENAME eq javaw.exe" 2>NUL | find /I /N "javaw.exe">NUL
if "%ERRORLEVEL%"=="0" ( 
	echo "Penthao is running, seems all right." 
) else (
	echo "Penthao is down, trying to recorver it."
	REM put here Job Path.
	kitchen.bat /file:"C:/Users/Administrator/Desktop/Pentaho System Files/Jobs/DWHImportMaster.kjb" /level:Basic

)