@echo off
color 3f
cls
echo Добро пожаловать в средство создания бэкапов OldOS "Time Machine"!
echo Что вы хотите сделать? 1 - Создать бэкап, 2 - Восстановить бэкап, 3 - Удалить бэкап, 4 - Выйти, 5 - Установить Time Machine SYSTEM, ОС для восстановления бэкапов, если OldOS не загружается, 6 - перезагрузка в Time Machine SYSTEM
:oe
set d=none
set /p d="? "
if "%d%" == "1" goto cr
if "%d%" == "2" goto vs
if "%d%" == "3" goto del
if "%d%" == "4" goto e
if "%d%" == "5" goto oss
if "%d%" == "6" goto ts
goto oe
:cr
set nazv=NoNameBackup
set /p nazv="Введите название бэкапа (обязательно): "
cd ..\..\..\..\..\
mkdir bcs
cls
echo PowerShell скрипт. Может запросить разрешение на использование.
powershell Compress-Archive -Path "root" -DestinationPath "%nazv%.zip" 
copy %nazv%.zip bcs\%nazv%
del %nazv%.zip
cls
echo Процесс завершён!
ping 127.0.0.1 -n 3 > nul
cd root\A\System\OS\programs
timemachine.bat
pause > nul
:del
cd ..\..\..\..\..\
cd bcs
echo.
echo ДОСТУПНЫЕ БЭКАПЫ:
dir /b
echo.
set nazv=NoNameBackup
set /p nazv="Введите название бэкапа, который требуется удалить: "
del %nazv%
cd ..
cd root\A\System\OS\programs
echo Процесс завершён!
ping 127.0.0.1 -n 3 > nul
cls
timemachine
pause > nul
:vs
cd ..\..\..\..\..\
cd bcs
echo.
echo ДОСТУПНЫЕ БЭКАПЫ:
dir /b
echo.
set nazv=NoNameBackup
set /p nazv="Введите название бэкапа, который требуется восстановить: "
if EXIST %nazv% goto okk
echo Бэкап не найден!
echo Нажмите на любую клавишу, чтобы выйти.
pause > nul
cd ..
cd root\A\System\OS\programs
timemachine
pause
goto e
:okk
cd ..
set /p yan="Продолжить? Это приведёт к откату всей системы (y/n): "
if "%yan%" == "y" goto dl
cls
echo Отменено.
cd root\A\System\OS\programs
timemachine.bat
:dl
copy bcs\%nazv% .\restore.zip
echo @echo off> temp.bat
echo cls>> temp.bat
echo color 0f>> temp.bat
echo echo Restoring...>> temp.bat
echo rmdir /s /q root>> temp.bat
echo tar -xf restore.zip>> temp.bat
echo del restore.zip>> temp.bat
echo start Запустить.bat>> temp.bat
echo exit>> temp.bat
cls
echo @echo off> Запустить.bat
echo del temp.bat>> Запустить.bat
echo powershell.exe -Command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{F11}')">> Запустить.bat 
echo cd root>> Запустить.bat
echo os.bat>> Запустить.bat
cls
color 1f
echo Shutting down...
ping 127.0.0.1 -n 9 > nul
temp.bat
:oss
cls
cd ..\..\..\..\..\
echo Установка TS SYSTEM...
echo @echo off> "TimeMachine-восстановление-бэкапа.bat"
echo powershell.exe -Command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{F11}')">> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo color 1f>> "TimeMachine-восстановление-бэкапа.bat"
echo title TimeMachine SYSTEM>> "TimeMachine-восстановление-бэкапа.bat"
echo chcp 65001>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo echo TimeMachine SYSTEM позволит восстановить бэкап, если OldOS не загружается...>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo echo TimeMachine SYSTEM is loading......>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 4 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 2 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Загрузка...>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 4 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo :cmdddd>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo color 3f>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Добро пожаловать в Time Machine SYSTEM 1.0!>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Справка:>> "TimeMachine-восстановление-бэкапа.bat"
echo echo recovery - восстановить бэкап>> "TimeMachine-восстановление-бэкапа.bat"
echo echo delete - удалить бэкап>> "TimeMachine-восстановление-бэкапа.bat"
echo echo command - командная строка>> "TimeMachine-восстановление-бэкапа.bat"
echo echo stop - завершить работу с Time Machine SYSTEM>> "TimeMachine-восстановление-бэкапа.bat"
echo echo oldos - завершить работу с Time Machine SYSTEM и запустить OldOS>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Создание новых бэкапов возможно только через программу Time Machine в OldOS.>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo :cmddd>> "TimeMachine-восстановление-бэкапа.bat"
echo set cmdd=NETTAKOIOPCHII>> "TimeMachine-восстановление-бэкапа.bat"
echo set /p cmdd=": ">> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%cmdd%%" == "recovery" goto r>> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%cmdd%%" == "delete" goto d>> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%cmdd%%" == "command" goto c>> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%cmdd%%" == "stop" goto s>> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%cmdd%%" == "oldos" goto o>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Неизвестная опция.>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :r>> "TimeMachine-восстановление-бэкапа.bat"
echo cd bcs>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo echo ДОСТУПНЫЕ БЭКАПЫ:>> "TimeMachine-восстановление-бэкапа.bat"
echo dir /b>> "TimeMachine-восстановление-бэкапа.bat"
echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo set nazv=NoNameBackup>> "TimeMachine-восстановление-бэкапа.bat"
echo set /p nazv="Введите название бэкапа, который требуется восстановить: ">> "TimeMachine-восстановление-бэкапа.bat"
echo if EXIST %%nazv%% goto okk>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Бэкап не найден!>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Нажмите на любую клавишу, чтобы выйти.>> "TimeMachine-восстановление-бэкапа.bat"
echo pause > nul>> "TimeMachine-восстановление-бэкапа.bat"
echo cd ..>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :okk>> "TimeMachine-восстановление-бэкапа.bat"
echo cd ..>> "TimeMachine-восстановление-бэкапа.bat"
echo set /p yan="Продолжить? Это приведёт к откату всей системы (y/n): ">> "TimeMachine-восстановление-бэкапа.bat"
echo if "%%yan%%" == "y" goto dl>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Отменено.>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :dl>> "TimeMachine-восстановление-бэкапа.bat"
echo copy bcs\%%nazv%% .\restore.zip>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Restoring...>> "TimeMachine-восстановление-бэкапа.bat"
echo rmdir /s /q root>> "TimeMachine-восстановление-бэкапа.bat"
echo tar -xf restore.zip>> "TimeMachine-восстановление-бэкапа.bat"
echo del restore.zip>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo echo Процесс успешно завершён!>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 2 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmdddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :d>> "TimeMachine-восстановление-бэкапа.bat"
echo cd bcs>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo echo ДОСТУПНЫЕ БЭКАПЫ:>> "TimeMachine-восстановление-бэкапа.bat"
echo dir /b>> "TimeMachine-восстановление-бэкапа.bat"
echo echo.>> "TimeMachine-восстановление-бэкапа.bat"
echo set nazv=NoNameBackup>> "TimeMachine-восстановление-бэкапа.bat"
echo set /p nazv="Введите название бэкапа, который требуется удалить: ">> "TimeMachine-восстановление-бэкапа.bat"
echo del %%nazv%%>> "TimeMachine-восстановление-бэкапа.bat"
echo cd ..>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmdddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :c>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo call cmd /k cls>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo goto cmdddd>> "TimeMachine-восстановление-бэкапа.bat"
echo :s>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 3 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo exit>> "TimeMachine-восстановление-бэкапа.bat"
echo :o>> "TimeMachine-восстановление-бэкапа.bat"
echo cls>> "TimeMachine-восстановление-бэкапа.bat"
echo ping 127.0.0.1 -n 3 ^> nul>> "TimeMachine-восстановление-бэкапа.bat"
echo start Запустить.bat>> "TimeMachine-восстановление-бэкапа.bat"
echo exit>> "TimeMachine-восстановление-бэкапа.bat"
cls
echo ОС успешно установлена! Для её загрузки запустите "TimeMachine-восстановление-бэкапа.bat" в этой же папке, где и "Запустить.bat"
ping 127.0.0.1 -n 5 > nul
cd root\A\System\OS\programs
timemachine
:ts
cls
if EXIST "..\..\..\..\..\TimeMachine-восстановление-бэкапа.bat" goto tsr
echo TimeMachine SYSTEM не установлена!
ping 127.0.0.1 -n 4 > nul
cls
timemachine
pause
:tsr
cls
color 1f
echo Shutting down...
ping 127.0.0.1 -n 9 > nul
cd ..\..\..\..\..\
start TimeMachine-восстановление-бэкапа.bat
exit
:e
closeprogram