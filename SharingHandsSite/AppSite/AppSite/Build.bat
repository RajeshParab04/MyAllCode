@echo off
IF "%1"=="" goto ERR
IF "%1"=="js" goto JS
IF "%1"=="css" goto CSS

:JS
echo compiling JS
gulp -f JSGulpfile.js


:CSS
echo Building CSS
gulp -f CssGulpfile.js


:ERR
echo provide JS or CSS as arguments
