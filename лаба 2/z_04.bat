:: z_04.bat
@echo off
setlocal
rem List file names by extension in a given directory.
rem Usage: z_04.bat DIR EXT

if "%~1"=="" (echo Usage: %~nx0 DIR EXT & goto :end)
if "%~2"=="" (echo Usage: %~nx0 DIR EXT & goto :end)
if not exist "%~1" (echo Directory not found: %~1 & goto :end)

set "ext=%~2"
if "%ext:~0,1%"=="." set "ext=%ext:~1%"  rem убираем ведущую точку, если передали ".png"

pushd "%~1" >nul
set "found=0"
for %%F in (*.%ext%) do (
  if exist "%%~fF" (
    echo %%~nxF
    set "found=1"
  )
)
if "%found%"=="0" echo No files with extension .%ext% found

:end
popd >nul 2>nul
endlocal
pause
exit /b
