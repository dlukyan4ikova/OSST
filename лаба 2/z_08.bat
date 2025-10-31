:: z_08.bat
@echo off
setlocal EnableDelayedExpansion
rem Compute factorial of N with 32-bit bound checking (fits up to 12!).
rem Usage: z_08.bat N

if "%~1"=="" (
  echo Usage: %~nx0 N
  goto :end
)

set /a n=%~1
if %n% LSS 0 (
  echo Negative values are not allowed
  goto :end
)
if %n% GTR 12 (
  echo Value too large for 32-bit integer. Max N is 12.
  goto :end
)

set /a f=1
for /l %%i in (2,1,%n%) do set /a f*=%%i
set "res=!f!"

setlocal DisableDelayedExpansion
echo %n%^! = %res%
endlocal

:end
pause
exit /b

