@echo off
echo Enter your laravel project name : 
set /p myProjName=
echo Enter your laravel project path :
set /p myProjPath=
set proj="%myProjPath%\%myProjName%"
set installerPath=%~dp0
cd %myProjPath%
call laravel new %myProjName%
call "%installerPath%Install Nessesary Packages.bat" %proj% "%installerPath%"
pause