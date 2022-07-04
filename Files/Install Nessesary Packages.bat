cd %1
echo Installing from Package.json
call npm i

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

echo --------------------------
echo install Mix Packages...
call npm i --save-dev cross-env
call npm i --save-dev laravel-mix@latest
call npm i --save-dev sass-loader@latest
call npm i --save-dev postcss@latest
call npm i --save-dev webpack@latest

echo Do you want create Webpack.mix.js?(Y/N)
set /p createWebpak=
set T=F
if %createWebpak%==y set T=T
if %createWebpak%==Y set T=T
if "%T%"=="T" (
	echo Creating webpack.mix.js
	call WebpackCreator.bat
)

call "create package(json).bat"
echo Please add content of "create package(script).json" to "package.json"

