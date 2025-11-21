@echo off
cls
color 20
cd programfiles
IF EXIST disc5ncyes goto skipdiscl
echo ВНИМАНИЕ! ЭТА ИГРА НЕ ХОЧЕТ ОСКОРБИТЬ КАКУЮ-ЛИБО НАЦИЮ, СТРАНУ ИЛИ НАЦИОНАЛЬНОСТЬ!
echo В этой игре ваша задача - продержаться 5 дней ни разу не столкнувшись с Украиной.
echo Если вам неприятно, вы можете удалить её прямо сейчас. Игра не про политику!
echo.
echo 1 - Играть     2 - Удалить игру
echo.
choice /C 12 /M ""
if %errorlevel% == 2 goto delete
echo Yes > disc5ncyes
:skipdiscl
cd ..
setlocal enabledelayedexpansion
set n=n1
cls
echo Инициализация...
cls
color 2f
echo Добро пожаловать в игру 5 ночей со странами!
echo Ваша задача - любым способом спастись от Украины.
echo Если вы столкнётесь с Украиной - конец игры.
echo.
echo 1 - Начать игру     2 - Выйти
echo.
echo.
echo.
choice /C 12 /M ""
if %errorlevel% == 2 goto exit
set prc=0
:n1
cls
color 08
echo.
echo.    Ночь 1...
echo.    Сложность: Легко
echo.    Страны, приходяшие с любой страной на букву У: НЕТ.
echo.    Принято стран: %prc%/50
echo.
if %prc% == 50 set prc=0&& goto n22
SET /A RND=%RANDOM% %% 4
ping 127.0.0.1 -n %RND% > nul

SET /A RNDD=%RANDOM% %% 20
if %RNDD% == 8 echo Тсс, где-то рядом бегает Украина... Подождите пару секунд...&& ping 127.0.0.1 -n 6 > nul&& echo Вроде убежала, можно открывать двери...&& ping 127.0.0.1 -n 2 > nul
choice /C 012 /M "К вам пришла страна. Нажмите на 1, чтобы открыть ей дверь. Нажмите 0, чтобы не впустить её, нажмите 2, чтобы выйти в главное меню"
if %errorlevel% == 1 goto n1
if %errorlevel% == 3 goto e
set /a prc=prc+1
goto checks
:sn1
echo К вам пришёл(ла).....%country%
if "%country%" == "Украина" goto lost
ping 127.0.0.1 -n 2 > nul
goto n1
:n22
set n=n2
color f0
cls
echo *рассвет*
echo Поздравляем. Ночь пройдена. Приготовьтесь к ночи 2...
echo Теперь страны Балтии (Литва, Латвия, Эстония) зовут любую страну на букву У...
echo.
echo Нажмите на любую клавишу, чтобы начать игру...
pause > nul
goto n2
:n2
cls
color 08
echo.
echo.    Ночь 2...
echo.    Сложность: Нормально
echo.    Страны, приходяшие с любой страной на букву У: Литва, Латвия, Эстония.
echo.    Принято стран: %prc%/100
echo.
if %prc% == 100 set prc=0&& goto n33
SET /A RND=%RANDOM% %% 4
ping 127.0.0.1 -n %RND% > nul
SET /A RNDD=%RANDOM% %% 20
if %RNDD% == 8 echo Тсс, где-то рядом бегает Украина... Подождите пару секунд...&& ping 127.0.0.1 -n 6 > nul&& echo Вроде убежала, можно открывать двери...&& ping 127.0.0.1 -n 2 > nul
choice /C 012 /M "К вам пришла страна. Нажмите на 1, чтобы открыть ей дверь. Нажмите 0, чтобы не впустить её, нажмите 2, чтобы выйти в главное меню"
if %errorlevel% == 1 goto n2
if %errorlevel% == 3 goto e
goto checks
:sn2
set /a prc=prc+1
echo К вам пришёл(ла).....%country%
if "%country%" == "Украина" goto lost
if "%country%" == "Литва" goto ucountry
if "%country%" == "Латвия" goto ucountry
if "%country%" == "Эстония" goto ucountry
ping 127.0.0.1 -n 2 > nul
goto n2

