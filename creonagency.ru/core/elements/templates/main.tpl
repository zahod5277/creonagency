<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_main">
        <div class="wrapper">
            {include 'file:chunks/main/headerRd.tpl'}
            <div class="middle">
                <div class="photo-block">
                    <div class="hidden">
                        <img src="assets/template/images/model-hover.png" width="215" height="96" alt="" />
                        <img src="assets/template/images/promo-hover.png" width="226" height="103" alt="" />
                        <img src="assets/template/images/action-hover.png" width="250" height="95" alt="" />
                    </div>
                    <div class="width-site">
                        <div class="sliders_block_desktop">
                            <div class="left">
                                <div class="slider_main_rd">
                                    {include 'file:chunks/added/sliderDesktop.tpl'}
                                </div>
                            </div>
                            <div class="right">
                                <div class="slider_port_rd">

                                    <div class="swiper-container">
                                        <!-- Additional required wrapper -->
                                        <div class="swiper-wrapper">
                                            <!-- Slides -->
                                            {$_modx->runSnippet('getImageList',[
                                                'tvname' => 'we_works_main',
                                                'tpl' => 'main_our_projects_rd_tpl',
                                                'limit' => '0',
                                                'docid' => '1'
                                            ])}
                                        </div>
                                        <!-- If we need navigation buttons -->
                                        <div class="swiper-button-prev-custom">
                                            <i class="fa fa-angle-up"></i>
                                        </div>
                                        <div class="swiper-button-next-custom">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="slider_video_rd">
                                    <div class="swiper-container">
                                        <!-- Additional required wrapper -->
                                        <div class="swiper-wrapper">
                                            <!-- Slides -->
                                            {$_modx->runSnippet('getImageList',[
                                                'tvname' => 'video_main',
                                                'tpl' => 'main_video_rd_tpl',
                                                'limit' => '0',
                                                'docid' => '1'
                                            ])}
                                        </div>
                                        <!-- If we need navigation buttons -->
                                        <div class="swiper-button-prev-custom">
                                            <i class="fa fa-angle-up"></i>
                                        </div>
                                        <div class="swiper-button-next-custom">
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                {include 'file:chunks/added/mainSlider.tpl'}
                {include 'file:chunks/added/mainOurProject.tpl'}
                {include 'file:chunks/promo/promoMainServicesRd.tpl'}
                <div class="form-call">
                    <div class="width-site">
                        <div class="call-left">
                            <span>Появились вопросы?</span>
                            <span>хотите рассчитать стоимость?</span>
                            <h4><i></i>Звоните<a class="comagic_phone" href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}"><b>{$_modx->config.phone_code} </b>{$_modx->config.phone_number}</a></h4>
                            <h6>или</h6>
                            <div class="parent">
                                <h5><i></i>оставьте заявку</h5>
                                <p>и наш сотрудник свяжется с вами</p>
                                <p>в ближайшее время</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="call-right">
                            {include 'file:chunks/forms/formCall.tpl'}
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="our-advantages">
                    <div class="width-site">
                        <h4>наши преимущества</h4>
                        <div class="parent">
                            <ul>
                                <li><!--img src="assets/template/images/icon-our-advantages01.png" alt=""--><div id="sprite_icon1"></div><span>Сотрудники с приятной внешностью, прошедшие отбор и подготовку</span></li>
                                <li><!--img src="assets/template/images/icon-our-advantages03.png" alt=""--><div id="sprite_icon3"></div><span>Большая база промо&#8209;персонала</span></li>
                                <li><!--img src="assets/template/images/icon-our-advantages02.png" alt=""--><div id="sprite_icon2"></div><span>Собственная служба контроля качества и подробная отчетность</span></li>
                            </ul>
                            <ul>
                                <li><!--img src="assets/template/images/icon-our-advantages04.png" alt=""--><div id="sprite_icon4"></div><span>Работа по договору</span></li>
                                <li><!--img src="assets/template/images/icon-our-advantages05.png" alt=""--><div id="sprite_icon5"></div><span>Прозрачность отношений на любом этапе сотрудничества</span></li>
                                <li><!--img src="assets/template/images/icon-our-advantages06.png" alt=""--><div id="sprite_icon6"></div><span>Эффективность предоставляемых услуг</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="our-clients" id="ajax-cli">
                </div>	
                <!--div class="container content full_width"-->
                <div class="width-site textedit border-text-block">
                    {$_modx->resource.content}
                </div>
                <!--/div-->
                <div class="clear"></div>
                {include 'file:chunks/forms/requestForm.tpl'}
                {if $_modx->resource.context_key=='web'}
                    <div class="map" id="map">
                        <h4>Ждем вас по адресу</h4>
                        <span>Москва, проспект Маршала Жукова, 4, бизнес-центр &#171;Роспечать&#187;</span>
                        <div class="link"><a href="http://www.creonagency.ru/kontaktyi#map_link">посмотреть на карте</a></div>
                        <br />
                        <div class="ya-map">
                            <script asinc defer="defer" type="text/javascript" charset="utf-8" 
                            src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=-eu0CMR1H_1zFKVdu_Dmy7jU8dxXatEs&width=100%&height=380"></script>
                        </div>
                    </div>
                {/if}
            </div><!-- .middle-->
        </div><!-- .wrapper -->

        {include 'file:chunks/main/footer.tpl'}
        <script type="text/javascript" src="assets/template/js/my.js"></script>

    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">