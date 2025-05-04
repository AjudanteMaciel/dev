@echo off
setlocal EnableDelayedExpansion

REM Caminhos
set "iconPath=C:\Users\mdfaria\Documents\dev\workspace\icons"
set "targetPath=C:\Users\mdfaria\Documents\dev"

REM Itera pelas pastas em dev
for /d %%D in ("%targetPath%\*") do (
    set "folderName=%%~nxD"
    set "iconFile=%iconPath%\!folderName!.ico"

    if exist "!iconFile!" (
        attrib -h "%%D\desktop.ini" 2>nul
        echo [.ShellClassInfo] > "%%D\desktop.ini"
        echo IconResource=!iconFile!,0 >> "%%D\desktop.ini"
        attrib +h "%%D\desktop.ini"
        attrib +s "%%D"

        echo Ícone '!folderName!.ico' aplicado em '%%D'
    ) else (
        echo Nenhum ícone correspondente para '%%D'
    )
)

echo Finalizado.
pause
