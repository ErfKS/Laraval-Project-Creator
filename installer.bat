@echo off

echo Are you installed "Composer"?(Y/N)
set /p installedWebpak=
set T=F
if %installedWebpak%==n set T=T
if %installedWebpak%==N set T=T
if "%T%"=="T" (
	echo Please install composer from "https://getcomposer.org/download/"
	pause
	exit
)

call composer global require laravel/installer
set Files=%~dp0\Files
set installPath=C:\Users\%username%\AppData\Roaming\Composer\vendor\bin
copy "%Files%\create package(json).bat" "%installPath%"
copy "%Files%\CreateLaravelProject.bat" "%installPath%"
copy "%Files%\Install Nessesary Packages.bat" "%installPath%"
copy "%Files%\WebpackCreator.bat" "%installPath%"
copy "%Files%\create Server Starter.bat" "%installPath%"
echo All files are copied to %installPath%
echo To use this, open "Command Prompt" and type "cd [Project Path]" and then type "CreateLaravelProject [Project name]"
pause
