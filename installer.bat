@echo off
set Files=%~dp0\Files
set installPath=C:\Users\%username%\AppData\Roaming\Composer\vendor\bin
copy "%Files%\create package(json).bat" "%installPath%"
copy "%Files%\CreateLaravelProject.bat" "%installPath%"
copy "%Files%\Install Nessesary Packages.bat" "%installPath%"
copy "%Files%\WebpackCreator.bat" "%installPath%"
echo All files are copied to %installPath%
echo To use this, open "Command Prompt" and type "cd [Project Path]" and then type "CreateLaravelProject [Project name]"
pause