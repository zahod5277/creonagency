{$_modx->runSnippet('!user_referer')}
<head>
    <base href="{$_modx->config.site_url}" />
    <meta charset="utf-8" />
    <title>{if $_modx->resource.meta_title!=''}{$_modx->resource.meta_title}{else}{$_modx->resource.pagetitle}{/if}
        {if $_modx->resource.id == 13}в Москве{/if} | Creon – BTL-агентство полного цикла</title>
    <meta name="cmsmagazine" content="ae8ba650af558ef6ab6e2d287a6b2901" />
    <meta name="description" content="{if $_modx->resource.template == 13}{$_modx->resource.pagetitle} от рекламного агентства «Креон Эдженси» - промоутеры и модели для решения бизнес-задач.{else}{$_modx->resource.meta_description}{/if}" />
    {if $_modx->resource.meta_canonical != ''}
    <link rel="canonical" href="{$_modx->resource.meta_canonical}" />
    {else}
        {if $_modx->resource.id==1}
            {var $url = ''}
        {else}
            {var $url = $_modx->resource.id|url}
        {/if}
    <link rel="canonical" href="{$_modx->config.site_url}{$url}" />
    {/if}
    {include 'file:chunks/main/headScriptsAndVerification.tpl'}
    <script type="text/javascript">
        var __cs = __cs || [];
        __cs.push(["setCsAccount", "DIy_DkaSWk0nzG5HaavThkywKqmhbmkP"]);
        __cs.push(["setCsHost", "//server.comagic.ru/comagic"]);
    </script>
    <script type="text/javascript" async src="//app.comagic.ru/static/cs.min.js"></script>
    <link rel="publisher" href="https://plus.google.com/+%D0%9A%D1%80%D0%B5%D0%BE%D0%BD%D0%AD%D0%B4%D0%B6%D0%B5%D0%BD%D1%81%D0%B8%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0" />
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
    [[!MinifyX?
    &minifyJs=`1`
    &minifyCss=`1`
    &cssSources=`
    assets/template/css/jquery.fancybox.css,
    assets/template/css/owl.carousel.css,
    assets/template/js/ion.rangeslider-2.0.3/ion.rangeslider-2.0.3/css/ion.rangeslider.css,
    assets/template/js/ion.rangeslider-2.0.3/ion.rangeslider-2.0.3/css/normalize.css,
    assets/template/js/ion.rangeslider-2.0.3/ion.rangeslider-2.0.3/css/ion.rangeslider.skinModern.css,
    assets/template/css/calculator.css,
    assets/template/js/swiper_slider/swiper.min.css,
    assets/template/js/jquery_flipster_master/dist/jquery.flipster.min.css,
    assets/template/css/style.font.css,
    assets/template/css/style_adaptive.css,
    assets/template/css/style_redizayn.css,
    assets/template/css/font-awesome-4.4.0/css/font-awesome.min.css
    `
    &jsSources=`
    assets/template/js/jquery-1.11.3.js,
    assets/template/js/jquery-ui-1.10.4.custom.min.js,
    assets/template/js/jquery.shapeshift.min.js,
    assets/template/js/swiper_slider/swiper.jquery.min.js,
    assets/template/js/ion.rangeslider-2.0.3/ion.rangeslider-2.0.3/js/ion-rangeslider/ion.rangeslider.min.js,
    assets/template/js/owl.carousel.min.js,
    assets/template/js/form.js,
    assets/template/js/form_styler/jquery.formstyler.min.js,
    assets/template/js/device.min.js,
    assets/template/js/jquery.jtruncate.pack.js,
    assets/template/js/new_popup.js,
    assets/template/js/tabs.js,
    assets/template/js/jquery_flipster_master/dist/jquery.flipster.min.js,
    assets/template/js/script.js`
    ]]
    <!--link href="assets/template/css/style.font.css" rel="stylesheet"-->
    [[!+MinifyX.css]]
    <!--[if lte IE 10]>
    <link rel="stylesheet" type="text/css" data-page-id="{$_modx->resource.id}" href="assets/template/css/ie.css"/>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
