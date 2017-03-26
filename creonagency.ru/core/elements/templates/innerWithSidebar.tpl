{if $_modx->resource.context_key=='web'}
    {var $calc = 34}
    {var $promopersonal = 3}
    {var $vakansii = 595}
    {elseif $_modx->resource.context_key=='spb'}
    {var $calc = 1059}
    {var $promopersonal = 2146}
    {var $vakansii = 2144}
    {else}
     {var $parent=$_modx->resource.id}
{/if}

<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    <div class="b_phone_mob visible_mobile hidden_tablet">
                        <div class="width-site">
                            <span class=""><a href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}">{$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i></a></span>
                        </div>
                    </div>
                    <div class="link_calc hidden_tablet visible_mobile">
                        <div class="width-site">
                            <div class="left">
                                <p><strong>Рассчитайте стоимость услуги</strong><br/>именно для вашего мероприятия</p>
                            </div>
                            <div class="right">
                                <a href="{$_modx->makeUrl($calc)}">Калькулятор<br/>стоимости персонала</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <main class="content textedit">
                            {$_modx->resource.content}
                            <div class="link_calc variant visible_tablet hidden_mobile">
                                <div class="width-site">
                                    <div class="left">
                                        <p><strong>Рассчитайте стоимость услуги</strong><br/>именно для вашего мероприятия</p>
                                    </div>
                                    <div class="right">
                                        <a href="{$_modx->makeUrl($calc)}">Калькулятор<br/>стоимости персонала</a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
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