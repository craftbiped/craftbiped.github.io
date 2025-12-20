@echo off
color 3f
cls
echo.
echo.
echo.    OldNETER v1.0
echo. Интернет, но в OldOS!
ping 127.0.0.1 -n 3 > nul
cls
set u=listik.os
set p=1
:o
cls
call curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" "http://c98884cg.beget.tech/oldnet/%u%-%p%.txt
echo.
echo.
echo.
echo [ 1 ^| 2 ^| 3 ^| 4 ^| 5 ^| 6 ^| 7 ^| 8 ^| 9 ]
echo [   g - сменить адрес ^| e - выйти   ]
echo.
echo.
choice /C 123456789ge /M ""
if %errorlevel% == 1 set p=1
if %errorlevel% == 2 set p=2
if %errorlevel% == 3 set p=3
if %errorlevel% == 4 set p=4
if %errorlevel% == 5 set p=5
if %errorlevel% == 6 set p=6
if %errorlevel% == 7 set p=7
if %errorlevel% == 8 set p=8
if %errorlevel% == 9 set p=9
if %errorlevel% == 10 goto g
if %errorlevel% == 11 closeprogram
goto o
:g
echo Введите адрес, на который хотите перейти.
set /p u=": "
set p=1
goto o
