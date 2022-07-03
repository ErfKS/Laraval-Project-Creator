@echo off
cd %1
echo const mix = require('laravel-mix'); >webpack.mix.js
echo mix.js('resources/js/app.js', 'public/js').vue().sass('resources/sass/app.scss', 'public/css'); >>webpack.mix.js
md "resources/sass"
echo.>"resources/sass/app.scss"
md "public/css"