:n33
set n=n3
color f0
cls
echo *рассвет*
echo Поздравляем. Ночь пройдена. Приготовьтесь к ночи 3...
echo Теперь страны Балтии (Литва, Латвия, Эстония), Япония и Польша зовут любую страну на букву У...
echo.
echo Нажмите на любую клавишу, чтобы начать игру...
pause > nul
goto n3
:n3
cls
color 08
echo.
echo.    Ночь 3...
echo.    Сложность: Нормально
echo.    Страны, приходяшие с любой страной на букву У: Литва, Латвия, Эстония, Польша, Япония
echo.    Принято стран: %prc%/150
echo.
if %prc% == 150 set prc=0&& goto n44
SET /A RND=%RANDOM% %% 4
ping 127.0.0.1 -n %RND% > nul
SET /A RNDD=%RANDOM% %% 20
if %RNDD% == 8 echo Тсс, где-то рядом бегает Украина... Подождите пару секунд...&& ping 127.0.0.1 -n 6 > nul&& echo Вроде убежала, можно открывать двери...&& ping 127.0.0.1 -n 2 > nul
choice /C 012 /M "К вам пришла страна. Нажмите на 1, чтобы открыть ей дверь. Нажмите 0, чтобы не впустить её, нажмите 2, чтобы выйти в главное меню"
if %errorlevel% == 1 goto n3
if %errorlevel% == 3 goto e
goto checks
:sn3
set /a prc=prc+1
echo К вам пришёл(ла).....%country%
if "%country%" == "Украина" goto lost
if "%country%" == "Литва" goto ucountry
if "%country%" == "Латвия" goto ucountry
if "%country%" == "Эстония" goto ucountry
if "%country%" == "Польша" goto ucountry
if "%country%" == "Япония" goto ucountry
ping 127.0.0.1 -n 2 > nul
goto n3

:n44
set n=n4
color f0
cls
echo *рассвет*
echo Поздравляем. Ночь пройдена. Приготовьтесь к ночи 4...... Это пипец....
echo Теперь страны Балтии (Литва, Латвия, Эстония), Япония, Азербайджан, Грузия, Германия, Финляндия и Польша зовут любую страну на букву У...
echo А ещё появляются...помощники самой Украины... Теперь какие-то острова - Микронезия - сдают вас Украине...
echo.
echo Нажмите на любую клавишу, чтобы начать игру...
pause > nul
goto n4
:n4
cls
color 08
echo.
echo.    Ночь 4... ПИПЕЦ...
echo.    Сложность: Сложно
echo.    Страны, приходяшие с любой страной на букву У: Литва, Латвия, Эстония, Польша, Япония, Азербайджан, Грузия, Германия, Финляндия
echo.    МИКРОНЕЗИЯ отдаёт вас УКРАИНЕ.
echo.    Принято стран: %prc%/150
echo.
if %prc% == 150 set prc=0&& goto n55
SET /A RND=%RANDOM% %% 4
ping 127.0.0.1 -n %RND% > nul
SET /A RNDD=%RANDOM% %% 20
if %RNDD% == 8 echo Тсс, где-то рядом бегает Украина... Подождите пару секунд...&& ping 127.0.0.1 -n 6 > nul&& echo Вроде убежала, можно открывать двери...&& ping 127.0.0.1 -n 2 > nul
choice /C 012 /M "К вам пришла страна. Нажмите на 1, чтобы открыть ей дверь. Нажмите 0, чтобы не впустить её, нажмите 2, чтобы выйти в главное меню"
if %errorlevel% == 1 goto n4
if %errorlevel% == 3 goto e
goto checks
:sn4
set /a prc=prc+1
echo К вам пришёл(ла).....%country%
if "%country%" == "Украина" goto lost
if "%country%" == "Литва" goto ucountry
if "%country%" == "Латвия" goto ucountry
if "%country%" == "Эстония" goto ucountry
if "%country%" == "Польша" goto ucountry
if "%country%" == "Япония" goto ucountry
if "%country%" == "Азербайджан" goto ucountry
if "%country%" == "Грузия" goto ucountry
if "%country%" == "Германия" goto ucountry
if "%country%" == "Финляндия" goto ucountry
if "%country%" == "Микронезия" goto otdali
ping 127.0.0.1 -n 2 > nul
goto n4

