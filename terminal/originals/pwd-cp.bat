@echo off

pwd | clip

timeout /t 1 /nobreak > nul

for /f "tokens=*" %%i in ('powershell -command "Get-Clipboard"') do set clipboard_content=%%i

setlocal enabledelayedexpansion
set "concatenated_part="

for /l %%a in (0,1,99) do (
    set "letter=!clipboard_content:~%%a,1!"

    if not defined letter (
        goto end_loop
    )

    if "!concatenated_part!"=="/c/" (
        set "concatenated_part=cd c:/!letter!"
    ) else (
        set "concatenated_part=!concatenated_part!!letter!"
)
    )

:end_loop
echo !concatenated_part! | clip
endlocal
