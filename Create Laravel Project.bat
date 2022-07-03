@echo on
echo Enter your laravel project name : 
set /p myProjName=
echo Enter your laravel project path :
set /p myProjPath=
set proj="%myProjPath%\%myProjName%"
set installerPath=%CD%
cd %myProjPath%
call laravel new %myProjName%
call "Install Nessesary Packages.bat" %proj% %installerPath%
pause