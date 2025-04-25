@echo off
setlocal enabledelayedexpansion

set port=%1
set option=%2

if "%option%"=="L" (
    netstat -ano | find "!port!" | find "LISTENING"
) else if "%option%"=="E" (
    netstat -ano | find "!port!" | find "ESTABLISHED"
) else if "%option%"=="W" (
    netstat -ano | find "!port!" | find "TIME_WAIT"
) else (
    netstat -ano | find "!port!"
)

endlocal