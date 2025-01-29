
var jjs = document.getElementById("jsn");
jjs.innerHTML = `
`;



var menumenu = document.getElementById("menu");
menumenu.innerHTML = `
<nav>
<br>
<div class="site">
<img src="/images/CraftBipedMinecraft.png" width="60" height="60">
<h1>CraftBiped</h1>
<p>Работаем для вас с 2023 года!</p>
<h5 id="path"></h5>
<br>
</div>
<ul class="themenu">
<li><a href="/">ГЛАВНАЯ</a></li>
<li><a href="/info">ИНФОРМАЦИЯ</a></li>
<li><a href="/blog/">БЛОГ</a></li>
<li><a href="/blog/news/">НОВОСТИ</a></li>
<li><a href="/donate">ПОЛУЧЕНИЕ ПРИВИЛЕГИЙ</a></li>
<li><a href="/rules">ПРАВИЛА</a></li>
<li><a href="/expectations/">ОТСЧЁТЫ</a></li>
<li><a href="/app">ПРИЛОЖЕНИЕ</a></li>
</ul>
<h2 id="mobilemenu"><a onclick="openmenu()" id="openmenubutton" class="btn" style="color: white; text-decoration: none;">☰ меню</a></h2>
<div id="menulist">

</div>
<br>
</nav>
`;
var cop = document.getElementById("copyright");
cop.innerHTML = `
<br>
<h2><img src="/images/CraftBipedMinecraft.png" width="70" height="70" align="center">
<span class="sitename-12812">CraftBiped </span>
</h2><h4 class="element-12812">craftbiped.aternos.me</h4>
<br><br>
<br><br><center>
<h3>Навигация</h3>
<br>
<p><a href="/" class="bottom-element">Главная</a></p>
<p><a href="/rules" class="bottom-element">Правила</a></p>
<p><a href="/blog/news/" class="bottom-element">Новости</a></p>
<p><a href="/blog/" class="bottom-element">Наш блог</a></p>
<p><a href="/info" class="bottom-element">Информация</a></p>
<p><a href="/go/discord.html" class="bottom-element">Дискорд</a></p>
<p><a href="/donate" class="bottom-element">Получить привилегию</a></p>
<p><a href="/expectations/" class="bottom-element">Отсчёты до ожидаемых событий</a></p>
<p><a href="/updates" class="bottom-element">Список обновлений сервера</a></p>


<br>
<h2 style="color:red;">МЫ НИКАК НЕ СВЯЗАНЫ С MOJANG AB И MICROSOFT CORP.</h2>
</center>
<div class="avtor-pravo"><h5>© CraftBipedMC, 2023—2025</h5></div> <br>
`;
function openmenu(){
    var menulogo = document.getElementById("mobilemenu");
    menulogo.innerHTML = `
    <a onclick="closemenu()" id="openmenubutton" class="btn" style="color: white; text-decoration: none;">❌ закрыть меню</a>
    `;
    var menul = document.getElementById("menulist");
    menul.innerHTML = `
<div style="background-color: #f39f18; border: 3px solid yellow;">
<br><br>
<li><a href="/""> ГЛАВНАЯ</a></li>
<br>
<li><a href="/info"> ИНФОРМАЦИЯ</a></li>
<br>
<li><a href="/blog/"> БЛОГ</a></li>
<br>
<li><a href="/blog/news/"> НОВОСТИ</a></li>
<br>
<li><a href="/donate"> ПОЛУЧЕНИЕ ПРИВИЛЕГИЙ</a></li>
<br>
<li><a href="/rules"> ПРАВИЛА</a></li>
<br>
<li><a href="/expectations/"> ОТСЧЁТЫ</a></li>
<br>
<li><a href="/app"> ПРИЛОЖЕНИЕ</a></li>
<br><br><br>
</center>
    `;
}
function closemenu(){
    var menulogo = document.getElementById("mobilemenu");
    menulogo.innerHTML = `
<a onclick="openmenu()" id="openmenubutton" class="btn" style="color: white; text-decoration: none;">☰ меню</a>
    `;
    var menul = document.getElementById("menulist");
    menul.innerHTML = `

    `;
}

function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}

if (typeof parent.mobilemode !== 'undefined') {
var appstyles = document.getElementById("customcss");
appstyles.innerHTML = `
<link rel="stylesheet" type="text/css" href="/assets/app.css" />
`;
console.log('Режим приложения включён');
if (window.location.pathname == "/") {
    window.location.pathname = "/indexapp.html";
}
} else {
console.log('Режим приложения выключен');
}


  if ('serviceWorker' in navigator) {
    console.log('CLIENT: service worker registration in progress.');
    navigator.serviceWorker.register('/service-worker.js').then(function () {
      console.log('CLIENT: service worker registration complete.');
    }, function () {
      console.log('CLIENT: service worker registration failure.');
    });
  } else {
    console.log('CLIENT: service worker is not supported.');
  }
