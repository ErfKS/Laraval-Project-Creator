cd %1
echo Installing from Package.json
call npm install
echo Do you want install Laravel-mix?(Y/N)
set /p larMix=
set T=F
if %larMix%==n set T=T
if %larMix%==N set T=T
if "%T%"=="T" (
	exit
)

echo Installing Laravel-mix
call npm install laravel-mix --save-dev
echo Creating webpack.mix.js	
call %2/WebpackCreator.bat
echo --------------------------
echo save-dev
call npm install --save-dev cross-env
call npm install --save-dev laravel-mix@latest
call %2"/copy package(json).bat" %1 %2

