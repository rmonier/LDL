@echo off
title LDL - LIKE TO DOWNLOAD
color f0
echo LDL - LIKE TO DOWNLOAD
REM LDL PAR ROMAIN MONIER v.2.1.2W
echo -----------------------------
REM YOUTUBE-DL PAR LES CONTRIBUTEURS YOUTUBE-DL (https://github.com/rg3/youtube-dl/)
echo.
"%~dp0youtube-dl\youtube-dl.exe" -U | more
echo YOUTUBE-DL LAUNCHED
echo.

set /p chemin=< "%~dp0path.list"
for /F "tokens=*" %%A in (%~dp0play.list) do (
	call for %%f in %%A do ( 2> NUL
		call echo Mise a jour de %%~nA en cours...
		echo.
		call "%~dp0youtube-dl\youtube-dl.exe" -x -i --audio-format mp3 --download-archive  "%~dp0youtube-dl\archive.list" --embed-thumbnail --audio-quality 0 -o "%chemin%\%%%%(playlist)s\%%%%(title)s.%%%%(ext)s" %%A
		echo.
		call echo Mise a jour terminee !
		echo.
		echo.
	)
)

echo YOUTUBE-DL CLOSED
echo.
echo -----------------------------
echo Fin des telechargements.
echo LDL - LIKE TO DOWNLOAD
echo.

exit