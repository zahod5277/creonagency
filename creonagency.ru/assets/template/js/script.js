$(document).ready(function() {
    
    //задаем высоту итемов в портфолио по самому высокому итему
    if($(".portfolio-item").length > 1){
        // var itemHeight = 0,
        //     biggestItemHeight = 0;
        // $(".portfolio-item").each(function (i) {
        //     if ($(this).outerHeight() > biggestItemHeight) {
        //       biggestItemHeight = $(this).outerHeight();
        //     }
        //   });
        $(".portfolio-item").height(360);
    }
    
    //Интеграция с CoMagic. Не трогать ни в коем случае!
    //Форма в шапке Заказать звонок
    var CallbackHeaderForm = $('form[data-id="form_popup_call"]');
    $('button',CallbackHeaderForm).on('click',function(){
        var CallbackHeaderName = $('input[name="name"]',CallbackHeaderForm).val();
        var CallbackHeaderPhone = $('input[name="phone"]',CallbackHeaderForm).val();
        Comagic.push(['addOfflineRequest', {
                name: CallbackHeaderName, 
                phone: CallbackHeaderPhone,
                utm_source: 'Yandex',
            }]);
    });
    //конец блока с интеграцией, можно трогать все, что ниже
    $('.carousel_uslugi_rd').flipster({
        itemContainer: 'ul',
        itemSelector: 'li',
        style: 'carousel',
        spacing: -0.5,
        nav: false,
        buttons: true,
        autoplay: '4000',
        start: 1,
        loop: true,
        scrollwheel: false,
    });
    if($('.portfolio_page_wrapper.preloader').length > 0){
        setTimeout(function(){
            $('.portfolio_page_wrapper.preloader').removeClass('preloader');
        },
        1000)
    }
    var counter = 0;
    $('.main_slider .parent').owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        dots:true,
        autoplay: false,
        items:1,
        
        
    });
    $('select.additional_nav option.active').attr('selected','selected');
    $('select.additional_nav').on('change', function(){
         link = $('select.additional_nav option:selected').val();
         window.location.href = link;
    });
    
    // $shapeshift = $('.shapeshift');
    // setTimeout(function(){
    //     $shapeshift.shapeshift({
    //         columns: null,
    //         align: 'left',
    //         gutterX: 15,
    //         gutterY: 15,
    //         paddingX: 0,
    //         paddingY: 0,
    //         autoHeight: true,
    //         animateOnInit: true
            
            
    //     });
    // },2000);
    //console.log($('.review_rd_vsp').height());
    //$('.review_rd_logo').css('line-height', $('.review_rd').height()+'px');
    // $(document).on('shape_complite',function(){
    //     $('.review_rd_logo').each(function(){
    //         $(this).css('line-height', $(this).parent().parent().height()-20 + 'px');
    //     });
    //     $('.shapeshift').css('opacity','1');
    // });
    // $(document).on('ss-event-dragged',function(){
    //     console.log("This container:");
    // });
    //     
    //     console.log "Has finished rearrangement after a drop."
        
    $(window).resize(function(){
        if($(window).width() > 999){
            $('.plashka').css('display','none');
        }else{
            if($(window).scrollTop() > 100){
                $('.plashka').css('display','block');
            }
        }
    });
    if ($('main').is('.calculator')){
        $.each(prices, function(key, value) {       // добавляем пункты меню в селект
            $('.people_type').append("<option value='" + key + "'>" + prices[key]['name'] +"</option>");
        });
        
        counter++;
        if (counter == 1){
            $('.people_type option:first-child').remove();
        }
        if (!$('.calculator .people_type [selected="selected"]').text()){
            list_filling();
        }
    }
    $('.content .additional_nav .active a').on('click', function(e){
        e.preventDefault();
    });
    var idx = 0;
    $('.block-review .text').each(function(){
        var kol = 200;
        var i=0;
        ++idx;
        count = $(this).children().length;
        $block = $(this).children();
        countFirst = $(this).first().text().length;
        var countSimvol = 300;
        simvol = 0;
        while(i < count){
            simvol = simvol + $block.eq(i).text().length;
            if (simvol > countSimvol){
                $block.eq(i).css('display', 'block');
                i = count;
                if (i > 1){
                    //$(this).append('<span class="open">Читать дальше</span><div class="clear"></div>');
                    
                }
                //txt = $block.eq(i).text().substr(0,20);
                //$block.eq(i).text('txt');
            }else{
                $block.eq(i).css('display', 'block');
                ++i;   
            }  
        }   
    });
    $('.open').on('click',function(){
        /*$(this).parent().children().css('display','block');
        $(this).css('display','none');*/
    });
    //console.log($text.each('p').length);
    $('.scroll_to').on('click', function(e){
        e.preventDefault();
        var target_selector = $(this).attr('href');
        var target = $(target_selector);
        var position = target.offset();
        if (target_selector == '#product_order') {
            position.top = position.top - ($(window).height() - target.height() - 100);
            console.log(position)
        }
        $('html, body').animate({
            scrollTop: position.top
        }, 500);
    });
    $(".fancybox").fancybox({
    	openEffect : 'none',
    	closeEffect : 'none',
		padding : 0,
		locked : false
		
		
    });
    $('.fancybox_video').fancybox({
        padding: 0,
        locked: false,
        tpl: {
            iframe: '<iframe id="fancybox-frame{rnd}" name="fancybox-frame{rnd}" class="fancybox-iframe" autoplay=1 frameborder="0" vspace="0" hspace="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen allowtransparency="true"></iframe>'
        }
    });
    $(".foto").fancybox({
    	openEffect : 'none',
    	closeEffect : 'none',
		padding : 0,
		locked : false,
	    
		afterShow : function(){
           
            fancybox_bottom($.fancybox.wrap);
			
		},
		beforeShow : function(){
           
            $('#gallery').css('opacity','0');
			
		},
		onChange : function(){
	        
	        fancybox_bottom($.fancybox.wrap);
        
        },
		afterClose : function (){
			$('#gallery').css('opacity','0');
		},
		beforeClose : function (){
			$('#gallery').css('opacity','0');
		}
		
    });
    
    $(document).on('pdopage_load', function() {
        portfolio_carousel();
    });
    portfolio_carousel();
    
    $('.clients-carousel').owlCarousel({
        loop:true,
        margin:5,
        nav:true,
        /*autoplay: true,*/
        items:2,
        responsive:{
            699:{
                items: 4,
                margin:10
            }
        }
            
        
        
    });
    $('.main_page_reviews').owlCarousel({
        loop:true,
        margin:0,
        nav:true,
        /*autoplay: true,*/
        items:1,
        responsive:{
            699:{
                items: 4,
                margin:10
            }
        }
    });
    $('.slider_content_uslugi').owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        items:1,
        dots:true,
        autoplay: true,
        autoplayTimeout: 3000
    });
    $('.models_carousel .parent').owlCarousel({
        loop:true,
        margin:0,
        nav:true,
        autoplay: false,
        items:1,
        responsive:{
            699:{
                items: 3,
                margin:0
            }
            
        }
    });
    $('.similar_models .parent').owlCarousel({
        loop:true,
        margin:0,
        nav:true,
        autoplay: false,
        items:1,
        responsive:{
            699:{
                items: 3,
                margin:0
            }
            
        }
    });
    
    $('.main_our_project .parent').owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        autoplay: false,
        items:1,
        dots:true,
        smartSpeed: 500,
        responsive:{
            767:{
                dots:true,
                nav:true
            },
            1000:{
                dots:true,
                nav:true
            }
            
        }
    });
    $('.carousel_products .carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        autoplay: false,
        items:2
    });
    $(".fancybox-button").fancybox({
        locked : false
    });
    $(".fancybox-photo").fancybox({
        wrapCSS : 'fancybox-photo',
        locked : false
        
    });
    /*$('.uslugi .parent_personal, .uslugi .parent_action').shapeshift({
        gutterX: 20,
        gutterY: 20
    });*/
    
    $('.owl-carousel-reviews').owlCarousel({
        items:1,
        loop:true,
        margin:10,
        nav:true,
        
        /*autoHeight:true*/
    });
    $(".piople input").ionRangeSlider({
        min: 0,
        max: 30
    });

    $(".hours input").ionRangeSlider({
        min: 1,
        max: 12
    });
    $(".hours input, .days input, .piople input").on("change", function () {
        sel_slider($(this));
        calculation();
        /*if ($('.calculator .people_type [selected="selected"]').text()){
            alert('Выберите тип персонала');
            $(".piople input").data("ionRangeSlider").reset({disable:true});
            $(".hours input").data("ionRangeSlider").reset({disable:true});
            $(".days input").data("ionRangeSlider").reset({disable:true});
            $(".hours input").data("ionRangeSlider").reset({max:30});
        }
        else{
            sel_slider($(this));
            calculation();
        }*/
    });
    $(".days input").ionRangeSlider({
        min: 1,
        max: 20
    });
    $('.calculator .big_checkbox input, .calculator input[name=group1], .sub_people_type, .calculator input[name=group2], .calculator input[name=group3]').on("change", function () {
        calculation();
    });
    
    $('.calculator .people_type').on("change", function () {
        list_filling();
        //$(".hours input").data("ionRangeSlider").update({max:30});
        //counter++;
        /*if (counter == 1){
            $('.people_type option:first-child').remove();
        }
        if (!$('.calculator .people_type [selected="selected"]').text()){
            
            $(".piople input").data("ionRangeSlider").reset({disable:false});
            $(".hours input").data("ionRangeSlider").reset({disable:false});
            $(".days input").data("ionRangeSlider").reset({disable:false});
            
            list_filling();
        }*/
        
    });
    $(window).scroll(function(){
        if ($(window).width() < 999){
            if($(window).scrollTop() > 100){
                $('.plashka').slideDown(200);
            }else{
                $('.plashka').slideUp(200);
            }
        }
    });
    $('.plashka .fa-bars').on('click', function(){
        
        $(this).toggleClass('rotate').parent().parent().next().slideToggle(200);
    });
    $('.b_logo .fa-bars').on('click', function(){
        $(this).toggleClass('rotate');
        $('.menu_mobile').slideToggle(200);
        $('.header').toggleClass('vis_menu');
        
    })
    $('.calculator .people_type').on("blur", function (){
        if ($(this).val()){
            list_filling();
        }
    });
    $('.btn_hide_text').on('click', function(){
        if(!$(this).hasClass('open_text')){
            $(this).text('Свернуть').addClass('open_text');
        }else{
            $(this).text('Читать далее').removeClass('open_text');
        }
        $(this).prev().slideToggle(200);
    });
    $('.calculator .sub_people_type, .calculator .people_type').on("change", function () {
        //console.log($(this).val());
        console.log("trigger: " + $('.calculator .sub_people_type').val());
        if (($('.calculator .sub_people_type').val() == 'supervisors_traveling_without_car') || ($('.calculator .sub_people_type').val() == 'supervisors_traveling_with_car') || ($('.calculator .sub_people_type').val() == 'auditor') || ($('.calculator .sub_people_type').val() == 'secret_shopper')){
            $(".hours input").data("ionRangeSlider").update({max:30});
        }
        else{
            $(".hours input").data("ionRangeSlider").update({max:12});
        }
    });
    if($('.slider_main_rd').length > 0){
        $('.slider_main_rd .parent').owlCarousel({
            loop:true,
            margin:0,
            nav:true,
            navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            autoplay: true,
            items:1,
            dots:true,
            smartSpeed: 500,
            autoplayTimeout: 4000
            
        
        });
    }
    if($('.swiper-container').length > 0){
        var mySwiper = new Swiper ('.swiper-container', {
            direction: 'vertical',
            loop: true,
            nextButton: '.swiper-button-next-custom',
            prevButton: '.swiper-button-prev-custom'
        });
    }
    
    $('[type="radio"], [type="checkbox"]').styler({
        
    });
    $('.faq .item .question').on('click', function(){
        $(this).parents(".item").find(".answer").slideToggle();
        $(this).toggleClass("dropdown");
    });
    
    /*$('.down_visible').on('click', function(e){
        e.preventDefault();
        $(this).parent().parent().next('.calc_r_dropdown').slideDown(300)
    });*/
    $('.down_hide').on('click', function(e){
        e.preventDefault();
        $(this).parent().parent('.calc_r_dropdown').slideUp(300)
    });
    
    if(device.desktop()){
        $tel = $('[href="tel:+74959989692"]');
        $tel.css('cursor','default')
        $tel.on('click',function(e){
            e.preventDefault();
            
        });
       
    }
    if (isTouch()) {
		$('html').addClass('bx-touch');
	}else{
	    $('html').addClass('bx-no-touch');
	}
	var toggles = $(".cmn-toggle-switch");
	for (var i = toggles.length - 1; i >= 0; i--) {
        var toggle = toggles[i];
        toggleHandler(toggle);
      }
      
    
});

  function toggleHandler(toggle) {
    toggle.addEventListener( "click", function(e) {
      e.preventDefault();
      if($(this).hasClass("active")){
          $(this).removeClass("active"); 
      }else{ 
          $(this).addClass("active");
          
      }
    });
  }


