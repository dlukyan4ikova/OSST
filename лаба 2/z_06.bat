:: z_06.bat
@echo off
setlocal
rem Count all subdirectories under a given root (prints number only).
rem Usage: 06_count_subdirs.bat [ROOT_DIR]
set "root=%~1"
if "%root%"=="" set "root=%cd%"
if not exist "%root%" (
  echo Directory not found
  goto :eof
)
set /a n=0
for /r "%root%" /d %%D in (*) do set /a n+=1
echo %n%
endlocal