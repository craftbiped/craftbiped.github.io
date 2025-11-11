@echo off
cls
color 3f
IF EXIST "programfiles\notes.bat" goto obr
goto cr
:obr
cd programfiles
call notes.bat
cd ..
cls
echo Добро пожаловать в My Notes!
echo Тут вы можете легко написать свои однострочные мини-заметки!
echo.
echo МИНИ-ЗАМЕТКИ:
echo 1 - %z1%

echo 2 - %z2%

echo 3 - %z3%

echo 4 - %z4%

echo 5 - %z5%

echo 6 - %z6%

echo 7 - %z7%

echo 8 - %z8%

echo 9 - %z9%

echo 10 - %z10%
echo.
echo Введите номер закладки, которую хотите изменить.
echo.
echo Введите e, чтобы выйти.
echo Введите clear, чтобы очистить закладки.
set vibor=nevibraltip
set /p vibor="? "
if "%vibor%" == "e" closeprogram
if "%vibor%" == "clear" goto clear
if "%vibor%" == "1" goto edit
if "%vibor%" == "2" goto edit
if "%vibor%" == "3" goto edit
if "%vibor%" == "4" goto edit
if "%vibor%" == "5" goto edit
if "%vibor%" == "6" goto edit
if "%vibor%" == "7" goto edit
if "%vibor%" == "8" goto edit
if "%vibor%" == "9" goto edit
if "%vibor%" == "10" goto edit
echo Вариант выбора недоступен.
pause
goto obr
:cr
cd programfiles
echo @echo off > notes.bat
echo set z1=Нет >> notes.bat
echo set z2=Нет >> notes.bat
echo set z3=Нет >> notes.bat
echo set z4=Нет >> notes.bat
echo set z5=Нет >> notes.bat
echo set z6=Нет >> notes.bat
echo set z7=Нет >> notes.bat
echo set z8=Нет >> notes.bat
echo set z9=Нет >> notes.bat
echo set z10=Нет >> notes.bat
cd ..
goto obr
:clear
cd programfiles
echo @echo off > notes.bat
echo set z1=Нет >> notes.bat
echo set z2=Нет >> notes.bat
echo set z3=Нет >> notes.bat
echo set z4=Нет >> notes.bat
echo set z5=Нет >> notes.bat
echo set z6=Нет >> notes.bat
echo set z7=Нет >> notes.bat
echo set z8=Нет >> notes.bat
echo set z9=Нет >> notes.bat
echo set z10=Нет >> notes.bat
cd ..
cls
echo Заметки очищены!
pause
goto obr
:edit
set enter=Нет
set /p enter="Введите текст для закладки %vibor%: "
cd programfiles
echo set z%vibor%=%enter% >> notes.bat
cd ..
goto obr

:e
closeprogram