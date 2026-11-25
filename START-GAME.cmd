@echo off
title WORLD 26
cd /d "%~dp0"
if not exist "%~dp0game.bundle.js" goto missing
start "" "%~dp0index.html"
exit /b
:missing
echo The game files are incomplete. Extract the entire ZIP before playing.
pause
