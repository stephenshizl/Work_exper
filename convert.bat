
set CONVERT_DIR=%~sdp0
set OUTPUT_DIR=%~sdp0\output
set INPUT_DIR=%~sdp0\input

echo %CONVERT_DIR%
echo %OUTPUT_DIR%
echo %INPUT_DIR%

set CONVERT_CMD=%CONVERT_DIR=%etcpack.exe

for %%i in (%INPUT_DIR%\*.pkm) do %CONVERT_CMD% %%i %OUTPUT_DIR% -ext PNG

pause

