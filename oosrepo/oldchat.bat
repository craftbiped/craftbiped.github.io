@echo off
set inet=n
echo Запуск...
ping -n 1 c98884cg.beget.tech > nul
if %ERRORLEVEL% equ 0 (
    echo OK
    set inet=y
) else (
    set inet=n
    echo Нет подключения к интернету, либо сервера недоступны!
    echo Проверьте подключение к интернету и повторите попытку!
    echo Нажмите на любую клавишу для выхода...
    pause > nul
)
if %inet% == y goto startt
goto e
:startt
cls

color 6f


echo Добро пожаловать в OldChat 2.0!
echo Укажите ваше имя:
echo Нажмите Enter, чтобы оставить текущее имя пользователя.
set namec=%username%

set /p namec="? "

:hah
cls
echo Добро пожаловать в OldChat 2.0!
echo Введите stan, чтобы подключиться к главному чату.
echo Введите пароль от чата, чтобы подключиться к нему.
echo Введите new, чтобы создать новый чат.
echo Введите exit, чтобы выйти.
set what=stan
set /p what="? "
if "%what%" == "stan" goto go
if "%what%" == "new" goto new
if "%what%" == "exit" goto e
goto connect
:go
cls

call curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" http://c98884cg.beget.tech/c.txt

echo.
echo.

set /p jjjdjd="Введите новое сообщение. Введите upd, чтобы обновить чат. Введите ch для выхода в главное меню. Введите exit, чтобы выйти. ? "


if "%jjjdjd%" == "exit" goto e

if "%jjjdjd%" == "upd" goto go

if "%jjjdjd%" == "ch" goto hah

call powershell.exe -Command "Invoke-WebRequest -Uri 'http://c98884cg.beget.tech/add.php?user=%namec%&msg=%jjjdjd%' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'"

goto go
:connect
cls

call curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" http://c98884cg.beget.tech/%what%c.txt

echo.
echo.

set /p jjjdjd="Введите новое сообщение. Введите upd, чтобы обновить чат. Введите ch для выхода в главное меню. Введите clear для очистки чата (работает только в приватных чатах). Введите exit, чтобы выйти. ? "


if "%jjjdjd%" == "exit" goto e

if "%jjjdjd%" == "upd" goto connect

if "%jjjdjd%" == "ch" goto hah

if "%jjjdjd%" == "clear" goto clear

call powershell.exe -Command "Invoke-WebRequest -Uri 'http://c98884cg.beget.tech/%what%add.php?user=%namec%&msg=%jjjdjd%' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'"
goto connect
:new
set passwd=new
set /p passwd="Введите пароль для входа в новый чат: "
if "%passwd%" == "new" goto ns
if "%passwd%" == "stan" goto ns
call powershell.exe -Command "Invoke-WebRequest -Uri 'http://c98884cg.beget.tech/new.php?p=%passwd%' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'"
goto hah
:clear
call powershell.exe -Command "Invoke-WebRequest -Uri 'http://c98884cg.beget.tech/clear.php?c=%what%' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'"
goto connect
:ns
echo Пароль не поддерживается!
echo.
goto new
:e
closeprogram
