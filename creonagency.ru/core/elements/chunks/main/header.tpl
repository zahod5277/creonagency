<header class="header">
    <div class="parent">
        <div class="width-site">

            <div class="b_phone">
                <span class="hidden_mobile">
                    <a href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}">
                        {$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i>
                    </a>
                </span>
                <a href="#popup" class="hidden_mobile fancybox">Заказать звонок</a>
                <a href="tel:{$_modx->config.phone_code}{{$_modx->phone_number}}" class="visible_mobile btn_phone comagic_phone"></a>

                <span class="hidden_tablet">пн-пт 9:00-20:00 </span>
                <span class="hidden_tablet">сб-вс 10:00-18:00</span>

            </div>
            <div class="b_logo">
                <i class="cmn-toggle-switch fa-bars cmn-toggle-switch__htx hidden_desktop">
                    <span></span>
                </i>
                <a class="visible_tablet" href="{$_modx->makeUrl(8)}#map_link">Показать на карте</a>

                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '0',
                        'level' => '1',
                        'tpl' => '@FILE:chunks/snippetChanks/mainMenuTpl.tpl',
                        'includeTVs' => 'font-size,item-align',
                        'processTVs' => 'font-size,item-align',
                        'tvPrefix' => '',
                        'rowClass' => ''
                    ])}
                <article  class="logo">
                    <a href="{$_modx->makeUrl($_modx->config.site_start)}">
                        <img class="hidden_tablet" src="assets/template/images/logo_jpg.jpg" alt="">
                        <img class="visible_tablet visible_mobile [[*id:is=`1`:then=``:else=`inner_page`]]"  src="assets/template/images/logo_01.png" alt="">
                    </a>
                    <h4 class="hidden_tablet">BTL-агентство<br/>
                        полного цикла</h4>
                    <h4 class="visible_tablet visible_mobile">Профессиональное BTL-агентство</h4>
                </article>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
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