function isTouch() {
	try {
		document.createEvent("TouchEvent");
		return true;
	} catch (e) {
		return false;
	}
}
function sel_slider($this){
    var res = $this.val();
    $this.parent().next('.ress').find('p').text(res);
}
function list_filling(){
    $('.sub_people_type').css('display','block');
    $('.sub_people_type option').remove();
    $.each(prices[$('.calculator .people_type').val()], function(key, value) {
        if (prices[$('.calculator .people_type').val()][key]['name'] != undefined)
            $('.sub_people_type').append("<option value='" + key + "'>" + prices[$('.calculator .people_type').val()][key]['name'] +"</option>");
    });
    calculation();
}

//function createArray(){
    var prices = new Object();          // ассоциативный массив с ценами 
    prices['promo_personal'] = new Object(); // цены на "Промо"
        prices['promo_personal']['name'] = 'Промоутеры';
        prices['promo_personal']['promoter_without_facecontrol'] = new Object();
            prices['promo_personal']['promoter_without_facecontrol']['name'] = 'Промоутер без особых требований к внешности';
            prices['promo_personal']['promoter_without_facecontrol']['price'] = new Object();
            prices['promo_personal']['promoter_without_facecontrol']['price']['1'] = 324;
            prices['promo_personal']['promoter_without_facecontrol']['price']['1-2'] = 324;
            prices['promo_personal']['promoter_without_facecontrol']['price']['2-3'] = 324;
            prices['promo_personal']['promoter_without_facecontrol']['price']['3-4'] = 302.4;
            prices['promo_personal']['promoter_without_facecontrol']['price']['4-5'] = 302.4;
            prices['promo_personal']['promoter_without_facecontrol']['price']['5-6'] = 302.4;
            prices['promo_personal']['promoter_without_facecontrol']['price']['>6'] = 270;
        prices['promo_personal']['promo_consultant'] = new Object();
            prices['promo_personal']['promo_consultant']['name'] = 'Промоутер – консультант';
            prices['promo_personal']['promo_consultant']['price'] = new Object();
            prices['promo_personal']['promo_consultant']['price']['1'] = 378;
            prices['promo_personal']['promo_consultant']['price']['1-2'] = 378;
            prices['promo_personal']['promo_consultant']['price']['2-3'] = 378;
            prices['promo_personal']['promo_consultant']['price']['3-4'] = 324;
            prices['promo_personal']['promo_consultant']['price']['4-5'] = 324;
            prices['promo_personal']['promo_consultant']['price']['5-6'] = 324;
            prices['promo_personal']['promo_consultant']['price']['>6'] = 302.4;
        prices['promo_personal']['promo_typical'] = new Object();
            prices['promo_personal']['promo_typical']['name'] = 'Промоутер - типаж';
            prices['promo_personal']['promo_typical']['price'] = new Object();
            prices['promo_personal']['promo_typical']['price']['1'] = 410.4;
            prices['promo_personal']['promo_typical']['price']['1-2'] = 410.4;
            prices['promo_personal']['promo_typical']['price']['2-3'] = 410.4;
            prices['promo_personal']['promo_typical']['price']['3-4'] = 378;
            prices['promo_personal']['promo_typical']['price']['4-5'] = 378;
            prices['promo_personal']['promo_typical']['price']['5-6'] = 378;
            prices['promo_personal']['promo_typical']['price']['>6'] = 345.6;
        prices['promo_personal']['tasters'] = new Object();
            prices['promo_personal']['tasters']['name'] = 'Дегустаторы';
            prices['promo_personal']['tasters']['price'] = new Object();
            prices['promo_personal']['tasters']['price']['1'] = 378;
            prices['promo_personal']['tasters']['price']['1-2'] = 378;
            prices['promo_personal']['tasters']['price']['2-3'] = 378;
            prices['promo_personal']['tasters']['price']['3-4'] = 324;
            prices['promo_personal']['tasters']['price']['4-5'] = 324;
            prices['promo_personal']['tasters']['price']['5-6'] = 324;
            prices['promo_personal']['tasters']['price']['>6'] = 302.4;
    prices['models'] = new Object(); // цены на "Модели"
        prices['models']['name'] = 'Модели';
        prices['models']['promo_models'] = new Object();
            prices['models']['promo_models']['name'] = 'Промоутеры модельной внешности';
            prices['models']['promo_models']['price'] = new Object();
            prices['models']['promo_models']['price']['1'] = 486;
            prices['models']['promo_models']['price']['1-2'] = 486;
            prices['models']['promo_models']['price']['2-3'] = 486;
            prices['models']['promo_models']['price']['3-4'] = 453.6;
            prices['models']['promo_models']['price']['4-5'] = 453.6;
            prices['models']['promo_models']['price']['5-6'] = 453.6;
            prices['models']['promo_models']['price']['>6'] = 410.4;
        prices['models']['stand_models'] = new Object();
            prices['models']['stand_models']['name'] = 'Стендистки';
            prices['models']['stand_models']['price'] = new Object();
            prices['models']['stand_models']['price']['1'] = 518.4;
            prices['models']['stand_models']['price']['1-2'] = 518.4;
            prices['models']['stand_models']['price']['2-3'] = 518.4;
            prices['models']['stand_models']['price']['3-4'] = 453.6;
            prices['models']['stand_models']['price']['4-5'] = 453.6;
            prices['models']['stand_models']['price']['5-6'] = 453.6;
            prices['models']['stand_models']['price']['>6'] = 410.4;
        prices['models']['hosters'] = new Object();
            prices['models']['hosters']['name'] = 'Хостес';
            prices['models']['hosters']['price'] = new Object();
            prices['models']['hosters']['price']['1'] = 518.4;
            prices['models']['hosters']['price']['1-2'] = 518.4;
            prices['models']['hosters']['price']['2-3'] = 518.4;
            prices['models']['hosters']['price']['3-4'] = 453.6;
            prices['models']['hosters']['price']['4-5'] = 453.6;
            prices['models']['hosters']['price']['5-6'] = 453.6;
            prices['models']['hosters']['price']['>6'] = 410.4;
        prices['models']['standart_models'] = new Object();
            prices['models']['standart_models']['name'] = 'Модели';
            prices['models']['standart_models']['price'] = new Object();
            prices['models']['standart_models']['price']['1'] = 594;
            prices['models']['standart_models']['price']['1-2'] = 594;
            prices['models']['standart_models']['price']['2-3'] = 594;
            prices['models']['standart_models']['price']['3-4'] = 540;
            prices['models']['standart_models']['price']['4-5'] = 540;
            prices['models']['standart_models']['price']['5-6'] = 540;
            prices['models']['standart_models']['price']['>6'] = 518.4;
        prices['models']['catwalk_models'] = new Object();
            prices['models']['catwalk_models']['name'] = 'Модели на подиум';
            prices['models']['catwalk_models']['price'] = new Object();
            prices['models']['catwalk_models']['price']['1'] = 1080;
            prices['models']['catwalk_models']['price']['1-2'] = 1080;
            prices['models']['catwalk_models']['price']['2-3'] = 1080;
            prices['models']['catwalk_models']['price']['3-4'] = 972;
            prices['models']['catwalk_models']['price']['4-5'] = 972;
            prices['models']['catwalk_models']['price']['5-6'] = 972;
            prices['models']['catwalk_models']['price']['>6'] = 756;
        prices['models']['translate_models'] = new Object();
            prices['models']['translate_models']['name'] = 'Модели переводчицы';
            prices['models']['translate_models']['price'] = new Object();
            prices['models']['translate_models']['price']['1'] = 1180;
            prices['models']['translate_models']['price']['1-2'] = 1180;
            prices['models']['translate_models']['price']['2-3'] = 1180;
            prices['models']['translate_models']['price']['3-4'] = 1080;
            prices['models']['translate_models']['price']['4-5'] = 1080;
            prices['models']['translate_models']['price']['5-6'] = 1080;
            prices['models']['translate_models']['price']['>6'] = 972;
    prices['exhibition_staff'] = new Object(); // цены на "Персонал на выставку"
        prices['exhibition_staff']['name'] = 'Персонал на выставку';
        prices['exhibition_staff']['registrars'] = new Object();
            prices['exhibition_staff']['registrars']['name'] = 'Регистраторы';
            prices['exhibition_staff']['registrars']['price'] = new Object();
            prices['exhibition_staff']['registrars']['price']['1'] = 378;
            prices['exhibition_staff']['registrars']['price']['1-2'] = 378;
            prices['exhibition_staff']['registrars']['price']['2-3'] = 378;
            prices['exhibition_staff']['registrars']['price']['3-4'] = 324;
            prices['exhibition_staff']['registrars']['price']['4-5'] = 324;
            prices['exhibition_staff']['registrars']['price']['5-6'] = 324;
            prices['exhibition_staff']['registrars']['price']['>6'] = 302.4;
        prices['exhibition_staff']['consultants'] = new Object();
            prices['exhibition_staff']['consultants']['name'] = 'Консультанты';
            prices['exhibition_staff']['consultants']['price'] = new Object();
            prices['exhibition_staff']['consultants']['price']['1'] = 410.4;
            prices['exhibition_staff']['consultants']['price']['1-2'] = 410.4;
            prices['exhibition_staff']['consultants']['price']['2-3'] = 410.4;
            prices['exhibition_staff']['consultants']['price']['3-4'] = 345.6;
            prices['exhibition_staff']['consultants']['price']['4-5'] = 345.6;
            prices['exhibition_staff']['consultants']['price']['5-6'] = 345.6;
            prices['exhibition_staff']['consultants']['price']['>6'] = 324;
        prices['exhibition_staff']['stand_staff'] = new Object();
            prices['exhibition_staff']['stand_staff']['name'] = 'Стендисты';
            prices['exhibition_staff']['stand_staff']['price'] = new Object();
            prices['exhibition_staff']['stand_staff']['price']['1'] = 410.4;
            prices['exhibition_staff']['stand_staff']['price']['1-2'] = 410.4;
            prices['exhibition_staff']['stand_staff']['price']['2-3'] = 410.4;
            prices['exhibition_staff']['stand_staff']['price']['3-4'] = 345.6;
            prices['exhibition_staff']['stand_staff']['price']['4-5'] = 345.6;
            prices['exhibition_staff']['stand_staff']['price']['5-6'] = 345.6;
            prices['exhibition_staff']['stand_staff']['price']['>6'] = 324;
        prices['exhibition_staff']['exhibition_waiters'] = new Object();
            prices['exhibition_staff']['exhibition_waiters']['name'] = 'Официанты для выставок';
            prices['exhibition_staff']['exhibition_waiters']['price'] = new Object();
            prices['exhibition_staff']['exhibition_waiters']['price']['1'] = 378;
            prices['exhibition_staff']['exhibition_waiters']['price']['1-2'] = 378;
            prices['exhibition_staff']['exhibition_waiters']['price']['2-3'] = 378;
            prices['exhibition_staff']['exhibition_waiters']['price']['3-4'] = 324;
            prices['exhibition_staff']['exhibition_waiters']['price']['4-5'] = 324;
            prices['exhibition_staff']['exhibition_waiters']['price']['5-6'] = 324;
            prices['exhibition_staff']['exhibition_waiters']['price']['>6'] = 302.4;
    prices['supervisors'] = new Object(); // цены на "Супервайзеры"
        prices['supervisors']['name'] = 'Супервайзеры';
        prices['supervisors']['supervisors_without_car'] = new Object();
            prices['supervisors']['supervisors_without_car']['name'] = 'Супервайзеры без авто стационарный';
            prices['supervisors']['supervisors_without_car']['price'] = new Object();
            prices['supervisors']['supervisors_without_car']['price']['1'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['1-2'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['2-3'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['3-4'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['4-5'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['5-6'] = 345;
            prices['supervisors']['supervisors_without_car']['price']['>6'] = 345;
        prices['supervisors']['supervisors_with_car'] = new Object();
            prices['supervisors']['supervisors_with_car']['name'] = 'Супервайзер с авто стационарный';
            prices['supervisors']['supervisors_with_car']['price'] = new Object();
            prices['supervisors']['supervisors_with_car']['price']['1'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['1-2'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['2-3'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['3-4'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['4-5'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['5-6'] = 378;
            prices['supervisors']['supervisors_with_car']['price']['>6'] = 378;
        prices['supervisors']['supervisors_traveling_without_car'] = new Object();
            prices['supervisors']['supervisors_traveling_without_car']['name'] = 'Супервайзер без авто  разъездной';
            prices['supervisors']['supervisors_traveling_without_car']['price'] = new Object();
            prices['supervisors']['supervisors_traveling_without_car']['price']['1'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['1-2'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['2-3'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['3-4'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['4-5'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['5-6'] = 324;
            prices['supervisors']['supervisors_traveling_without_car']['price']['>6'] = 324;
        prices['supervisors']['supervisors_traveling_with_car'] = new Object();
            prices['supervisors']['supervisors_traveling_with_car']['name'] = 'Супервайзер с авто разъездной*';
            prices['supervisors']['supervisors_traveling_with_car']['price'] = new Object();
            prices['supervisors']['supervisors_traveling_with_car']['price']['1'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['1-2'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['2-3'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['3-4'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['4-5'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['5-6'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['price']['>6'] = 432;
            prices['supervisors']['supervisors_traveling_with_car']['hint'] = '*Оплата бензина не включена в стоимость';
    prices['consultants'] = new Object(); // цены на "Консультанты"
        prices['consultants']['name'] = 'Консультанты';
        prices['consultants']['pro_consultant'] = new Object();
            prices['consultants']['pro_consultant']['name'] = 'Профессиональный консультант';
            prices['consultants']['pro_consultant']['price'] = new Object();
            prices['consultants']['pro_consultant']['price']['1'] = 540;
            prices['consultants']['pro_consultant']['price']['1-2'] = 540;
            prices['consultants']['pro_consultant']['price']['2-3'] = 540;
            prices['consultants']['pro_consultant']['price']['3-4'] = 486;
            prices['consultants']['pro_consultant']['price']['4-5'] = 486;
            prices['consultants']['pro_consultant']['price']['5-6'] = 486;
            prices['consultants']['pro_consultant']['price']['>6'] = 432;
        prices['consultants']['consultant'] = new Object();
            prices['consultants']['consultant']['name'] = 'Консультант';
            prices['consultants']['consultant']['price'] = new Object();
            prices['consultants']['consultant']['price']['1'] = 432;
            prices['consultants']['consultant']['price']['1-2'] = 432;
            prices['consultants']['consultant']['price']['2-3'] = 432;
            prices['consultants']['consultant']['price']['3-4'] = 410.4;
            prices['consultants']['consultant']['price']['4-5'] = 410.4;
            prices['consultants']['consultant']['price']['5-6'] = 410.4;
            prices['consultants']['consultant']['price']['>6'] = 378;
    prices['auditors'] = new Object(); // цены на "Аудитор/ тайный покупатель"
        prices['auditors']['name'] = 'Аудиторы';
        prices['auditors']['auditor'] = new Object();
            prices['auditors']['auditor']['name'] = 'Аудитор';
            prices['auditors']['auditor']['price'] = new Object();
            prices['auditors']['auditor']['price']['1'] = 540;
            prices['auditors']['auditor']['price']['1-2'] = 540;
            prices['auditors']['auditor']['price']['2-3'] = 540;
            prices['auditors']['auditor']['price']['3-4'] = 486;
            prices['auditors']['auditor']['price']['4-5'] = 486;
            prices['auditors']['auditor']['price']['5-6'] = 432;
            prices['auditors']['auditor']['price']['>6'] = 432;
        prices['auditors']['secret_shopper'] = new Object();
            prices['auditors']['secret_shopper']['name'] = 'Тайный покупатель';
            prices['auditors']['secret_shopper']['price'] = new Object();
            prices['auditors']['secret_shopper']['price']['1'] = 486;
            prices['auditors']['secret_shopper']['price']['1-2'] = 486;
            prices['auditors']['secret_shopper']['price']['2-3'] = 486;
            prices['auditors']['secret_shopper']['price']['3-4'] = 453.6;
            prices['auditors']['secret_shopper']['price']['4-5'] = 453.6;
            prices['auditors']['secret_shopper']['price']['5-6'] = 432;
            prices['auditors']['secret_shopper']['price']['>6'] = 432;  
    prices['assistants'] = new Object(); // цены на "Помощники"
        prices['assistants']['name'] = 'Помощники';
        prices['assistants']['general_workers'] = new Object();
            prices['assistants']['general_workers']['name'] = 'Разнорабочие*';
            prices['assistants']['general_workers']['price'] = new Object();
            prices['assistants']['general_workers']['price']['1'] = 378;
            prices['assistants']['general_workers']['price']['1-2'] = 378;
            prices['assistants']['general_workers']['price']['2-3'] = 378;
            prices['assistants']['general_workers']['price']['3-4'] = 324;
            prices['assistants']['general_workers']['price']['4-5'] = 324;
            prices['assistants']['general_workers']['price']['5-6'] = 324;
            prices['assistants']['general_workers']['price']['>6'] = 302.4;
            prices['assistants']['general_workers']['hint'] = '* Только для рекламных проектов';
        prices['assistants']['freight'] = new Object();
            prices['assistants']['freight']['name'] = 'Грузчики*';
            prices['assistants']['freight']['price'] = new Object();
            prices['assistants']['freight']['price']['1'] = 432;
            prices['assistants']['freight']['price']['1-2'] = 432;
            prices['assistants']['freight']['price']['2-3'] = 432;
            prices['assistants']['freight']['price']['3-4'] = 378;
            prices['assistants']['freight']['price']['4-5'] = 378;
            prices['assistants']['freight']['price']['5-6'] = 378;
            prices['assistants']['freight']['price']['>6'] = 324;
            prices['assistants']['freight']['hint'] = '* Только для рекламных проектов';
        prices['assistants']['installers'] = new Object();
            prices['assistants']['installers']['name'] = 'Монтажники*';
            prices['assistants']['installers']['price'] = new Object();
            prices['assistants']['installers']['price']['1'] = 378;
            prices['assistants']['installers']['price']['1-2'] = 378;
            prices['assistants']['installers']['price']['2-3'] = 378;
            prices['assistants']['installers']['price']['3-4'] = 324;
            prices['assistants']['installers']['price']['4-5'] = 324;
            prices['assistants']['installers']['price']['5-6'] = 324;
            prices['assistants']['installers']['price']['>6'] = 302.4;
            prices['assistants']['installers']['hint'] = '* Только для рекламных проектов';
        prices['assistants']['inventories'] = new Object();
            prices['assistants']['inventories']['name'] = 'Инвентаризаторы*';
            prices['assistants']['inventories']['price'] = new Object();
            prices['assistants']['inventories']['price']['1'] = 378;
            prices['assistants']['inventories']['price']['1-2'] = 378;
            prices['assistants']['inventories']['price']['2-3'] = 378;
            prices['assistants']['inventories']['price']['3-4'] = 324;
            prices['assistants']['inventories']['price']['4-5'] = 324;
            prices['assistants']['inventories']['price']['5-6'] = 324;
            prices['assistants']['inventories']['price']['>6'] = 302.4;
            prices['assistants']['inventories']['hint'] = '* Только для рекламных проектов';
    prices['growth_dolls'] = new Object(); // цены на "Ростовые куклы"
        prices['growth_dolls']['name'] = 'Ростовые куклы';
        prices['growth_dolls']['growth_doll'] = new Object();
            prices['growth_dolls']['growth_doll']['name'] = 'Ростовая кукла*';
            prices['growth_dolls']['growth_doll']['price'] = new Object();
            prices['growth_dolls']['growth_doll']['price']['1'] = 540;
            prices['growth_dolls']['growth_doll']['price']['1-2'] = 540;
            prices['growth_dolls']['growth_doll']['price']['2-3'] = 486;
            prices['growth_dolls']['growth_doll']['price']['3-4'] = 486;
            prices['growth_dolls']['growth_doll']['price']['4-5'] = 486;
            prices['growth_dolls']['growth_doll']['price']['5-6'] = 432;
            prices['growth_dolls']['growth_doll']['price']['>6'] = 432;
            prices['growth_dolls']['growth_doll']['hint'] = '*Аренда костюма для ростовой куклы не включена в стоимость';
    prices['animators'] = new Object();   // цены на "Аниматоры и ведущие"
        prices['animators']['name'] = 'Аниматоры';
        prices['animators']['host'] = new Object();
            prices['animators']['host']['name'] = 'Ведущий';
            prices['animators']['host']['price'] = new Object();
            prices['animators']['host']['price']['1'] = 1620;      // цены на 1-2 часа
            prices['animators']['host']['price']['1-2'] = 1620;      // цены на 1-2 часа
            prices['animators']['host']['price']['2-3'] = 1620;      // цены на 1-2 часа
            prices['animators']['host']['price']['3-4'] = 1296;      // цены на 3-5 часа
            prices['animators']['host']['price']['4-5'] = 1296;      // цены на 3-5 часа
            prices['animators']['host']['price']['5-6'] = 1296;      // цены на 3-5 часа
            prices['animators']['host']['price']['>6'] = 1080;      // цены на >6 часов
        prices['animators']['pro_animator'] = new Object();
            prices['animators']['pro_animator']['name'] = 'Профессиональный аниматор';
            prices['animators']['pro_animator']['price'] = new Object();
            prices['animators']['pro_animator']['price']['1'] = 1080;
            prices['animators']['pro_animator']['price']['1-2'] = 1080;      
            prices['animators']['pro_animator']['price']['2-3'] = 1080;      
            prices['animators']['pro_animator']['price']['3-4'] = 972;
            prices['animators']['pro_animator']['price']['4-5'] = 972;      
            prices['animators']['pro_animator']['price']['5-6'] = 972;      
            prices['animators']['pro_animator']['price']['>6'] = 918;      
        prices['animators']['animator_for_childs'] = new Object();
            prices['animators']['animator_for_childs']['name'] = 'Аниматор на детский праздник';
            prices['animators']['animator_for_childs']['price'] = new Object();
            prices['animators']['animator_for_childs']['price']['1'] = 810;
            prices['animators']['animator_for_childs']['price']['1-2'] = 810;      
            prices['animators']['animator_for_childs']['price']['2-3'] = 810;      
            prices['animators']['animator_for_childs']['price']['3-4'] = 756;
            prices['animators']['animator_for_childs']['price']['4-5'] = 756;      
            prices['animators']['animator_for_childs']['price']['5-6'] = 756;      
            prices['animators']['animator_for_childs']['price']['>6'] = 702;
    //return prices;
//}

function calculation(){
    $('.calculator p.hint').text("");
    var type = $('.calculator .people_type').val();  
    var sub_type = $('.sub_people_type').val();
    var people_count = $('.calculator .piople + .ress p').text();
    var hours = $('.calculator .hours + .ress p').text();
    var days = $('.calculator .days + .ress p').text();
    var coord = 90;     // оплата кооридинатора, 1 человек/день
    var commission = 15; // Агентская комиссия, %
    var work_day = 0;           ////////////////////////
    $result_el = $('.calculator .price span, .calculator .total h6 span'); // результирующий блок 1
    $result_input = $('.calculator .right .btn [name="price"]'); // поле для записи результата, нужно для отправки на почту
    discount_mkad = discount_action_type = discount_work_cond = discount_action_time = 2;   // скидка за МКАД, Рабочие условия, Тип акции, время подготовки акции
    
    // считаем общую скидку
    discount = 1;
    if ($('.calculator .big_checkbox #check1').prop("checked")){ // МКАД
        discount *= 1 - discount_mkad/100; 
        $('.calculator [name="mkad"]').val("Да");
    }
    else{
        $('.calculator [name="mkad"]').val("Нет");
    }
    if ($('.calculator .action_type #radio1').prop("checked") == false){          //Наличие мед книжки
        discount *= 1 - discount_action_type/100;
    }
    if ($('.calculator .work_cond #radio3').prop("checked")){     //рабочие условия
        discount *= 1 - discount_work_cond/100;
    }
    if ($('.calculator .action_time #radio5').prop("checked")){    //время на подготовку акции
        discount *= 1 - discount_action_time/100;
    }
    
    // выводим начальную инфу в результирующие блоки
    $('.calculator .calc_r_top ul li strong').text(hours); 
    temp_array = new Array("2","3","4","22","23","24");
    caption = (temp_array.indexOf(people_count) != -1) ? caption = ' человека' : caption = ' человек';
    $('.calculator .calc_r_top ul li:first-child').text('');
    $('.calculator .calc_r_top ul li:first-child').append('<strong>' + people_count + '</strong>' + caption);
    //$('.calculator .calc_r_top ul li:last-child strong').text($('.calculator .action_time #radio5').prop("checked") ? $('.calculator .action_time [for="radio5"]').text() : $('.calculator .action_time [for="radio6"]').text());
    var temp_caption = days > 4 ? ' дней' : days == 1 ? ' день' : ' дня';
    $('.calculator .calc_r_top ul li:last-child strong').text(days + temp_caption);
    $('.calculator .hours p').text("Количество рабочих часов");
    var switch_flag = false;
    switch (type) {
        case 'animators':
            type_caption = "Аниматоры и ведущие";
            break;
        case 'supervisors':
            type_caption = "Супервайзеры";
            if ((sub_type == 'supervisors_traveling_without_car') || (sub_type == 'supervisors_traveling_with_car')){
                switch_flag = true;
            }
            break;
        case 'consultants':
            type_caption = "Констультанты";
            break;
        case 'growth_dolls':
            type_caption = "Ростовые куклы";
            break;
        case 'assistants':
            type_caption = "Помощники";
            break;
        case 'auditors':
            type_caption = "Аудиторы";
            switch_flag = true;
            break;
        case 'promo_personal':
            type_caption = "Промо персонал";
            break;
        case 'exhibition_staff':
            type_caption = "Персонал на выставку";
            break;
        case 'models':
            type_caption = "Модели";
            break;
    }
    if (switch_flag){
        //$(".hours input").data("ionRangeSlider").reset({max:30});
        $('.calculator .hours p').text("Количество точек");
        $('.calculator .calc_r_top ul li:nth-child(2)').text('');
        temp_caption = hours > 4 ? ' точек' : hours == 1 ? ' точка' : ' точки';
        $('.calculator .calc_r_top ul li:nth-child(2)').append('<strong>' + hours + '</strong> ' + temp_caption);
    }
    else{
        $('.calculator .hours p').text("Количество рабочих часов");
        $('.calculator .calc_r_top ul li:nth-child(2)').text('');
        $('.calculator .calc_r_top ul li:nth-child(2)').append('<strong>' + hours + '</strong> часовой рабочий день');
    }
    $('.calculator .calc_r_dropdown .item:first-child h5 span').text(type_caption);
    
    //work_day = hours > 4 ? prices[type][2] * hours * discount : prices[type][1] *  hours * discount;    //1 рабочий день 1 чел, руб
    $('.calculator p.hint').text(prices[type][sub_type]['hint']);         
    $.each(prices[type][sub_type]['price'], function(key, value) {      //1 рабочий день 1 чел, руб
        switch(key) {
            case '1':
                if (hours == 1){
                    work_day = value * hours * discount;
                    //console.log(work_day);
                }
                break;
            case '1-2':
                if ((hours > 1) && (hours <= 2)){
                    work_day = value * hours * discount;
                }
                break;
            case '2-3':
                if ((hours > 2) && (hours <= 3)){
                    work_day = value * hours * discount;
                }
                break;
            case '3-4':
                if ((hours > 3) && (hours <= 4)){
                    work_day = value * hours * discount;
                }
                break;
            case '4-5':
                if ((hours > 4) && (hours <= 5)){
                    work_day = value * hours * discount;
                }
                break;
            case '5-6':
                if ((hours > 5) && (hours <= 6)){
                    work_day = value * hours * discount;
                }
                break;
            case '>6':
                if (hours > 6){
                    work_day = value * hours * discount;
                }
                break;
       }
    });
    var temp = Math.round(work_day.toFixed(0));
    $('.calculator .calc_r_dropdown .item:first-child > p').text(temp.toLocaleString() + ' руб./день');
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x1 p.left').text('x' + people_count);
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x1 p.left').append('<span>(человек)</span>');
    work_day_peoples = work_day * people_count;     // 1 рабочий всего кол-вы людей, руб
    var temp = Math.round(work_day_peoples.toFixed(0));
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x1 p.right').text(temp.toLocaleString() + ' руб.');
    summary_work_day = work_day_peoples * days;     // суммарная стоимость всех дней, руб.
    var temp = Math.round(summary_work_day.toFixed(0));
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x2 p.right').text(temp.toLocaleString() + ' руб.');
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x2 p.left').text('x' + days);
    $('.calculator .calc_r_dropdown .item:first-child .line_item.x2 p.left').append('<span>(дней)</span>');
    $('.calculator .calc_r_dropdown .item.x2 > p').text(people_count * coord + ' руб.');
    $('.calculator .calc_r_dropdown .item.x2 .line_item p.left').text('x' + days);
    $('.calculator .calc_r_dropdown .item.x2 .line_item p.left').append('<span>(дней)</span>');
    coordination = coord * people_count * days;     // стоимость оплаты координатора
    $('.calculator .calc_r_dropdown .item.x2 .line_item p.right').text(coordination.toLocaleString() + ' руб.');
    $('.calculator .calc_r_dropdown .item.x3 .line_item p.left').text(commission + ' %');
    $('.calculator .calc_r_dropdown .item.x3 .line_item p.left').append('<span class="help"></span>');
    
    summary_commission = (coordination + summary_work_day) * commission / 100;  // Агентская комиссия
    var temp = Math.round(summary_commission.toFixed(0));
    $('.calculator .calc_r_dropdown .item.x3 .line_item p.right').text(temp.toLocaleString() + ' руб.');
    
    result = summary_commission + coordination + summary_work_day;
    var temp = Math.round(result.toFixed(0));
    $result_el.text(temp.toLocaleString() + ' руб.');
    $result_input.val(Math.round(result.toFixed(0)) + ' руб.');
}

function portfolio_carousel(){
    // $('.portfolio_rd .owl-carousel').owlCarousel({
    //     loop:true,
    //     dots: false,
    //     nav:true,
    //     responsive:{
    //         0:{
    //             items:1,
    //             margin: 0
    //         },
    //         699:{
    //             items:3,
    //             margin:10
    //         }
    //     }
    // });
    $('.owl-carousel').owlCarousel({
        loop:true,
        dots: false,
        nav:true,
        responsive:{
            0:{
                items:1,
                margin: 0
            },
            699:{
                items:3,
                margin:10
            }
        }
    });
    
}
function fancybox_bottom(fb_obj){
    var gallery = $('#gallery');
	gallery.css('opacity','0');
    setTimeout(function(){
    var top = fb_obj.offset().top; 
	var left = fb_obj.offset().left;
	var width = fb_obj.width();
	var height = fb_obj.height();
	//console.log(browseHeight);
	
	gallery.width(width).offset({top:top, left:left}).css('opacity','1');
	}, 1);
}