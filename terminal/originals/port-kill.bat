@echo off
setlocal enabledelayedexpansion

set "port=%~1"
set "found=0"

for /f "tokens=5" %%a in ('netstat -ano ^| find ":%port% " ^| findstr /R /C:"LISTENING" /C:"ESTABLISHED"') do (
    set "found=1"
    taskkill /PID %%a /F
)

if !found! EQU 0 (
    echo No se encontraron procesos en el puerto !port! en estado LISTENING o ESTABLISHED.
)

endlocal
pause
