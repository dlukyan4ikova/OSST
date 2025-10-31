:: z_05.bat
@echo off
setlocal enabledelayedexpansion
rem Read integers until a single '-' line; print MIN and MAX.
echo Enter integers one per line. End with '-' and press Enter.
set "initialized="
:read
set /p v=^> 
if "%v%"=="-" goto done
set "v=%v: =%"
if not defined initialized (
  set /a min=v
  set /a max=v
  set "initialized=1"
) else (
  set /a t=v
  if !t! LSS !min! set /a min=t
  if !t! GTR !max! set /a max=t
)
goto read
:done
if not defined initialized (
  echo No numbers entered
) else (
  echo MIN=!min!
  echo MAX=!max!
)
endlocal
pause