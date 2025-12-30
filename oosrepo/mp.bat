@echo off
cls
echo loading... 
cd ..\..\..\User
color f1
:st
cls
echo MusicPlayer v1.0
echo Введите путь до вашей музыки. Она должна находится в папке пользователя (A\User\Ваш_трек.mp3).
echo Введите exit, чтобы выйти.
echo.
set pathe=con
echo.
dir /b *.mp3 *.wav *.aac *.flac *.aiff
echo.
set /p pathe="A\User\"
if "%pathe%" == "con" goto none
if "%pathe%" == "exit" goto e
if EXIST "%pathe%" goto ok
goto none
:ok
echo Set WMP = WScript.CreateObject("MediaPlayer.MediaPlayer","WMP_") > play.vbs
echo WMP.Open "%pathe%" >> play.vbs
echo WMP.Play >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
echo WScript.Sleep 99999 >> play.vbs
start wscript play.vbs
echo Трек проигрывается. Нажмите на любую клавишу для выхода.
pause > nul
taskkill /IM wscript.exe /f > nul
del play.vbs
goto st
:none
echo Данного файла не существует! Нажмите на любую клавишу, чтобы выйти
pause > nul
goto st
:e
cd ..\System\OS\programs
closeprogram