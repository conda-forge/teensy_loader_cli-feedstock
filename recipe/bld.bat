@echo ON
setlocal enabledelayedexpansion

:REM Taken from the makefile, for some reason it isn't finding the binaries in the path
%CC% -O2 -Wall -s -DUSE_WIN32 -o teensy_loader_cli.exe teensy_loader_cli.c -lhid -lsetupapi -lwinmm
if %ERRORLEVEL% neq 0 exit %ERRORLEVEL%

mkdir %PREFIX%\bin
copy teensy_loader_cli.exe  %PREFIX%\bin\
if %ERRORLEVEL% neq 0 exit %ERRORLEVEL%
