@echo ON
setlocal enabledelayedexpansion

make OS=WINDOWS CC=gcc
if %ERRORLEVEL% neq 0 exit %ERRORLEVEL%

mkdir %PREFIX%\bin
copy teensy_loader_cli.exe  %PREFIX%\bin\
if %ERRORLEVEL% neq 0 exit %ERRORLEVEL%
