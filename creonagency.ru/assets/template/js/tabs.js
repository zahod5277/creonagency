/*
<div class="section">
  <ul class="tabs">
    <li class="active">1-я вкладка</li>
    <li>2-я вкладка</li>
  </ul>
  <div class="box visible">
    Содержимое первого блока
  </div>
  <div class="box">
    Содержимое второго блока
  </div>
</div><!-- .section -->

<a href="#tab1">1-я вкладка</a>
*/

/*
.box {
  display: none; // по умолчанию прячем все блоки
}
.box.visible {
  display: block; // по умолчанию показываем нужный блок
}
*/

var tabsConfig = {
    useCookie: true, // запоминать ли состояние табов
    useHashLink: true // включить ли возможность переключения табов с помощью ссылок вне блока с табами и переключения табов в зависимости от хеш-данных в url (если на странице выводится несколько блоков с табами, отключите эту опцию)
};


(function($) {
$(function() {

	function createCookie(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}
	function readCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}
	function eraseCookie(name) {
		createCookie(name,"",-1);
	}

        if(tabsConfig.useCookie){
            $('ul.tabs').each(function(i) {
                    var cookie = readCookie('tabCookie'+i);
                    if (cookie) $(this).find('li').eq(cookie).addClass('active').siblings().removeClass('active')
                            .parents('div.section').find('div.box').hide().eq(cookie).show();
            })
        }
    $('ul.tabs li a').on('click', function(e){
        e.preventDefault();
    })
	$('ul.tabs').delegate('li:not(.active)', 'click', function() {
		$(this).addClass('active').siblings().removeClass('active')
			.parents('div.section').find('div.box').eq($(this).index()).fadeIn(150).siblings('div.box').hide();
		var ulIndex = $('ul.tabs').index($(this).parents('ul.tabs'));
		if(tabsConfig.useCookie){
                    eraseCookie('tabCookie'+ulIndex);
                    createCookie('tabCookie'+ulIndex, $(this).index(), 365);
                }
	})
    
	if(tabsConfig.useHashLink){
            var tabIndex = window.location.hash.replace('#tab','')-1;
            if (tabIndex != -1) $('ul.tabs li').eq(tabIndex).click();
            $('a[href^=#tab]').click(function() {
		var tabIndex = $(this).attr('href').replace('#tab','')-1;
		$('ul.tabs li').eq(tabIndex).click();
            });
        }

})
})(jQuery)