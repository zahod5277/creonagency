<!DOCTYPE html>
<html>{include 'file:chunks/main/head.tpl'}

<body class="page_main">
    <div class="wrapper">{include 'file:chunks/main/header.tpl'}
        <div class="middle">
            <div class="photo-block">
                <div class="hidden"> <img src="assets/template/images/model-hover.png" width="215" height="96" alt="" /> <img src="assets/template/images/promo-hover.png" width="226" height="103" alt="" /> <img src="assets/template/images/action-hover.png" width="250" height="95" alt="" /> </div>
                <div class="width-site">
                    <div class="photo-top">
                        <div class="photo-wrap"> <img src="assets/template/images/photo-block01.png" width="479" height="403" alt="">
                            <div class="model-button">
                                <div></div>
                                <div></div> <a href="{$_modx->makeUrl(6)}">Требуются модели?</a> </div>
                        </div>
                        <div class="photo-wrap"> <img src="assets/template/images/photo-block02.png" width="480" height="403" alt="">
                            <div class="promo-button">
                                <div></div>
                                <div></div> <a href="{$_modx->makeUrl(9)}">нужны активные промоутеры?</a> </div>
                        </div>
                        <div class="clear"></div>
                        <div class="photo-bottom"> <img src="assets/template/images/1.png" width="447" height="403" alt="">
                            <div class="action-button">
                                <div></div>
                                <div></div> <a href="{$_modx->makeUrl(20)}">хотите провести промо&#8209;акцию?</a> </div>
                        </div>
                    </div>
                    <div class="photo-content">
                        <div>
                            <h5>Компания CREON</h5>
                            <p>предоставляет опытный временный персонал для проведения мероприятий любого уровня, а также широкий спектр дополнительных услуг</p>
                        </div>
                        <div>
                            <h6><b>Рассчитайте стоимость услуги</b> именно для вашего мероприятия</h6>
                            <div class="calc"> <a href="{$_modx->makeUrl(34)}">Калькулятор стоимости персонала</a> </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="main_slider">
                <div class="parent">
                    <div class="item indx1">
                        <div class="img"> <img src="assets/template/images/main_slide3.png" alt=""> </div>
                        <div class="width-site">
                            <div class="btn_slider"> <a href="{$_modx->makeUrl(20)}">хотите провести<br/>промоакцию?</a> </div>
                        </div>
                    </div>
                    <div class="item indx2">
                        <div class="img"> <img src="assets/template/images/main_slide1.png" alt=""> </div>
                        <div class="width-site">
                            <div class="btn_slider"> <a href="{$_modx->makeUrl(6)}">требуются<br/>модели?</a> </div>
                        </div>
                    </div>
                    <div class="item indx3">
                        <div class="img"> <img src="assets/template/images/main_slide2.png" alt=""> </div>
                        <div class="width-site">
                            <div class="btn_slider"> <a href="{$_modx->makeUrl(9)}">нужны<br/>промоутреты?</a> </div>
                        </div>
                    </div>
                </div>
                <div class="b_phone_mob visible_mobile hidden_tablet">
                    <div class="width-site"> <span class=""><a href="tel:{$_modx->config.phone_code} {$_modx->config.phone_number}">{$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i></a></span> </div>
                </div>
                <div class="link_calc hide_tablet visible_mobile">
                    <div class="width-site">
                        <div class="left">
                            <p><strong>Рассчитайте стоимость услуги</strong>
                                <br/>именно для вашего мероприятия</p>
                        </div>
                        <div class="right"> <a href="{$_modx->makeUrl(34)}">Калькулятор<br/>стоимости персонала</a> </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="text_block ">
                    <div class="width-site">
                        <p><strong>Компания CREON</strong> предоставляет опытный временный персонал для проведения мероприятий любого уровня, а также широкий спектр дополнительных услуг</p>
                    </div>
                </div>
                <div class="link_calc hide_mobile visible_tablet">
                    <div class="width-site">
                        <div class="left">
                            <p><strong>Рассчитайте стоимость услуги</strong>
                                <br/>именно для вашего мероприятия</p>
                        </div>
                        <div class="right"> <a href="{$_modx->makeUrl(34)}">Калькулятор<br/>стоимости персонала</a> </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="main_our_project">
                <div class="width-site">
                    <div class="our_projects">
                        <h3>Наши проекты</h3>
                        <div class="parent"> {$_modx->runSnippet('getImageList',[ 'tvname' => 'we_works_main', 'tpl' => 'main_our_projects_tpl', 'limit' => '0', 'docid' => '1' ])}
                        </div> <a href="{$_modx->makeUrl(2)}">Все проекты</a>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="services">
                <div class="width-site">
                    <h4>наши услуги</h4>
                    <div class="promo">
                        <h5><b>Промо</b> персонал</h5> {$_modx->runSnippet('pdoMenu',[ 'parents' => '3' ])} </div>
                    <div class="organization">
                        <h5><b>Организация</b> и проведение акций</h5>{$_modx->runSnippet('pdoMenu',[ 'parents' => '4' ])} {* [[-pdoMenu?parents=`4`]]*} </div>
                    <div class="service_block blog">
                        <div class="service_wrapper"> <a href="{$_modx->makeUrl(54)}"><h5><b>Наш</b> блог</h5></a>{$_modx->runSnippet('pdoMenu',[ 'parents' => '3', 'resources' => '104,102,101', 'limit' => '3', 'sortdir' => 'desc' ])} </div>
                    </div>
                    <div class="service_block">
                        <div class="service_wrapper"> <a href="{$_modx->makeUrl(58)}"><h5><b>Частые</b> вопросы</h5></a> {$_modx->runSnippet('pdoMenu',[ 'parents' => '58', 'limit' => '3', 'resources' => '59,60,64', 'showUnpublished' => '1', 'sortdir' => 'desc', 'tpl' => '@INLINE
                            <li><a href="{$_modx->makeUrl(58)}#answer-{$id}">{$menutitle}</a>
                            </li>' ])}
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="form-call">
                <div class="width-site">
                    <div class="call-left"> <span>Появились вопросы?</span> <span>хотите рассчитать стоимость?</span>
                        <h4><i></i>Звоните<a class="comagic_phone" href="tel:{$_modx->config.phone_code} {$_modx->config.phone_number}">{$_modx->config.phone_code} <b>{$_modx->config.phone_number}</b></a></h4>
                        <h6>или</h6>
                        <div class="parent">
                            <h5><i></i>оставьте заявку</h5>
                            <p>и наш сотрудник свяжется с вами</p>
                            <p>в ближайшее время</p>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="call-right">{include 'file:chunks/forms/formCall.tpl'} [[-$form_call]] </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="our-advantages">
                <div class="width-site">
                    <h4>наши преимущества</h4>
                    <div class="parent">
                        <ul>
                            <li><img src="assets/template/images/icon-our-advantages01.png" alt=""><span>Сотрудники с приятной внешностью, прошедшие отбор и подготовку</span>
                            </li>
                            <li><img src="assets/template/images/icon-our-advantages03.png" alt=""><span>Большая база промо&#8209;персонала</span>
                            </li>
                            <li><img src="assets/template/images/icon-our-advantages02.png" alt=""><span>Собственная служба контроля качества и подробная отчетность</span>
                            </li>
                        </ul>
                        <ul>
                            <li><img src="assets/template/images/icon-our-advantages04.png" alt=""><span>Работа по договору</span>
                            </li>
                            <li><img src="assets/template/images/icon-our-advantages05.png" alt=""><span>Прозрачность отношений на любом этапе сотрудничества</span>
                            </li>
                            <li><img src="assets/template/images/icon-our-advantages06.png" alt=""><span>Эффективность предоставляемых услуг</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="our-clients">
                <div class="width-site">
                    <div class="clients-wrap">
                        <h4>Нам доверяют</h4>
                        <div class="clients-carousel"> {$_modx->runSnippet('getImageList',[ 'tvname' => 'trust', 'tpl' => 'trust' ])} </div>
                    </div>{include 'file:chunks/certificateMain.tpl'}
                    <div class="reviews-wrap">
                        <h4><a href="{$_modx->makeUrl(412)}">отзывы о нас</a></h4>
                        <div class="owl-carousel-reviews"> {* [[-getImageList? &tvname=`reviews` &tpl=`review_tpl`]] *} </div>
                        <div class="main_page_reviews"> {$_modx->runSnippet('getImageList',[ 'tvname' => 'main_page_review', 'tpl' => 'main_page_reviews_tpl' ])} </div> <a href="{$_modx->makeUrl(412)}" class="btn_variant">Смотреть все отзывы</a>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <!--div class="container content full_width"-->
            <div class="width-site textedit border-text-block">{$_modx->resource.content} </div>
            <!--/div-->
            <div class="clear"></div>{include 'file:chunks/forms/requestForm.tpl'}
            <div class="map" id="map">
                <h4>Ждем вас по адресу</h4> <span>Москва, проспект Маршала Жукова, 4, бизнес-центр &#171;Роспечать&#187;</span>
                <div class="link"><a href="http://www.creonagency.ru/kontaktyi#map_link">посмотреть на карте</a>
                </div>
                <br />
                <div class="ya-map">
                    <script type="text/javascript" async charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=-eu0CMR1H_1zFKVdu_Dmy7jU8dxXatEs&width=100%&height=380"></script>
                </div>
            </div>
        </div>
        <!-- .middle-->
    </div>
    <!-- .wrapper -->{include 'file:chunks/main/footer.tpl'}</body>

</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">