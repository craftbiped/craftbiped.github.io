if (window.location.host == 'craftbiped.github.io.') {
window.location.host = "craftbiped.github.io";
}
var jjs = document.getElementById("jsn");
jjs.innerHTML = `
`;



var menumenu = document.getElementById("menu");
menumenu.innerHTML = `
<!--
<div id="jsnof">
<p>Наш новый IP: craftbiped.falixsrv.me <a href="https://craftbiped.github.io/blog/news/2025/02/14/new-ip.html">Подробнее...</a></p>
 </p>
</div>
-->
<br>
<nav>
<div style="background-color: green; text-align: center; border: 3px solid green;">
<p>ПРОЕКТУ ДВА ГОДА!!! <a href="/blog/news/2025/03/21/two-years.html">Подробнее...</a></p>
</div>
<br>
<div class="site">
<p>Московское время: <span id="timee"><img src="/assets/loading.gif" width="20" height="20"></span> (<a href="#" onclick="reloadmsk()">Обновить</a>)<br>Сервер "живёт" по этому времени.</p>
<br><br>
<img src="/images/CraftBipedMinecraft.png" width="60" height="60">
<h1>CraftBiped</h1>
<p>Работаем для вас уже не на Атернос!</p>
<h5 id="path"></h5>
<br>
</div>
<ul class="themenu">
<li><a href="/">ГЛАВНАЯ</a></li>
<li><a href="/info">ИНФОРМАЦИЯ</a></li>
<li><a href="/blog/">БЛОГ</a></li>
<li><a href="/blog/news">НОВОСТИ</a></li>
<li><a href="/donate">ПОЛУЧЕНИЕ ПРИВИЛЕГИЙ</a></li>
<li><a href="/rules">ПРАВИЛА</a></li>
<li><a href="/expectations/">ОТСЧЁТЫ</a></li>
<li><a href="/app">ПРИЛОЖЕНИЕ</a></li>
<br><br>
<li><a href="/videos/">ВИДЕО</a></li>
<li><a href="/sets/">НАБОРЫ</a></li>
<li><a href="/support">ПОДДЕРЖКА</a></li>
<li><a href="/ds">НАШ DISCORD</a></li>
<li><a href="https://t.me/craftbipedmc">НАШ TELEGRAM</a></li>
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
</h2><h4 class="element-12812">craftbiped.falixsrv.me</h4>
<br><br>
<br><br><center>
<h3>Навигация</h3>
<br>
<p><a href="/" class="bottom-element">Главная</a></p>
<p><a href="/rules" class="bottom-element">Правила</a></p>
<p><a href="/blog/news" class="bottom-element">Новости</a></p>
<p><a href="/blog/" class="bottom-element">Наш блог</a></p>
<p><a href="/info" class="bottom-element">Информация</a></p>
<p><a href="/donate" class="bottom-element">Получить привилегию</a></p>
<p><a href="/expectations/" class="bottom-element">Отсчёты до ожидаемых событий</a></p>
<p><a href="/videos/" class="bottom-element">Видео</a></p>
<p><a href="/support" class="bottom-element">Поддержка</a></p>
<p><a href="/ds" class="bottom-element">Наш Discord</a></p>
<p><a href="https://t.me/craftbipedmc" class="bottom-element">Наш Telegram</a></p>

<br><br>
<div id="countr"><img src="/assets/loading.gif" width="35" height="35"></div>

<br>
<div id="popup-overlay">
  <div id="popup">
    <h3 id="popheader">Popup!</h3>
    <p id="poptext">popup content</p>
    <p id="popbutton"><button onclick="hidePopup()">Закрыть окно</button></p>
  </div>
</div>
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
<li><a href="/blog/news"> НОВОСТИ</a></li>
<br>
<li><a href="/donate"> ПОЛУЧЕНИЕ ПРИВИЛЕГИЙ</a></li>
<br>
<li><a href="/rules"> ПРАВИЛА</a></li>
<br>
<li><a href="/expectations/"> ОТСЧЁТЫ</a></li>
<br>
<li><a href="/app"> ПРИЛОЖЕНИЕ</a></li>
<br>
<li><a href="/videos/"> ВИДЕО</a></li>
<br>
<li><a href="/support"> ПОДДЕРЖКА</a></li>
<br>
<li><a href="/sets/"> НАБОРЫ</a></li>
<br>
<li><a href="/ds">НАШ DISCORD</a></li>
<br>
<li><a href="https://t.me/craftbipedmc">НАШ TELEGRAM</a></li>
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

var countr = document.getElementById("countr");
countr.innerHTML = `
<h3>Ваш регион:</h3>
<h3><div id="cname"><img src="/assets/loading.gif" width="35" height="35"></div></h3>
<h5>На сайте возможны изменения в зависимости от вашего региона.</h5>
`;

fetch('https://ipwho.is/?lang=ru')
  .then(res => res.json())
  .then(data => checkcountry(data.country_code, data.country, data.flag.emoji, data.region));

function checkcountry(ccode, counrtyname, img, rg){
var ccodeccodename = document.getElementById("cname");
ccodeccodename.innerHTML = ""+ img +" "+ rg +", "+ counrtyname +"";
if (window.location.pathname == '/' || window.location.pathname == '/index' || window.location.pathname == '/index.html') {
if (ccode == 'RU') {
var socialss = document.getElementById("insocials");
socialss.innerHTML = `
<center>
<h1>Мы в <s>соц. сетях</s> мессенджерах</h1>
<br>
<h3>Мы в Discord</h3>
<p style="color: red;">Discord заблокирован в вашей стране, однако, если у вас работает дискорд, вы можете присоединиться к нашему Discord-серверу!</p>
<br><h4><a href="/ds">Перейти в дискорд-сервер!</a></h4>
<br>
<h3>Мы в Telegram</h3>
<br><h4><a href="https://t.me/craftbipedmc">Перейти в телеграм канал!</a></h4>
</center>
`;
} else {
var socialss = document.getElementById("insocials");
socialss.innerHTML = `
<center>
<h1>Мы в <s>соц. сетях</s> мессенджерах</h1>
<br>
<h3>Мы в Discord</h3>
<iframe src="https://discord.com/widget?id=1092814950596100116&theme=dark" width="276" height="500" allowtransparency="true" frameborder="0" sandbox="allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts"></iframe>
<br><h4><a href="/ds">Перейти в дискорд-сервер!</a></h4>
<br>
<h3>Мы в Telegram</h3>
<br><h4><a href="https://t.me/craftbipedmc">Перейти в телеграм канал!</a></h4>
</center>
`;
}

}
}

const popupOverlay = document.getElementById("popup-overlay");
const popup = document.getElementById("popup");
 
function showPopup() {
  popupOverlay.style.display = "block";
}
 
function hidePopup() {
  popupOverlay.style.display = "none";
}
 
popupOverlay.addEventListener("click", hidePopup);
//popup.addEventListener("click", (event) =&gt; event.stopPropagation());



function openpopup(header, text, button) {
var popheaderpopheader = document.getElementById("popheader");
popheaderpopheader.innerHTML = header;
var poptextpoptext = document.getElementById("poptext");
poptextpoptext.innerHTML = text;
if (button === "close"){

} else {
var popbuttonpopbutton = document.getElementById("popbutton");
popbuttonpopbutton.innerHTML = button;
}

showPopup()
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

function reloadmsk() {
var timeetimee = document.getElementById("timee");
timeetimee.innerHTML = `<img src="/assets/loading.gif" width="20" height="20">`;

fetch('https://timeapi.io/api/time/current/zone?timeZone=Europe%2FMoscow')
  .then(res => res.json())
  .then(data => timeecho(data.time, data.year, data.month, data.day));
function timeecho(time, year, month, day){
if (month < 10){
var themonth = "0"+ month +"";
} else {
var themonth = month;
}
var datatime = ""+ day +"."+ themonth +"."+ year +"  "+ time +""
var timeetimee = document.getElementById("timee");
timeetimee.innerHTML = datatime;
}
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

reloadmsk()
