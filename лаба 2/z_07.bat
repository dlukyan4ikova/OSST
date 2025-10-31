:: z_07.bat
@echo off
setlocal
rem Print file names that exist in both directories (top-level only). Uses exactly one FOR.
rem Usage: z_07.bat DIR1 DIR2
if "%~1"=="" (
  echo Usage: %~nx0 DIR1 DIR2
  goto :end
)
if "%~2"=="" (
  echo Usage: %~nx0 DIR1 DIR2
  goto :end
)
if not exist "%~1" (
  echo Directory not found: %~1
  goto :end
)
if not exist "%~2" (
  echo Directory not found: %~2
  goto :end
)
for /f "delims=" %%F in ('dir /b /a:-d "%~1"') do if exist "%~2\%%~nxF" echo %%~nxF
endlocal

:end
pause
exit /b

