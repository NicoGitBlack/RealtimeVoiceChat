@echo off
if "%~1"=="" (
    echo Glissez une video sur ce fichier pour la comprimer.
    pause
    exit /b
)

set INPUT=%~1
set OUTPUT=%~dpn1_compressed%~x1

echo Compression de : %INPUT%
echo Sortie         : %OUTPUT%
echo.

ffmpeg -i "%INPUT%" -vcodec libx264 -crf 28 -preset slow -tune stillimage -acodec aac -b:a 64k "%OUTPUT%"

echo.
echo Termine ! Fichier cree : %OUTPUT%
pause
