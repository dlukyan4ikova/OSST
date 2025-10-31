@echo off

set /P username=Enter Git username: 
set /P email=Enter email: 

git config --global user.name "%username%"
git config --global user.email "%email%"

echo Configuration set
git config --global user.name
git config --global user.email

echo.
echo Press any key to remove the configuration...
pause

git config --global --unset user.name
git config --global --unset user.email
echo Configuration removed.
pause
