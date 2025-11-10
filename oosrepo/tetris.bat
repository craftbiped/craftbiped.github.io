:: ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
:: º                            ’…’ˆ‘ ‚ ŠŽ‘Ž‹ˆ                              º
:: º                           „¬¨âà¨© ‚®«®ç ¥¢ <dmitry.volochaev@auriga.com> º
:: ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

cls
@echo off
chcp 866
cls
SETLOCAL ENABLEDELAYEDEXPANSION

:: ®¤áª §ª  ®¡ ã¯à ¢«¥­¨¨
echo [1;12H“¯à ¢«¥­¨¥:
echo [2;12Ha - ¢«¥¢®
echo [3;12Hd - ¢¯à ¢®
echo [4;12Hw - ¯®¢®à®â
echo [5;12Hs - ¢­¨§
echo [6;12He - exit
echo [7;12H¥ § ¡ã¤ìâ¥ ¢ª«îç¨âì  ­£«¨©áªãî à áª« ¤ªã

:: ˆ­¨æ¨ «¨§ æ¨ï ¨£à®¢®£® ¯®«ï
for /L %%a in (0,1,15) do (
  for /L %%b in (0,1,7) do set field_%%a_%%b=0
)

:nextfigure
call :getfigure

:: ®¢ ï ä¨£ãà  ¯®ï¢«ï¥âáï ¯® íâ¨¬ ª®®à¤¨­ â ¬
set figposx=3
set figposy=0

:: à®¢¥àï¥¬, ­¥â «¨ ª®««¨§¨© áà §ã ¦¥ ¯à¨ ¯®ï¢«¥­¨¨ ä¨£ãàë
call :applyfigure %figposx% %figposy% :testcollision

if errorlevel 1 (
  :: …áâì ª®««¨§¨ï - à¨áã¥¬ ä¨£ãàã ¨ ¯¨è¥¬, çâ® ¨£à  ®ª®­ç¥­ 
  call :applyfigure %figposx% %figposy% :setblock
  call :redraw
  echo [5;4HGAME[6;4HOVER[10;1H
  pause
  exit
)

:nextmove
:: ¨áã¥¬ ä¨£ãàã
call :applyfigure %figposx% %figposy% :setblock
call :redraw

set nextposx=%figposx%
set nextposy=%figposy%

:: †¤¥¬ ­ ¦ â¨ï ¨«¨ â ©¬ ãâ . à¨ â ©¬ ãâ¥ ¢ë¡¨à ¥¬ ¢ à¨ ­â s
choice /C "sawde" /D s /T 1 > NUL

set choiceIndex=%errorlevel%

:: ‘â¨à ¥¬ ä¨£ãàã á ¯®«ï ¢ ¯ ¬ïâ¨
call :applyfigure %figposx% %figposy% :clearblock

if "%choiceIndex%"=="2" (
  :: „¢¨¦¥­¨¥ ¢«¥¢®
  set /A nextposx=%figposx%-1

  :: à®¢¥àª  ª®««¨§¨©
  call :applyfigure !nextposx! %figposy% :testcollision

  :: à¨ ª®««¨§¨¨ à¨áã¥¬ ä¨£ãàã ­  ¯à¥¦­¥¬ ¬¥áâ¥ ¨ ¯à®¡®«¦ ¥¬ ¦¤ âì ¢¢®¤ 
  if errorlevel 1 goto :nextmove
)

if "%choiceIndex%"=="4" (
  :: „¢¨¦¥­¨¥ ¢¯à ¢®
  set /A nextposx=%figposx%+1

  :: à®¢¥àª  ª®««¨§¨©
  call :applyfigure !nextposx! %figposy% :testcollision

  :: à¨ ª®««¨§¨¨ à¨áã¥¬ ä¨£ãàã ­  ¯à¥¦­¥¬ ¬¥áâ¥ ¨ ¯à®¡®«¦ ¥¬ ¦¤ âì ¢¢®¤ 
  if errorlevel 1 goto :nextmove
)

if "%choiceIndex%"=="1" (
  :: „¢¨¦¥­¨¥ ¢­¨§
  set /A nextposy=%figposy%+1

  :: à®¢¥àª  ª®««¨§¨©
  call :applyfigure %figposx% !nextposy! :testcollision

  if errorlevel 1 (
    :: à¨ ª®««¨§¨¨ ¤¢¨¦¥­¨ï ­¥â, ä¨£ãà  ®áâ ¥âáï ­  ¬¥áâ¥ ­ ¢á¥£¤ 
    call :applyfigure %figposx% %figposy% :setblock

    :: “¡¨à ¥¬ § ¯®«­¥­­ë¥ àï¤ë
    call :removefulllines
    goto :nextfigure
  )
)

if "%choiceIndex%"=="5" (
chcp 65001
closeprogram
)


:: ®¢ ï ¯®§¨æ¨ï
set figposx=%nextposx%
set figposy=%nextposy%
goto :nextmove

:: ¥à¥à¨á®¢ª  ¨£à®¢®£® ¯®«ï
::  à ¬¥âàë: ­¥â
:: ‚®§¢à éï¥¬®¥ §­ ç¥­¨¥: ­¥â
:redraw

:: ¥à¥¬¥é ¥¬ ªãàá®à ¨ ¯¥à¥§ ¯¨áë¢ ¥¬ ¯®«¥ ­  íªà ­¥
:: ¥ ¨á¯®«ì§ã¥¬ CLS, ¯®â®¬ã çâ® ¯à®à¨á®¢ª  ¤®«£ ï,
:: ¨ ¨§®¡à ¦¥­¨¥ ¢ íâ®¬ á«ãç ¥ ¬¨£ ¥â
echo [1;1HÉÍÍÍÍÍÍÍÍ»
for /L %%a in (0,1,7) do (
  set /A y1=%%a * 2
  set /A y2=%%a * 2 + 1
  call :drawline !y1! !y2!
)
echo ÈÍÍÍÍÍÍÍÍ¼
goto :eof

:: ¥à¥à¨á®¢ª  ¤¢ãå áâà®ª ¨£à®¢®£® ¯®«ï ¢ ®¤­®© áâà®ª¥ â¥ªáâ 
::  à ¬¥âàë:
::   %1 - Y-ª®®à¤¨­ â  áâà®ª¨ ­  ¯®«¥, ¯®â®à ï ®â®¡à ¦ ¥âáï
::        ¢ ¢¥àå­¥© ç áâ¨ áâà®ª¨ â¥ªáâ 
::   %2 - Y-ª®®à¤¨­ â  áâà®ª¨ ­  ¯®«¥, ¯®â®à ï ®â®¡à ¦ ¥âáï
::        ¢ ­¨¦­¥© ç áâ¨ áâà®ª¨ â¥ªáâ 
:drawline
set LINE=º
for /L %%x in (0,1,7) do (
  :: ‘«¥¤ãîé ï áâà®ª  ®ª ­ç¨¢ ¥âáï ¯à®¡¥«®¬
  if "!field_%1_%%x!!field_%2_%%x!"=="00" set LINE=!LINE! 
  if "!field_%1_%%x!!field_%2_%%x!"=="10" set LINE=!LINE!ß
  if "!field_%1_%%x!!field_%2_%%x!"=="01" set LINE=!LINE!Ü
  if "!field_%1_%%x!!field_%2_%%x!"=="11" set LINE=!LINE!Û
)
echo %LINE%º
goto :eof

:: ‘«ãç ©­ë© ¢ë¡®à ä¨£ãàë
::  à ¬¥âàë: ­¥â
:: ‚®§¢à éï¥¬®¥ §­ ç¥­¨¥: ­¥â
:: “áâ ­ ¢«¨¢ ¥â ¯¥à¥¬¥­­ë¥:
::   figdefx, figdefy - ®¯à¥¤¥«¥­¨¥ ä¨£ãàë
::   mat11, mat12, mat21, mat22 - ¬ âà¨æ  ¯à¥®¡à §®¢ ­¨ï
:getfigure

:: figtype - â¨¯ ä¨£ãàë
set /A figtype=%RANDOM% %% 4

:: figflip - ä« £ ®âà ¦¥­¨ï
:: „«ï á«ãç ï á¨¬¬¥âà¨ç­ëå ä¨£ãà (ª¢ ¤à â ¨ ¤«¨­­ ï ¯ «ª )
:: - ¢ë¡®à ¬¥¦¤ã ­¨¬¨
set /A figflip=%RANDOM% %% 2

if "%figtype%"=="0" (
  set figdefx=0122
  set figdefy=0001
)

if "%figtype%"=="1" (
  set figdefx=0112
  set figdefy=0011
)

if "%figtype%"=="2" (
  set figdefx=0112
  set figdefy=0010
)

:: „¢¥ á¨¬¬¥âà¨ç­ë¥ ä¨£ãàë
:: figflip - ¢ë¡®à ¬¥¦¤ã ¤¢ã¬ï ä¨£ãà ¬¨
if "%figtype%"=="3" (
  if "%figflip%"=="0" (
    set figdefx=0123
    set figdefy=0000
  )

  if "%figflip%"=="1" (
    set figdefx=0101
    set figdefy=0011
  )
)

:: Œ âà¨æ  ¨¤¥­â¨ç­®áâ¨
set mat11=0
set mat12=1
set mat21=1
set mat22=0

:: …á«¨ ­ã¦­® ®âà ¦¥­¨¥ - ®âà ¦ ¥¬ ®â­®á¨â¥«ì­® ®á¨ Y
if "%figflip%"=="1" set mat12=-1
goto :eof

:: ®¢®à®â ¯® ç á®¢®© áâà¥«ª¥
::  à ¬¥âàë: ­¥â
:: ‚®§¢à éï¥¬®¥ §­ ç¥­¨¥: ­¥â
:: ˆá¯®«ì§ã¥â ¨ ¨§¬¥­ï¥â ¯¥à¥¬¥­­ë¥:
::   mat11, mat12, mat21, mat22 - ¬ âà¨æ  ¯à¥®¡à §®¢ ­¨ï
:rotateright
set matTmp=%mat11%
set /A mat11=-%mat21%
set /A mat21=%matTmp%
set matTmp=%mat12%
set /A mat12=-%mat22%
set /A mat22=%matTmp%
goto :eof

:: ®¢®à®â ¯à®â¨¢ ç á®¢®© áâà¥«ª¨
::  à ¬¥âàë: ­¥â
:: ‚®§¢à éï¥¬®¥ §­ ç¥­¨¥: ­¥â
:: ˆá¯®«ì§ã¥â ¨ ¨§¬¥­ï¥â ¯¥à¥¬¥­­ë¥:
::   mat11, mat12, mat21, mat22 - ¬ âà¨æ  ¯à¥®¡à §®¢ ­¨ï
:rotateleft
set matTmp=%mat21%
set /A mat21=-%mat11%
set /A mat11=%matTmp%
set matTmp=%mat22%
set /A mat22=-%mat12%
set /A mat12=%matTmp%
goto :eof

:: à¨¬¥­¥­¨¥ ä¨£ãàë
::  à ¬¥âàë:
::   %1 - X-ª®®à¤¨­ â  ­ ç «  ä¨£ãàë
::   %2 - Y-ª®®à¤¨­ â  ­ ç «  ä¨£ãàë
::   %3 - ª®«¡íª, ¢ë§ë¢ ¥¬ë© ¤«ï ª ¦¤®£® ¡«®ª  ä¨£ãàë
:: ’ ª¦¥ ¨á¯®«ì§ã¥â ¯¥à¥¬¥­­ë¥:
::   mat11, mat12, mat21, mat22 - ¬ âà¨æ  ¯à¥®¡à §®¢ ­¨ï
:: …á«¨ ª®«¡íª ¯®§¢à é ¥â ª®¤ 1, applyfigure
:: ¯à¥ªà é ¥â à ¡®âã ¨ â®¦¥ ¢®§¢à é ¥â 1
:applyfigure
for /L %%a in (0,1,3) do (
  set /A X=mat11 * !figdefx:~%%a,1! + mat12 * !figdefy:~%%a,1! + %1
  set /A Y=mat21 * !figdefx:~%%a,1! + mat22 * !figdefy:~%%a,1! + %2
  call %3 !X! !Y!
  if errorlevel 1 exit /B 1
)
goto :eof

:: Š®«¡íª ¯à¨¬¥­¥­¨ï ä¨£ãàë
:: ‡ ¯®«­ï¥â ¡«®ª ¯®«ï ¢ ¯ ¬ïâ¨
::  à ¬¥âàë:
::   %1 - X-ª®®à¤¨­ â  ¡«®ª 
::   %2 - Y-ª®®à¤¨­ â  ¡«®ª 
:: ‚®§¢à é ¥â: 0
:setblock
set field_%2_%1=1
exit /B 0

:: Š®«¡íª ¯à¨¬¥­¥­¨ï ä¨£ãàë
:: Žç¨é ¥â ¡«®ª ¯®«ï ¢ ¯ ¬ïâ¨
::  à ¬¥âàë:
::   %1 - X-ª®®à¤¨­ â  ¡«®ª 
::   %2 - Y-ª®®à¤¨­ â  ¡«®ª 
:: ‚®§¢à é ¥â: 0
:clearblock
set field_%2_%1=0
exit /B 0

:: Š®«¡íª ¯à¨¬¥­¥­¨ï ä¨£ãàë
:: à®¢¥àï¥â ª®««¨§¨¨ á ªà ï¬¨ ¯®«ï ¨«¨ § ¯®«­¥­­ë¬ ¡«®ª®¬
::  à ¬¥âàë:
::   %1 - X-ª®®à¤¨­ â  ¡«®ª 
::   %2 - Y-ª®®à¤¨­ â  ¡«®ª 
:: ‚®§¢à é ¥â:
::   1, ¥á«¨ ¡«®ª § ¯®«­¥­ ¨«¨ ­  ¯à¥¤¥« ¬¨ ¯®«ï;
::   0, ¥á«¨ ¡«®ª á¢®¡®¤¥­
:testcollision
if %1 geq 8 exit /B 1
if %1 lss 0 exit /B 1
if %2 lss 0 exit /B 1
if %2 geq 16 exit /B 1
if "!field_%2_%1!"=="1" exit /B 1
exit /B 0

:: “¡¨à ¥â á ¯®«ï § ¯®«­¥­­ë¥ áâà®ª¨ ¨ á¤¢¨£ ¥â áâà®ª¨,
:: ­ å®¤ïé¨¥áï ¢ëè¥ ã¡à ­­ëå, ¢­¨§
::  à ¬¥âàë: ­¥â
:: ‚®§¢à éï¥¬®¥ §­ ç¥­¨¥: ­¥â
:removefulllines
set COPYTOLINE=15

:: ¥à¥¡¨à ¥¬ áâà®ª¨ á­¨§ã ¢¢¥àå
for /L %%y in (15,-1,0) do (
  set LINEFULL=1

  :: à®¢¥àª  áâà®ª¨ %%y
  for /L %%x in (0,1,7) do (
    if "!field_%%y_%%x!"=="0" set LINEFULL=0
  )

  if "!LINEFULL!"=="0" (
    :: ‘âà®ª  á®åà ­ï¥âáï - ¢®§¬®¦­®, ¥¥ ­ ¤® á¤¢¨­ãâì ¢­¨§
    if not "!COPYTOLINE!"=="%%y" (
      :: Ž¤­  ¨«¨ ¡®«¥¥ áâà®ª ã¤ «¥­ë - ª®¯¨àã¥¬ ¤ ­­ãî áâà®ªã ¢­¨§
      for /L %%x in (0,1,7) do (
        set field_!COPYTOLINE!_%%x=!field_%%y_%%x!
      )
    )

    :: ‘«¥¤ãîé ï ®á¢®¡®¤¨¢è ïáï áâà®ª 
    set /A COPYTOLINE=!COPYTOLINE! - 1
  )
)

:: ‘â¨à ¥¬ ®á¢®¡®¤¨¢è¨¥áï ¢¥àå­¨¥ áâà®ª¨
for /L %%y in (%COPYTOLINE%,-1,0) do (
  for /L %%x in (0,1,7) do (
    set field_%%y_%%x=0
  )
)

goto :eof

