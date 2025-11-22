@echo off

cls

color 6f

call ..\..\config.bat

echo Добро пожаловать в OldChat!

echo Укажите ваше имя:

set namec=%username%

set /p namec="? "
:go
cls

call curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" http://c98884cg.beget.tech/c.txt

echo.
echo.

set /p jjjdjd="Введите новое сообщение. Введите upd, чтобы обновить чат. Введите exit, чтобы выйти. ? "


if "%jjjdjd%" == "exit" goto e

if "%jjjdjd%" == "upd" goto go

powershell.exe -Command "Invoke-WebRequest -Uri 'http://c98884cg.beget.tech/add.php?user=%namec%&msg=%jjjdjd%' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'"

goto go

:e
closeprogram