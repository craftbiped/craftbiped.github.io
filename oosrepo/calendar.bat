@echo off
setlocal enabledelayedexpansion
color 2f
set yr=%date:~-4,4%
:snovy
cls
if %yr% == 1900 set yr=1901
if %yr% == 2113 set yr=2112
set y=%yr%
set jan_l=31&set feb_l=28&set mar_l=31&set apr_l=30&set may_l=31&set jun_l=30
set jul_l=31&set aug_l=31&set sep_l=30&set oct_l=31&set nov_l=30&set dec_l=31
set /a d=(y/4+y)-(y/100-y/400)
set /a "op1=y%%4","op2=y%%100","op3=y%%400"
if not "%op1%"=="0" (goto :no_leap)
if not "%op2%"=="0" (goto :leap)
if not "%op3%"=="0" (goto :no_leap)
:leap
 set feb_l=29
 set/a d-=1
:no_leap
set /a d%%=7
if d==0 (d=6) else (set /a d-=1)
for %%a in (jan feb mar apr may jun jul aug sep oct nov dec) do (
 set %%a=
 set chars_add=0
 for /l %%b in (1,1,!d!) do (set "%%a=!%%a!   "&set /a chars_add+=3)
 for /l %%c in (1,1,!%%a_l!) do (
  if %%c lss 10 (set "%%a=!%%a! %%c ") else (set "%%a=!%%a!%%c ")
  set /a chars_add+=3
 )
 for /l %%d in (!chars_add!,1,124) do set "%%a=!%%a! "
 set /a d=^(d+%%a_l^)%%7
)
if %y% == 2023 goto vsjan
if %y% == 2017 goto vsjan
if %y% == 2012 goto vsjan
if %y% == 2006 goto vsjan
if %y% == 1995 goto vsjan
if %y% == 1989 goto vsjan
if %y% == 1984 goto vsjan
if %y% == 1978 goto vsjan
if %y% == 1967 goto vsjan
if %y% == 1961 goto vsjan
if %y% == 1956 goto vsjan
if %y% == 1950 goto vsjan
if %y% == 1939 goto vsjan
if %y% == 1933 goto vsjan
if %y% == 1928 goto vsjan
if %y% == 1922 goto vsjan
if %y% == 1911 goto vsjan
if %y% == 1905 goto vsjan

if %y% == 2034 goto vsjan
if %y% == 2040 goto vsjan
if %y% == 2045 goto vsjan
if %y% == 2051 goto vsjan
if %y% == 2062 goto vsjan
if %y% == 2068 goto vsjan
if %y% == 2073 goto vsjan
if %y% == 2079 goto vsjan
if %y% == 2090 goto vsjan
if %y% == 2096 goto vsjan
if %y% == 2108 goto vsjan
if %y% == 2102 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
if %y% == 2023 goto vsjan
goto skiip
:vsjan
set jan=                   1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
:skiip
echo.
echo.                                %y%
echo.
echo.       Январь                 Февраль                 Март 
echo. Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс 
echo. %jan:~0,20%   %feb:~0,20%   %mar:~0,20%
echo. %jan:~21,20%   %feb:~21,20%   %mar:~21,20%
echo. %jan:~42,20%   %feb:~42,20%   %mar:~42,20%
echo. %jan:~63,20%   %feb:~63,20%   %mar:~63,20%
echo. %jan:~84,20%   %feb:~84,20%   %mar:~84,20%
echo. %jan:~105%   %feb:~105%   %mar:~105%
echo.
echo.       Апрель                   Май                    Июнь
echo. Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс 
echo. %apr:~0,20%   %may:~0,20%   %jun:~0,20%
echo. %apr:~21,20%   %may:~21,20%   %jun:~21,20%
echo. %apr:~42,20%   %may:~42,20%   %jun:~42,20%
echo. %apr:~63,20%   %may:~63,20%   %jun:~63,20%
echo. %apr:~84,20%   %may:~84,20%   %jun:~84,20%
echo. %apr:~105%   %may:~105%   %jun:~105%
echo.
echo.        Июль                  Август                 Сентябрь 
echo. Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс 
echo. %jul:~0,20%   %aug:~0,20%   %sep:~0,20%
echo. %jul:~21,20%   %aug:~21,20%   %sep:~21,20%
echo. %jul:~42,20%   %aug:~42,20%   %sep:~42,20%
echo. %jul:~63,20%   %aug:~63,20%   %sep:~63,20%
echo. %jul:~84,20%   %aug:~84,20%   %sep:~84,20%
echo. %jul:~105%   %aug:~105%   %sep:~105%
echo.
echo.       Октябрь                 Ноябрь                Декабрь 
echo. Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс   Пн Вт Ср Чт Пт Сб Вс 
echo. %oct:~0,20%   %nov:~0,20%   %dec:~0,20%
echo. %oct:~21,20%   %nov:~21,20%   %dec:~21,20%
echo. %oct:~42,20%   %nov:~42,20%   %dec:~42,20%
echo. %oct:~63,20%   %nov:~63,20%   %dec:~63,20%
echo. %oct:~84,20%   %nov:~84,20%   %dec:~84,20%
echo. %oct:~105%   %nov:~105%   %dec:~105%
echo.
echo.                        Сегодня %DATE%
echo.
echo.
echo.
echo Доступно два века - XX и XXI (XXII до 2112 г.). 
echo Больше сделать не можем из-за одной проблемы.
choice /C 1230 /M "1 - назад, 2 - вперёд, 3 - текущий год, 0 - выход "
if %errorlevel% == 1 goto nazad
if %errorlevel% == 2 goto vpered
if %errorlevel% == 3 goto tek
closeprogram
endlocal
:nazad
set /a yr=%y%-1
goto snovy
:vpered
set /a yr=%y%+1
goto snovy
:tek
set /a yr=%date:~-4,4%

goto snovy
