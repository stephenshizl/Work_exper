@echo off&setlocal EnableDelayedExpansion 
set a=1
for /f "delims=" %%i in ('dir /b *.png') do ( 
if not "%%~ni"=="%~n0" ( 
#if !a! LSS 10 (ren "%%i" "sp0!a!_airport_sn0.png") else ren "%%i" "sp!a!_airport_sn0.png"
if !a! LSS 10 (ren "%%i" "00!a!.png") else ren "%%i" "0!a!.png" 
set/a a+=1 
) 
)