:n55
set n=n5
color f0
cls
echo *рассвет*
echo Поздравляем. Ночь пройдена. Приготовьтесь к ночи 4...... Это пи-пец, но зато конец!
echo Теперь страны Балтии (Литва, Латвия, Эстония), Япония, Азербайджан, Грузия, Германия и Финляндия, а также Австрия, Великобритания и США зовут любую страну на букву У...
echo Микронезия и Польша - сдают вас Украине...
echo.
echo Нажмите на любую клавишу, чтобы начать игру...
pause > nul
goto n5
:n5
cls
color 04
echo.
echo.    Ночь 5... ПИПЕЦ...
echo.    Сложность: ОЧЕНЬ СЛОЖНО
echo.    Страны, приходяшие с любой страной на букву У: Литва, Латвия, Эстония, Польша, Япония, Азербайджан, Грузия, Германия, Финляндия
echo.    МИКРОНЕЗИЯ отдаёт вас УКРАИНЕ.
echo.    Принято стран: %prc%/175
echo.
if %prc% == 175 set prc=0&& goto win
SET /A RND=%RANDOM% %% 2
ping 127.0.0.1 -n %RND% > nul
SET /A RNDD=%RANDOM% %% 20
if %RNDD% == 8 echo Тсс, где-то рядом бегает Украина... Подождите пару секунд...&& ping 127.0.0.1 -n 6 > nul&& echo Вроде убежала, можно открывать двери...&& ping 127.0.0.1 -n 2 > nul
choice /C 012 /M "К вам пришла страна. Нажмите на 1, чтобы открыть ей дверь. Нажмите 0, чтобы не впустить её, нажмите 2, чтобы выйти в главное меню"
if %errorlevel% == 1 goto n5
if %errorlevel% == 3 goto e
goto checks
:sn5
set /a prc=prc+1
echo К вам пришёл(ла).....%country%
if "%country%" == "Украина" goto lost
if "%country%" == "Литва" goto ucountry
if "%country%" == "Латвия" goto ucountry
if "%country%" == "Эстония" goto ucountry
if "%country%" == "Япония" goto ucountry
if "%country%" == "Азербайджан" goto ucountry
if "%country%" == "Грузия" goto ucountry
if "%country%" == "Германия" goto ucountry
if "%country%" == "Финляндия" goto ucountry
if "%country%" == "Австрия" goto ucountry
if "%country%" == "Великобритания" goto ucountry
if "%country%" == "США" goto ucountry
if "%country%" == "Микронезия" goto otdali
if "%country%" == "Польша" goto otdali
ping 127.0.0.1 -n 2 > nul
goto n5


