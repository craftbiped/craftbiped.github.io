

pathinload = window.location.pathname;
pages();


function pages(){

var path = window.location.pathname;

function browser_name(){
      var browser_id = navigator.userAgent;    

    if (browser_id.search(/Chrome/) != -1) return 'Chrome';
    if (browser_id.search(/Firefox/) != -1) return 'Firefox';
    if (browser_id.search(/Opera/) != -1) return 'Opera';
    if (browser_id.search(/Safari/) != -1) return 'Safari';
    if (browser_id.search(/MSIE/) != -1) return 'MSIE';
    
    return 'unknown';
}

var browser = browser_name()


console.log("Загрузка страницы \""+ path +"\"...")
var topmenu = document.getElementById("topmenu");
topmenu.innerHTML = `
<!-- Инфобар сверху -->
<div style="background-color: #82b1ff;">
<center style="color: green;"><b>Ждём новый год вместе с CraftBiped!<br>
  <a href="/expectations/newyear.html" style="color: red;">Ждём тут!</a></b>
</center>
</div>


<!-- Навигация -->
<nav>  
   <ul class="topmenu">
    <li><a onclick="go('/')">Главная</a></li>
    <li><a href="/go/donate.html">Купить донат</a></li>
    <li><a onclick="go('/info')">Информация</a></li>
    <li><a href="/blog/news/">Новости</a></li>
    <li><a href="/blog/">Блог</a></li>
    <li><a onclick="go('/rules')">Правила</a></li>
    <li><a class="down">Ещё</a>
   <ul class="submenu">
<p>
    <a href="/go/discord.html">Дискорд-сервер</a>
</p>
<br>
<p>
    <a onclick="go('/updates')">Об обновлениях</a>
</p>
<br>
<p>
    <a onclick="go('/expectations/')">Отсчёты до ожидаемых событий</a>
</p>
<br>
<p>
    <a onclick="go('/videos/')">Видео сервера CraftBiped</a>
</p>
<br>
<p>
<div class="showmobile">
    <a onclick="go('/app')">Скачать приложение</a>
</div>
</p>
  </ul>
  </ul>
        <div class="menu">
<br>
    <input type="checkbox" id="burger-checkbox" class="burger-checkbox">
    <label for="burger-checkbox" class="burger"></label>
    <ul class="menu-list">
<br><br>
<div id="Firefox"></div>
            <li><a class="menu-item" onclick="go('/')">Главная</a></li>
            <li><a class="menu-item" href="/go/donate.html">Купить донат</a></li>
            <li><a class="menu-item" onclick="go('/info')">Информация</a></li>
            <li><a class="menu-item" href="/blog/news/">Новости</a></li>
            <li><a class="menu-item" href="/blog/">Блог</a></li>
            <li><a class="menu-item" onclick="go('/rules')">Правила</a></li>
<li><a class="menu-item" href="https://craftbiped.github.io/ds.html">Дискорд-сервер</a></li>
<li><a class="menu-item" onclick="go('/updates')">Об обновлениях</a></li>
<li><a class="menu-item" onclick="go('/expectations/')">Отсчёты до ожидаемых событий</a></li>
<li><a class="menu-item" onclick="go('/videos/')">Видео сервера CraftBiped</a></li>
<div class="showmobile">
<li><a class="menu-item" onclick="go('/app')">Скачать приложение</a></li>
</div>
       </ul>
<br>
</div>
</nav>
`

// СНИЗУ

var bottom = document.getElementById("bottom");
bottom.innerHTML = `
<br><br><br><br><br><br>
<hr>
<center>
<h3> Главные новости </h3>
<p>
В этом разделе мы будем писать важные новости! В данный момент их нету!
</p>
<p>
Если вы пытаетесь найти меню сайта, то оно в самом верху сайта!

</p>

<br>
<br><br>
</center>
<div id="copyright">
<br>  
<h2><img src=\"/images/CraftBipedMinecraft.png\" width=\"70\" height=\"70\" align=\"center\"> 
<span class=\"sitename-12812\">CraftBiped </span>
</h2><h4 class=\"element-12812\">craftbiped.aternos.me</h4> 
<br><center> 
<h3>Навигация</h3>
<br>
<p><a onclick="go('/')" class=\"bottom-element\">Главная</a></p> 
<p><a onclick="go('/rules')" class=\"bottom-element\">Правила</a></p> 
<p><a href="/blog/news/" class=\"bottom-element\">Новости</a></p> 
<p><a href="/blog/" class=\"bottom-element\">Наш блог</a></p> 
<p><a onclick="go('/info')" class=\"bottom-element\">Информация о сервере</a></p> 
<p><a href=\"/go/discord.html\" class=\"bottom-element\">Дискорд</a></p> 
<p><a href=\"/go/donate.html\" class=\"bottom-element\">Купить донат</a></p> 
<p><a onclick="go('/expectations/')" class=\"bottom-element\">Отсчёты до ожидаемых событий</a></p> 
<p><a onclick="go('/updates')" class=\"bottom-element\">Список обновлений сервера</a></p>
<br>
<h2 style="color:red;">МЫ НИКАК НЕ СВЯЗАНЫ С MOJANG AB И MICROSOFT CORP.</h2>
<div class=\"avtor-pravo\"><h5>© CraftBiped, 2023—2024</h5></div> <br>
</div>
`


// До контента
    if (path == "/" || path == "/index" || path == "/index.html"){
    var pcon = document.getElementById("pcon");
pcon.innerHTML = `
<div id="citem">
<div id="mc">
<center> 
<img src="/images/CraftBipedMinecraft.png" width="60" height="60">
</center>
<center>
<p>
<h1>CraftBiped - Официальный сайт</h1>
<h3>Работаем уже более года для вас!</h3>
    <p>
      <a href="#content"><img src="/images/go.png" width="60" height="60"></a>
    </p>
</p>
<br>

</center>
</div>
</div>
`
} else {
    var pcon = document.getElementById("pcon");
pcon.innerHTML = `
<div id="indbgs">
<br>
<header>
<center> 
<img src="/images/CraftBipedMinecraft.png" width="60" height="60">
</center>
<center>
<h1>CraftBiped - Официальный сайт</h1>
<h3>Работаем уже более года для вас!</h3>
<h4 id="pageinfo"></h4>
`
}


// СТРАНИЦЫ

//  if (path == "/path"){
    
//    document.title = "Title - CraftBiped";
    
// var content = document.getElementById("content");
// content.innerHTML = `
//   ТУТ КОНТЕНТ
// `
// }

    if (path == "/" || path == "/index" || path == "/index.html"){
    
    document.title = "Официальный сайт CraftBiped";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Мы снова с вами!</h2>
<p>Ура! Наш сервер уже доступен! Вы можете играть на нём.</p>
<h2>Главная</h2>
<p>CraftBiped - Майнкрафт сервер! Вы можете зайти на него указав IP "CraftBiped.aternos.me"! Для входа используйте версию 1.4.7 - 1.20.6, но версия сервера - это 1.17.1. Порт сервера: 20863</p>


<h2>О нас</h2>
<p>
Мы небольшой майнкрафт проект, который был открыт Весной 2023. Сервер был создан и запущен 21.03.2023. Наша основная соц-сеть - Дискорд, а дополнительная - VK. Так-же мы имеем свой сайт. Это сайт, где вы сейчас находитесь. Мы существуем уже 1 год, и пока-что никаких проблем нету. Наш проект пережил достаточно тяжёлые осложнения и тех-неполадки, но не смотря на это мы продолжаем работать!
В данный момент у нас нету никаких проблем, но совсем недавно из нашей команды ушёл один Администратор, который был в нашей команде ещё с весны, ночью 25.01.2024 он вернулся и снова покинул нас 11.02.2024.
</p>
<div class="showmobile">
<hr>
<h2>Только для Мобильных устройств!</h2>
<p>Попробуйте наш сайт в одном приложении! (Приложение в данный момент на бета-тестировании, могут быть артефакты.)</p>
<p>
  <button onclick="window.location.href = 'https://craftbiped.github.io/app';">Попробовать</button>
</p>
<hr>
</div>
</center>
`

}
  if (path == "/info" || path == "/info.html"){
    
    document.title = "Информация - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Информация";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Информация</h2>
<p>Информация о сервере:</p>

<p> IP: CraftBiped.aternos.me</p>
<p> Port: 20863</p>
<p> Версия: 1.4.6 - 1.20.6</p>
<p> Версия Ядра: 1.17.1</p>
<p> Discord: <a href="/go/discord.html">Клик</a></p>
<br>
</center>
`
}

  if (path == "/news" || path == "/news.html"){
    
    document.title = "Новости - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Новости";
var content = document.getElementById("content");
content.innerHTML = `
<meta http-equiv="refresh" content="0;URL=http://craftbiped.github.io/blog/news/"/>
<hr>
<br><br><br><br><br><br>
<center>
<h2>Новости</h2>
<iframe src="/content/contentnews.html" width="70%" height="1000" allowtransparency="true" frameborder="1"></iframe>
</center>
`
}


  if (path == "/rules" || path == "/rules.html"){
    
    document.title = "Правила - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Правила сервера";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Правила</h2>

<p style="text-indent:1px">CraftBiped - это майнкрафт сервер! Он был создан 21 марта 2023.

<p style="text-indent:1px">Правила сервера:
<p style="text-indent:1px">Регистрируясь на сервере вы автоматически соглашаетесь с правилами!

<p style="text-indent:1px">1 - игра

<p style="text-indent:1px">[1.0] Не крашать сервер - бан на 10 дней

<p style="text-indent:1px">[1.1] Не играть с читами! - бан на 5 дней

<p style="text-indent:1px">[1.2] Не взрывать много ТНТ - бан на 4 часа

<p style="text-indent:1px">[1.3] Не мешать игрокам (помехи в рг и т.д.)! - кик если будет продолжаться более 5 раз - бан на 30 мин!

<p style="text-indent:1px">[1.4] Не оскорблять игроков! - мут на 20 мин

<p style="text-indent:1px">[1.5] Не строить постройки, оскорбляющие нации, игроков, проект или половые органы - бан на 1 час

<p style="text-indent:1px">[1.6] Не оскорблять игры (Майнкрафт в том числе) - мут на 50 минут!

<p style="text-indent:1px">[1.7] Запрещено плохо относится к админам! - бан на 1 час

<p style="text-indent:1px">[1.8] За попытку взлома - бан навсегда!

<p style="text-indent:1px">[1.9] Запрещена постройка нагружающих сервер механизмов (лаг-машины, большие фермы) - бан на 15 дней

<p style="text-indent:1px">[1.10] Не создавать группу игроков которая против проекта или нации - бан на 18 дней!

<p style="text-indent:1px">[1.11] Не продавать аккаунт - бан на 10 дней!

<p style="text-indent:1px">2 - чат

<p style="text-indent:1px">[2.0] Не угрожать игрокам в реальной жизни! - мут на 3 часа

<p style="text-indent:1px">[2.1] Не оскорблять игроков! - мут на 20 мин

<p style="text-indent:1px">[2.2] Не оскорблять проект, страну, нацию, создателей! - мут на 2 часа!

<p style="text-indent:1px">[2.3] Не писать матом, КАПСОМ и ПрЫгАюЩиМи буквами - мут на 30 мин!

<p style="text-indent:1px">[2.4] Запрещено использовать Флуд,спам! - мут на 1 час! 

<p style="text-indent:1px">3 - правила для донатеров

<p style="text-indent:1px">[3.0] Банить, кикать, мутить игроков просто так без причины или с неуважительной причиной! - бан на 1 день

<p style="text-indent:1px">[3.1] Не уничтожать спавн! - бан на 30 дней!

<p style="text-indent:1px">[3.2] Не использовать /kill в плохих целях! - бан на 2 часа!

<p style="text-indent:1px">[3.3] Создание варпов, которое что-то оскорбляют! - бан на 15 минут и удаление варпа!

<p style="text-indent:1px">[3.4] Не заполнять инвентарь игрока ресурсами и прописывать /kill что напрягает сервер! - бан на 3 дня!

<p style="text-indent:1px">[3.5] Не использовать /infsee в плохих целях! - бан на 1 час!

<p style="text-indent:1px">[3.6] Не использовать /stop! - Cнятие доната!

<p style="text-indent:1px">4 - интернет и боты

<p style="text-indent:1px">[4.0] DDOS и DOS атаки! - бан по ip навсегда!

<p style="text-indent:1px">[4.1] Использование Спам-ботов! - бан по ip на 10 дней!

<p style="text-indent:1px">[4.2] Запускать на сервер бота который всё уничтожает! - бан на 30 дней, бота по айпи навсегда!

<p style="text-indent:1px">[4.3] Делать рекламу! - бан на 20 дней, если сайт с вирусом или оскорбляет проект то на 30 дней

<p style="text-indent:1px">[4.4] Продажа на сервере за ностоящую валюту! - бан на 40 дней п айпи!

<p style="text-indent:1px">На сервере разрешается: Гриф, PvP, Бан кик мут за нарушение этих правил,

<p style="text-indent:1px">и т.д.</p>
</center>
`
}

  if (path == "/updates" || path == "/updates.html"){
    
    document.title = "Список обновлений - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Список обновлений";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Обновления и версии</h2>
<p style="text-indent:1px">Тут мы представили наши обновления! Ниже их список и информация о них, обновления идут по порядку выхода:

<h1>____________________</h1>

<p style="text-indent:1px">Первая версия сервера
<p style="text-indent:1px">Первая версия сервера - это наш сервер в момент начала работы. Обновление вышло 21.03.23, и в этот же день так-же открылся наш проект. Спавн в этом обновлении был небольшой: Имел портал в Мир выживания, портал в Незер, саму точку спавна, которая обозначалась алмазным блоком. Через пару дней после обновления и старта сервера (26.03.23) был открыт второй мир - Выживание-2, но позже был удалён по тех. причинам. Сам спавн представлял из себя круглый остров, который висел над пустотой. На острове были дома и река.

На этой версии сервера было мало плагинов и т.д., но сервер потихоньку улучшался.

<h1>____________________</h1>

<p style="text-indent:1px">Майский вайп
<p style="text-indent:1px">Майский вайп - это вайп-обновление, на котором была произведена отчистка карты, добавление НПС, а так-же добавлена поддержка бедрок-игроков и старых версий майнкрафт. Ещё на этом обновлении была проблема с сервером: Сервер стали постоянно ДДоСить, крашить, пытаться закрыть, из-за чего сервер постоянно отправлялся на режим технического обслуживания и изоляции, но потом всё утихло. Само обновление вышло 25.04.23. 25.05.23 вышло Летнее обновление.

<h1>____________________</h1>

<p style="text-indent:1px">Летнее обновление
<p style="text-indent:1px">Летнее обновление (или Июньское обновление) - это самое "тёплое" обновление в истории CraftBiped. На этом обновлении был изменён логотип сервера, а так-же: были добавлены донат-кейсы, обновлена PvP-арена, а так-же был обновлён наш дискорд-сервер. За 5 дней до лета был сделан /warp leto, на котором вы могли ждать лето вместе с другими игроками. За несколько дней до лета (29 мая) произошёл глобальный сбой хостинга, из-за чего сервер был закрыт на пару часов. Вышло обновление 25.05.23.

<h1>____________________</h1>


<p style="text-indent:1px">Июльское обновление
<p style="text-indent:1px">Июльское обновление - это обновление, на котором мы впервые сменили спавн! Теперь спавн гигантский, и имеет огромную PvP-арену. Ещё на этом обновлении произошёл инцидинет с глитчём, но он - выдумка. Вышло обновление 25.06.23.



<h1>____________________</h1>

<p style="text-indent:1px">CraftBiped 2.0
<p style="text-indent:1px">CraftBiped 2.0 - это обновление, на котором мы сделали наш донат платным (Важное примечание! На нашем сервере недоступен авто-донат! После покупки напишите игроку oldniki что вы купили донат но какой донат необязательно! Он проверит Историю покупок и выдаст вам вашу привилегию.). Так-же мы добавили Боссов, которые позже были удалены. Немного поменяли спавн. Вышло обновление 25.07.23.



<h1>____________________</h1>


<p style="text-indent:1px">CraftBiped 3.0 (Осеннее обновление)
<p style="text-indent:1px">CraftBiped 3.0 (или Осеннее обновление) - это обновление, где мы добавили новую валюту и не только! Вот список всего обновления:

<p style="text-indent:1px">1 - Мы добавили поинты за которые можно купить очень интересные вещи! Купить поинты вы можете у обменщика валюты за игровую валюту! Всё это находится на /warp points!

<p style="text-indent:1px">2 - Магазин перенесён на /warp shop!

<p style="text-indent:1px">3 - Мы добавили красивый осенний текстурпак!

<p style="text-indent:1px">4 - Мы изменили логотип

<p style="text-indent:1px">5 - Провели вайп!

<p style="text-indent:1px">6 - Добавили дуэли!

<p style="text-indent:1px">Вышло обновление 25.08.23.


<h1>____________________</h1>


<p style="text-indent:1px">Октябрьский вайп
<p style="text-indent:1px">Октябрьский вайп - это обычный вайп, на котором мы ничего не добавили, но при этом он является частью Обновления 3.0. Вайп был проведён 25.09.23.



<h1>____________________</h1>


<p style="text-indent:1px">Ноябрьский вайп
<p style="text-indent:1px">Ноябрьский вайп - это обычный вайп, на котором мы так-же ничего не добавили, но с 25 октября по 1 ноября на сервере был Хэллоуинский спавн. Он так-же является частью Обновления 3.0. Вайп был проведён 25.10.23.




<h1>____________________</h1>



<p style="text-indent:1px">CraftBiped 4.0 (Новогоднее обновление) 
<p style="text-indent:1px">CraftBiped 4.0 (Новогоднее обновление) - это текущее обновление. На нём мы добавили:

<p style="text-indent:1px">1. Систему репортов. Нашли нарушителя? Киньте не него репорт! Для этого пропишите /report {Ник нарушителя} {Причина}. Не кидайте репорты просто так! После репорта рекомендуем отправить доказательства сюда в канал 🛑┇доказательства.

<p style="text-indent:1px">2. Обновили спавн и скорбоард. Ух, скоро новый год. Пора украсить спавн по новогоднему! На спавне уже выпал снег! А Панель с информацией и таб стали сине-белыми, будто "замёрзли"! О! А что за НПС на спавне... О, оно телепортирует к поздравлениям! В домах на спавне теперь стеклянные окна и теперь в дома можно попасть только через дверь, но в двух домах двери заперты и туда просто так не попасть... О! Какая огромная ёлка!...

<p style="text-indent:1px">3. Сменили логотип.

<p style="text-indent:1px">4. Добавили секретную посхалку...

<p style="text-indent:1px">Будующее: на Предновогоднем вайпе мы добавим возможность получения подарка!!! 5 Января возможность отключится.



<h1>____________________</h1>




<p style="text-indent:1px">Предновогодний вайп</p>
<p style="text-indent:1px">Предновогодний вайп - это часть обновления CraftBiped 4.0. Она содержит в себе то что и CraftBiped 4.0, но в нём можно будет получить подарок! Вайп был проведён 25.12.23.
</p>
<h1>____________________</h1>



<p style="text-indent:1px">Февральский вайп 2024</p>
<p style="text-indent:1px">Февральский вайп - это часть обновления CraftBiped 4.0. Это самый обыкновенный вайп. Интересный факт: с <p style="text-indent:1px">2024 года все обновления будут помечаться на конце "2024", чтобы их не спутали с обновлениями 2023 года. Вайп был проведён 25.01.2024!
</p>
<h1>____________________</h1>
<p style="text-indent:1px">CraftBiped 5.0 (Весеннее обновление)</p>
<p style="text-indent:1px">CraftBiped 5.0 - это Первое обновление 2024 года, на котором CraftBiped исполнится 1 год, а так-же мы добавим следующие нововведения:</p>
1. Новые команды для всех: 
/stats <игрок> - позволяет просматривать статистику о игроке, который будет указан в аргументе.
/help - команда, которая помогает ориентироваться на сервере, если вы новичок в Мультиплеере.
2. Новые донатерские команды:
/prefix <ваш кастомный префикс> - позволяет установить свой кастомный префикс. К этой команде есть дополнительная команда /delprex для удаления префикса. Команда доступна с Легенды.
/bc <объявление> - позволяет сделать оповещение на весь сервер в чат. Доступно с Легенды, имеет кулдаун.
/titlebc <объявление> - позволяет сделать оповещение всем игрокам на экран. Доступно с Легенды, имеет кулдаун.
3. Новый спавн, PvP-арена и дуэли.
4. Изменили логотип сервера.
5. Изменили стиль сервера.
6. Новая бонусная команда /spring, которая выдаёт бонусный набор и будет доступна до 25 мая.
<p style="text-indent:1px">Обновление вышло 25.02.2024</p>
<h1>____________________</h1>
<p style="text-indent:1px">Апрельский вайп 2024</p>
<p style="text-indent:1px">Апрельский вайп 2024 - это часть обновления CraftBiped 5.0. Это самый обыкновенный вайп, на котором ничего не добавили, но карта была очищена.
<p style="text-indent:1px">Вайп прошёл 25.03.2024</p>
<h1>____________________</h1>
<p style="text-indent:1px">Майский вайп 2024</p>
<p style="text-indent:1px">Майский вайп 2024 - это часть обновления CraftBiped 5.0. Это самый обыкновенный вайп, на котором ничего не добавили, но карта была очищена.
<p style="text-indent:1px">Вайп прошёл 28.04.2024</p>
<h1>____________________</h1>
<p style="text-indent:1px">CraftBiped 6.0 - Летнее обновление 2024</p>
<p>Встречайте! CraftBiped 6.0 - Летнее обновление 2024!!!</p>
<p>Мы добавили следующее:</p>
<p>Изменили стиль текста на сервере.</p>
<p>Обновили логотип.</p>
<p> Список новых команд, доступных всем:</p>
<p>/trew - награды за время. Мы добавили награды за время!</p>
<p>/summer - позволяет получить Летний бонус!</p>
<p>/togglesb - позволяет спрятать боковую панель (Скорбоард), если она вам мешает!</p>
<p>Список новых донатерских команд:</p>
<p>/suffix {Ваш кастомный суффикс} - Позволяет сделать кастомный суффикс. Суффикс - это почти тоже самое что и префикс, но идёт после ника. Команда доступна с привилегии Легенда. </p>
<p>/delsuff - Позволяет удалить кастомный суффикс. Команда доступна с привилегии Легенда.</p>
<p>/cchat - Очищает чат. Команда доступна с привилегии Властелин.</p>
<p>Встречайте! Летний варп!</p>
<p>Ура! Мы снова вернули Летний варп! Вы можете телепортироваться туда введя команду /warp leto!</p>
<p>Желаем вам удачной игры на нашем сервере и удачного Лета!</p>
<p style="text-indent:1px">Обновление вышло 25.05.2024</p>
<h1>____________________</h1>
<p style="text-indent:1px">Временное отключение сервера</p>
<p>С 26 июня 2024 года по 28 ноября 2024 года сервер был заморожен. Веб-сайт craftbiped.github.io так-же был закрыт.<br>Произошло это в связи с тем, что владелец сервера устал, однако, спустя 4 месяца, вечером 27 ноября было принято решение восстановить сервер. После восстановления на нём вышло обновление CraftBiped 7.0, однако оно было не Осеннее, а уже Зимнее.</p>
<h1>____________________</h1>
<p style="text-indent:1px">CraftBiped 7.0 - Зимнее обновление 2024</p>
<p>Встречайте! Наш сервер разморозился и мы выпустили CraftBiped 7.0 - Зимнее обновление 2024!!!</p>
<p>В этом обновлении был проведён вайп, был изменён логотип и оформление, на спавне по традиции теперь стоит ОГРОМНАЯ ёлка, были удалены все приколы с лета, а так-же на спавне теперь лежит снег.</p>
<p>Желаем вам удачной игры на нашем сервере и удачной Зимы!</p>
<p style="text-indent:1px">Обновление вышло 28.11.2024</p>
<h1>____________________</h1>
<!--Закрываем ячейку-->
</center>
`
}

  if (path == "/videos/" || path == "/videos/index.html" || path == "/videos/index" || path == "/videos"){
    
    document.title = "Видео - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Видео сервера CraftBiped";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Видео-контент</h2>
<!--Начинаем абзац с красной строки-->
_____________________________________
<p>
CraftBiped 4.0 - Новогоднее обновление   |   Дата публикации 25.11.23   
</p>
<p>
<button onclick="window.location.href = 'video-1';">Смотреть</button>
</p>
_____________________________________
</center>
`
}

  if (path == "/expectations/" || path == "/expectations/index.html" || path == "/expectations/index" || path == "/expectations"){
    
    document.title = "Ждём ... вместе с CraftBiped - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Ждём ... вместе с CraftBiped";
    
var content = document.getElementById("content");
content.innerHTML = `
<hr>
<br><br><br><br><br><br>
<center>
<h2>Отсчёты до разных событий - Ждём ... вместе с CraftBiped!</h2>
<!--Начинаем абзац с красной строки-->
<p style="text-indent:1px">Что это такое?</p>
<p style="text-indent:1px">"Ждём ... вместе с CraftBiped" или же "Отсчёты до разных событий" на сайте CraftBiped - это отсчёты до ожидаемых событий (Например "Отсчёт до Лета" или "Отсчёт до Нового года"), которые вы можете увидить в этом каталоге. </p>
<p style="text-indent:1px">Ниже вы увидите список текущих отсчётов.</p>
</center>
<br><br><br><br><br><br>
<hr>
<center>
<h3>Список текущих отсчётов</h3>
<br><br>
<a href="./newyear.html" style="color: white;">
<h1>Отсчёт до нового года 2025</h1>
<p>Дата окончания отсчёта: 01.01.2025</p>
 </a>
<br><br>
<br>
`
}
if (path == "/nav" || path == "/nav.html"){
window.location.pathname = "/";
}
if (path == "/expectations/newyear.html" || path == "/expectations/newyear"){
window.location.reload();
}
if (path == "/blog/" || path == "/blog/index" || path == "/blog/index.html"){
window.location.reload();
}
if (path == "/app" || path == "/app.html"){
    document.title = "Приложение - CraftBiped";
   var pageinfo = document.getElementById("pageinfo");
   pageinfo.innerHTML = "Целое приложение к сайту!";
   var content = document.getElementById("content");
   content.innerHTML = `
   <hr>
<br><br><br><br><br><br>
   <h2>
<center>
  <p>CraftBiped - Мобильное приложение к сайту!</p>
</center>
<h1>
<p>
<center>Целый сайт в одном приложении! В данный момент приложение на Бета-тесте, поэтому могут быть проблемы.</center>
</p>
</h1>
<p>
<center>Наше мобильное приложение позволяет попадать на наш сайт в один клик!</center>
</p>
</h2>
<p>
<center>
  <button onclick="window.location.href = 'https://craftbiped.github.io/content/CraftBipedapp.apk';">Попробовать (.apk)</button>
</center>
</p>
<p>
<center>
  <button onclick="window.location.href = 'https://craftbiped.github.io/';">На главную</button>
</center>
</p>
   `
}

  if (browser == "Firefox"){
var ffox = document.getElementById("Firefox");
ffox.innerHTML = "<br><br><br><br><br>";
  }
console.log("Загрузка завершена.")
}

function go(url){
  if (url == window.location.pathname){
window.scrollTo(0, 0);
  } else {
console.log("    ")
console.log("Переход на \""+ url +"\"...")
history.pushState(null, null, url);
  }
}

function refresh(){
pathinload = window.location.pathname;
window.scrollTo(0, 0);
pages();
}

setInterval(() => {
  if (pathinload == window.location.pathname){
  // empty
  } else {
  refresh();
  }
}, 10);


