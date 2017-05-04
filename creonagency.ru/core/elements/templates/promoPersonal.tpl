<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    <div class="container">
                        <div class="b_phone_mob visible_mobile hidden_tablet">
                            <div class="width-site">
                                <span class=""><a class="comagic_phone1" href="tel:{$_modx->config.phone_code} {$_modx->config.phone_number}">{$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i></a></span>
                            </div>
                        </div>
                        <div class="link_calc hide_tablet visible_mobile">
                            <div class="width-site">
                                <div class="left">
                                    <p><strong>Рассчитайте стоимость услуги</strong><br/>именно для вашего мероприятия</p>
                                </div>
                                <div class="right">
                                    <a href="{$_modx->makeUrl(34)}">Калькулятор<br/>стоимости персонала</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <main class="content textedit">
                            {$_modx->resource.content}
                            {include 'file:chunks/forms/blogSubscribeForm.tpl'}
                        </main>
                    </div><!-- .container-->
                    {include 'file:chunks/main/sidebar.tpl'}
                    <div class="clear"></div>
                </div><!-- .width-site-->
                {include 'file:chunks/forms/requestForm.tpl'}
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">