$(function(){
    if(popupTimeOut) {
        if(!getCookie('popupTimeOut')){
            var now = new Date();
            setCookie('popupTimeOut', now.getTime(),0,'/');
            fadeInPopUpTimeOut();
        }
        else if(getCookie('popupTimeOut') != 'done'){
            fadeInPopUpTimeOut();
        }
    }
});
function fadeInPopUp(form_class, type, caption){
    var wrap = $('#popup_timer_promo');
    var init_type = wrap.find('input[name=type]').val();
    //var init_caption = wrap.find('h2').html();
    if(type.length > 0){
        wrap.find('input[name=type]').val(type);
    }
    /*if(caption.length > 0){
        wrap.find('h2').html(caption);
    }*/
    $.fancybox.open(wrap, {
    	openEffect : 'none',
    	closeEffect : 'none',
		padding : 0,
		helpers : {
    		overlay : {
    			css : {
    				'background' : 'rgba(255, 255, 255, 0.75)'
    			},
                locked: false
    		}
	    },
        beforeClose: function(){
            wrap.find('input[name=type]').val(init_type);
            //wrap.find('h2').html(init_caption);
        }
    });
}
function fadeInPopUpTimeOut(){
    var now = new Date().getTime();
    var inTime = getCookie('popupTimeOut')*1;
    var wait = popupTimeOut*1000;
    var lastTime = (inTime + wait) - now;
    setTimeout(function(){
        fadeInPopUp('', 'Заявка', 'Распродажа моторов и кабин из наличия - более 140 штук!<br/>Остальное - под заказ за неделю!<br/>Можно в кредит независимо от региона!');
        setCookie('popupTimeOut', 'done','','/');
    }, lastTime);
}
function getCookie(name) {
	var cookie = " " + document.cookie;
	var search = " " + name + "=";
	var setStr = null;
	var offset = 0;
	var end = 0;
	if (cookie.length > 0) {
		offset = cookie.indexOf(search);
		if (offset != -1) {
			offset += search.length;
			end = cookie.indexOf(";", offset)
			if (end == -1) {
				end = cookie.length;
			}
			setStr = unescape(cookie.substring(offset, end));
		}
	}
	return(setStr);
}

function setCookie (name, value, expires, path, domain, secure) {
      document.cookie = name + "=" + escape(value) +
        ((expires) ? "; expires=" + expires : "") +
        ((path) ? "; path=" + path : "") +
        ((domain) ? "; domain=" + domain : "") +
        ((secure) ? "; secure" : "");
}