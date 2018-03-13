@echo off&setlocal EnableDelayedExpansion 
set a=1
for /f "delims=" %%i in ('dir /b *.png') do ( 
if not "%%~ni"=="%~n0" ( 
if !a! LSS 100 (if !a! LSS 10 (ren "%%i" "000!a!.png") else ren "%%i" "00!a!.png") else ren "%%i" "0!a!.png" 
set/a a+=1 
) 
)