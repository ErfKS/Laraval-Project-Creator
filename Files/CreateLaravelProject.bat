@echo off
set myProjName=%1
set myProjPath=%CD%
set proj="%myProjPath%\%myProjName%"

echo Creating laravel project to %proj%
call laravel new %myProjName%
echo laravel project is created! (%proj%)
call "Install Nessesary Packages.bat" %proj%
cd %proj%
echo Creating "StartServer.bat" file
call "create Server Starter.bat"
pause