:checks
set "country_list[0]=Австралия" 
set "country_list[1]=Австрия" 
set "country_list[2]=Абхазия" 
set "country_list[3]=Южная Осетия" 
set "country_list[4]=Азербайджан" 
set "country_list[5]=Албания" 
set "country_list[6]=Алжир" 
set "country_list[7]=Ангола" 
set "country_list[8]=Андорра" 
set "country_list[9]=Антигуа и Барбуда" 
set "country_list[10]=Аргентина" 
set "country_list[11]=Армения" 
set "country_list[12]=Афганистан" 
set "country_list[13]=Багамы" 
set "country_list[14]=Бангладеш" 
set "country_list[15]=Барбадос" 
set "country_list[16]=Бахрейн" 
set "country_list[17]=Беларусь" 
set "country_list[18]=Белиз" 
set "country_list[19]=Бельгия" 
set "country_list[20]=Бенин" 
set "country_list[21]=Болгария" 
set "country_list[22]=Ботсвана" 
set "country_list[23]=Бразилия" 
set "country_list[24]=Бруней" 
set "country_list[25]=Буркина-Фасо" 
set "country_list[26]=Бурунди" 
set "country_list[27]=Бутан" 
set "country_list[28]=Вануату" 
set "country_list[29]=Великобритания" 
set "country_list[30]=Венгрия" 
set "country_list[31]=Венесуэла" 
set "country_list[32]=Восточный Тимор" 
set "country_list[33]=Вьетнам" 
set "country_list[34]=Габон" 
set "country_list[35]=Гаити" 
set "country_list[36]=Гайана" 
set "country_list[37]=Гамбия" 
set "country_list[38]=Гана" 
set "country_list[39]=Гватемала" 
set "country_list[40]=Гвинея" 
set "country_list[41]=Германия" 
set "country_list[42]=Гондурас" 
set "country_list[43]=Гренада" 
set "country_list[44]=Греция" 
set "country_list[45]=Грузия" 
set "country_list[46]=Дания" 
set "country_list[47]=Джибути" 
set "country_list[48]=Доминика" 
set "country_list[49]=Египет" 
set "country_list[50]=Замбия" 
set "country_list[51]=Зимбабве" 
set "country_list[52]=Израиль" 
set "country_list[53]=Индия" 
set "country_list[54]=Индонезия" 
set "country_list[55]=Иордания" 
set "country_list[56]=Ирак" 
set "country_list[57]=Иран" 
set "country_list[58]=Ирландия" 
set "country_list[59]=Исландия" 
set "country_list[60]=Испания" 
set "country_list[61]=Италия" 
set "country_list[62]=Йемен" 
set "country_list[63]=Кабо-Верде" 
set "country_list[64]=Казахстан" 
set "country_list[65]=Камбоджа" 
set "country_list[66]=Камерун" 
set "country_list[67]=Канада" 
set "country_list[68]=Катар" 
set "country_list[69]=Кипр" 
set "country_list[70]=Кирибати" 
set "country_list[71]=Уругвай" 
set "country_list[72]=Парагвай" 
set "country_list[73]=Уганда" 
set "country_list[74]=Китай" 
set "country_list[75]=Колумбия" 
set "country_list[76]=Коморы" 
set "country_list[77]=Конго" 
set "country_list[78]=ДР Конго" 
set "country_list[79]=КНДР (Северная Корея)" 
set "country_list[80]=Республика Корея (Южная)" 
set "country_list[81]=Коста-Рика" 
set "country_list[82]=Кот-д'Ивуар" 
set "country_list[83]=Куба" 
set "country_list[84]=Кувейт" 
set "country_list[85]=Кыргызстан" 
set "country_list[86]=Лаос" 
set "country_list[87]=Латвия" 
set "country_list[88]=Лесото" 
set "country_list[89]=Либерия" 
set "country_list[90]=Ливан" 
set "country_list[91]=Ливия" 
set "country_list[92]=Литва" 
set "country_list[93]=Лихтенштейн" 
set "country_list[94]=Люксембург" 
set "country_list[95]=Маврикий" 
set "country_list[96]=Мавритания" 
set "country_list[97]=Мадагаскар" 
set "country_list[98]=Малави" 
set "country_list[99]=Малайзия" 
set "country_list[100]=Мали" 
set "country_list[101]=Мальдивы" 
set "country_list[102]=Мальта" 
set "country_list[103]=Марокко" 
set "country_list[104]=Маршалловы Острова" 
set "country_list[105]=Мексика" 
set "country_list[106]=Микронезия" 
set "country_list[107]=Мозамбик" 
set "country_list[108]=Молдова" 
set "country_list[109]=Монако" 
set "country_list[110]=Монголия" 
set "country_list[111]=Мьянма" 
set "country_list[112]=Намибия" 
set "country_list[113]=Науру" 
set "country_list[114]=Непал" 
set "country_list[115]=Нигер" 
set "country_list[116]=Нигерия" 
set "country_list[117]=Нидерланды" 
set "country_list[118]=Никарагуа" 
set "country_list[119]=Новая Зеландия" 
set "country_list[120]=Норвегия" 
set "country_list[121]=ОАЭ" 
set "country_list[122]=Оман" 
set "country_list[123]=Пакистан" 
set "country_list[124]=Палау" 
set "country_list[125]=Панама" 
set "country_list[126]=Папуа-Новая Гвинея" 
set "country_list[127]=Перу" 
set "country_list[128]=Польша" 
set "country_list[129]=Португалия" 
set "country_list[130]=Россия" 
set "country_list[131]=Руанда" 
set "country_list[132]=Румыния" 
set "country_list[133]=Сальвадор" 
set "country_list[134]=Самоа" 
set "country_list[135]=Сан-Марино" 
set "country_list[136]=Сан-Томе и Принсипи" 
set "country_list[137]=Саудовская Аравия" 
set "country_list[138]=Северная Македония" 
set "country_list[139]=Сейшелы" 
set "country_list[140]=Сенегал" 
set "country_list[141]=Сент-Люсия" 
set "country_list[142]=Сербия" 
set "country_list[143]=Сингапур" 
set "country_list[144]=Сирия" 
set "country_list[145]=Словакия" 
set "country_list[146]=Словения" 
set "country_list[147]=США" 
set "country_list[148]=Сомали" 
set "country_list[149]=Судан" 
set "country_list[150]=Суринам" 
set "country_list[151]=Сьерра-Леоне" 
set "country_list[152]=Таджикистан" 
set "country_list[153]=Таиланд" 
set "country_list[154]=Танзания" 
set "country_list[155]=Того" 
set "country_list[156]=Тонга" 
set "country_list[157]=Тувалу" 
set "country_list[158]=Тунис" 
set "country_list[159]=Туркменистан" 
set "country_list[160]=Турция" 
set "country_list[161]=Уганда" 
set "country_list[162]=Узбекистан" 
set "country_list[163]=Украина" 
set "country_list[164]=Уругвай" 
set "country_list[165]=Фиджи" 
set "country_list[166]=Филиппины" 
set "country_list[167]=Финляндия" 
set "country_list[168]=Франция" 
set "country_list[169]=Хорватия" 
set "country_list[170]=ЦАР" 
set "country_list[171]=Чад" 
set "country_list[172]=Черногория" 
set "country_list[173]=Чехия" 
set "country_list[174]=Чили" 
set "country_list[175]=Швейцария" 
set "country_list[176]=Швеция" 
set "country_list[177]=Шри-Ланка" 
set "country_list[178]=Эквадор" 
set "country_list[179]=Эритрея" 
set "country_list[180]=Эсватини" 
set "country_list[181]=Эстония" 
set "country_list[182]=Эфиопия" 
set "country_list[183]=ЮАР" 
set "country_list[184]=Южный Судан" 
set "country_list[185]=Ямайка" 
set "country_list[186]=Япония" 
set "country_list[187]=Ватикан" 
set "country_list[188]=Палестина" 
set /a random_index=%random% %% 189 
set country=!country_list[%random_index%]!
goto s%n%
:otdali
cls
color 40
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
echo %country% ТАЩИТ ВАС К УКРАИНЕ....................
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
ping 127.0.0.1 -n 3 > nul
goto lost
:ucountry
cls
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
echo %country%........................
echo %country% пришла с другой страной на букву У... Хоть бы не Украина... Хоть бы не Украина...
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 4f
ping 127.0.0.1 -n 1 > nul
color f4
ping 127.0.0.1 -n 1 > nul
color 08
ping 127.0.0.1 -n 3 > nul
echo Вместе с %country% к вам пришла... -
set "country_list[0]=Уганда" 
set "country_list[1]=Узбекистан" 
set "country_list[2]=Украина" 
set "country_list[3]=Уругвай" 
set /a random_index=%random% %% 4 
set country=!country_list[%random_index%]!
goto s%n%
:lost
cls
echo %country%..............
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
ping 127.0.0.1 -n 1 > nul
color 36
ping 127.0.0.1 -n 1 > nul
color 63
cls
color f0
echo *свет в конце туннеля...*
ping 127.0.0.1 -n 4 > nul
cls
echo Вы проиграли. Украина добралась до вас....
echo.
echo Нажмите на любую клавишу, чтобы начать игру заново...
pause > nul
5nc.bat
:win
cls
color f0
echo *рассвет*
echo.    ВЫ ВЫИГРАЛИ
echo.    На этом рассвете вы сбежали оттуда, и жили долго и счастливо
echo.
echo.    Нажмите на любую клавишу, чтобы вернуться в главное меню.
pause > nul
:e
endlocal
5nc.bat
:exit
endlocal
closeprogram
exit
:delete
mkdir temp
cd temp
echo @echo off >> remove5nc.bat
echo del 5nc.bat >> remove5nc.bat
echo closeprogram >> remove5nc.bat
cd ..
cd ..

programfiles\temp\remove5nc.bat
