@echo off
title INSTALLER LDL - LIKE TO DOWNLOAD
color f0
echo INSTALLATION DE LDL - LIKE TO DOWNLOAD
REM LDL PAR ROMAIN MONIER v.2.1.1W
echo -----------------------------
REM YOUTUBE-DL PAR LES CONTRIBUTEURS YOUTUBE-DL (https://github.com/rg3/youtube-dl/)
echo.
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "
echo | set /p=" . "

schtasks /create /F /tn LikeToDownload /sc minute /mo 10 /tr "%~dp0\LDL.vbs" > nul 2> nul
echo | set /p=" . "
start "" "%~dp0\LDL.vbs" > nul

echo | set /p=" . "
echo | set /p=" . "
echo.
echo.
echo -----------------------------
echo INSTALLATION REUSSIE !
echo LDL - LIKE TO DOWNLOAD
echo.

pause