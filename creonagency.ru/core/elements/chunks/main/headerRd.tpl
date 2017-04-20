{if $_modx->resource.context_key=='web'}
    {var $calc = 34}
{elseif $_modx->resource.context_key=='spb'}
    {var $calc = 1059}
    {else}
     {var $calc=$_modx->resource.id}
{/if}
<header class="header">
    <div class="parent">
        <div class="width-site">
            <div class="b_phone">
                <span class="hidden_mobile">
                    <a class="comagic_phone1" href="tel:{$_modx->config.phone_code} {$_modx->config.phone_number}">
                        {$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i>
                    </a>
                </span>                
                <a href="#popup" class="hidden_mobile fancybox btn_rd_default"><span>Заказать звонок</span></a>
                <a class="visible_mobile btn_phone comagic_phone1" href="tel:{$_modx->config.phone_code}{$_modx->config.phone_number}">
                    {$_modx->config.phone_code}{$_modx->config.phone_number}
                </a>
                <span class="hidden_tablet">пн-пт 9:00-20:00 </span>
                <span class="hidden_tablet">сб-вс 10:00-18:00</span>
            </div>
            <div class="calculate_block_header">
                <h6><b>Рассчитайте стоимость</b> услуги именно для вашего мероприятия</h6>
                <a class="btn_rd_default" href="{$_modx->makeUrl($calc)}"><span>Калькулятор<br/>стоимости персонала</span></a>
            </div>
            <div class="b_logo">
                <i class="cmn-toggle-switch fa-bars cmn-toggle-switch__htx hidden_desktop">
                    <span></span>
                </i>
                <a class="visible_tablet" href="{$_modx->makeUrl(34)}#map_link">Показать на карте</a>
                <article  class="logo">
                    <a href="{$_modx->makeUrl($_modx->config.site_start)}">
                        <img class="hidden_tablet" src="assets/template/images/logo_lg_rd.png" alt="">
                        <img class="visible_tablet visible_mobile [[*id:is=`1`:then=``:else=`inner_page`]]"  src="assets/template/images/logo_01.png" alt="">
                    </a>
                    <h4 class="hidden_tablet slogan">профессиональное btl- агентство</h4>
                    <h4 class="visible_tablet visible_mobile">Профессиональное BTL-агентство</h4>
                </article>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="header_nav">
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '0',
                        'level' => '1'
                    ])}
            </div>
        </div>
    </div>
    <div class="menu_mobile" style="display:none;">
        <div class="top">
            <i class="fa fa-bars"></i>
            <div class="mob_menu_logo">
                <a href="{$_modx->makeUrl($_modx->config.site_start)}">
                    <img class="" src="assets/template/images/logo_01.png" alt="">
                </a>
            </div>
        </div>
        <nav>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => '0',
                        'level' => '1',
                        'tvPrefix' => ''
                    ])}
        </nav>
    </div>
</header><!-- .header-->