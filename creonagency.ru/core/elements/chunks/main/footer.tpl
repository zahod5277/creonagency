{if $_modx->resource.context_key=='web'}
    {var $adress='<p>
                    <span itemprop="addressRegion" >Россия</span>,
                    <span itemprop="addressLocality"> Москва</span>,
                    <span itemprop="streetAddress">пр. Маршала Жукова, 4</span>
                    <span>БЦ «Роспечать»</span>
                </p>'}
{/if}
<footer class="footer">
    <div class="width-site">
        <div class="b_one">
            <div id="footer_description" itemscope itemtype="http://schema.org/Organization"> 
                <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress" style="margin-left: 0;">
                    <a href="{if $_modx->resource.id != $_modx->config.site_start}{$_modx->makeUrl($_modx->config.site_start)}{/if}">
                        <img src="assets/template/images/logo_02.png" alt="">
                    </a>
                    {$adress}
                </div>
                <p class="hidden_mobile">&#169; 2010 — {''|date:'Y'}</p>
                <p class="hidden_mobile" itemprop="name">Рекламное агентство &#171;Креон&#187;</p>
                <p>
                    <a href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}">
                        <span itemprop="telephone">{$_modx->config.phone_code} {$_modx->config.phone_number}</span>
                    </a>
                </p>
                <a href="mailto:info@creonagency.ru">info@creonagency.ru</a>
                <a class="hidden_mobile sitemapLink" href="{$_modx->makeUrl(83)}">Карта сайта</a>
            </div>
        </div>
        <div class="b_two">
            <h3>Услуги</h3>
            <ul class="footer_list">
                <li><a href="promouteri-dlya-reklami.html">Промоутеры в Москве</a></li>
                <li><a href="promo-personal-na-vyistavku.html">Промо персонал</a></li>
                <li><a href="promo-modeli-na-vyistavku.html">Промо модели</a></li>
                <li><a href="rostovyie-kuklyi.html">Ростовые куклы</a></li>
                <li><a href="animatoryi.html">Аниматоры</a></li>
                <li><a href="auditor.html">Тайный покупатель</a></li>
                <li><a href="drugoj-personal.html">Персонал для мероприятий</a></li>
                <li><a href="sempling.html">Сэмплинг</a></li>
                <li><a href="lifleting-osobennosti-organizaczii.html">Лифлетинг</a></li>
                <li><a href="anketirovanie.html">Проведение опросов</a></li>
            </ul>
        </div>
        <div class="b_three">
            <h3>Акции</h3>
            <ul class="footer_list">
                <li><a href="promo-materialyi.html">Промо материалы</a></li>
                <li><a href="btl-akcii.html">BTL акции</a></li>
                <li><a href="event-marketing.html">Event маркетинг</a></li>
                <li><a href="degustacziya.html">Дегустация</a></li>
                <li><a href="podarok-za-pokupku.html">Подарок за покупку</a></li>
                <li><a href="rasprostranenie-listovok-u-metro.html">Раздача у метро</a></li>
                <li><a href="sales-promotion.html">Стимулирование продаж</a></li>
                <li><a href="akczii-dlya-prodvizheniya-tovara-v-magazine.html">Продвижение товара</a></li>
                <li><a href="akczii-horeca.html">Акции Horeca</a></li>
                <li><a href="razdacha-listovok.html">Распространение листовок</a></li>
            </ul>
        </div>
        <div class="b_four">
            <h3>Модели</h3>
            <ul class="footer_list">
                <li><a href="katalog-modelej.html">Фотомодели Москвы</a></li>
                <li><a href="top-modeli.html">Топ модели</a></li>
                <li><a href="fotomodeli-muzhchinyi.html">Фотомодели мужчины</a></li>
                <li><a href="modeli-deti.html">Дети фотомодели</a></li>
            </ul>
            <h3 class="col_4"><a href="blog.html ">Блог</a></h3>
            <p class="b_soc_hdr" style="margin:15px 0 5px 0px;font-size:15px;">Следите за нами в соц.сетях</p>
            <a target="_blank" class='social' href="https://vk.com/creonagency">
                <img src="assets/images/resources/38/share_link_vk.png" alt="альтернативный текст">
            </a>
            <a target="_blank"  class='social' href="https://www.facebook.com/creonagency">
                <img src="assets/images/resources/38/share_link_fb.png" alt="альтернативный текст">
            </a>
            <a target="_blank"  class='social'  href="https://instagram.com/creonagency/">
                <img src="assets/images/resources/38/share_link_inst.png" alt="альтернативный текст">
            </a>
            <a target="_blank" class='social' href="https://twitter.com/creonagency ">
                <img src="assets/images/resources/38/share_link_twitter.png" alt="альтернативный текст">
            </a>
            <a target="_blank" class='social' href="https://plus.google.com/+%D0%9A%D1%80%D0%B5%D0%BE%D0%BD%D0%AD%D0%B4%D0%B6%D0%B5%D0%BD%D1%81%D0%B8%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0/about">
                <img src="assets/images/resources/38/share_link_g_plus.png" alt="Google +">
            </a>
        </div>
    </div>

</footer><!-- .footer -->

<div class="hidden">
    <div id="success">
        <h2>
            Ваша заявка принята! Мы скоро с Вами свяжемся.<br/>
            Вы можете рассчитать стоимость персонала с помощью нашего <a href="[[~34]]">калькулятора</a>
        </h2>
    </div>
    <div id="success_calc">
        <h2>
            Ваша заявка принята! Мы скоро с Вами свяжемся.
        </h2>
    </div>
    <div id="loading">
        <div id="load"></div>
    </div>
</div>

<div id="gallery">
    <div class="right">
        <span>{$_modx->config.phone_code} {$_modx->config.phone_number}</span><br/>
        <a href="#popup" data-fancybox-group="group" class="fancybox">Заказать звонок</a>
    </div>
    <div class="clear"></div>
</div>

{include 'file:chunks/forms/formPopupCall.tpl'}
{include 'file:chunks/forms/formGetConsult.tpl'}

<div style="display:none;">
    <div id="popup_models">
        <div class="form-call popup_models">
            <div class="width-site">
                <div class="call-left">
                    <span>Появились вопросы?</span>
                    <span>хотите рассчитать стоимость?</span>
                    <h4><i></i>Звоните <a class="comagic_phone" href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}">
                            <b>{$_modx->config.phone_code} </b>
                            {$_modx->config.phone_number}</a></h4>
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
    </div>
</div>

[[+MinifyX.javascript]]

<script src="assets/template/js/jquery.fancybox_v3.js" type="text/javascript"></script>
<div class="plashka" style="display:none;">
    <div class="width-site">
        <div class="top">
            <i class="cmn-toggle-switch fa-bars cmn-toggle-switch__htx hidden_desktop">
                <span></span>
            </i>
            <a href="tel: {$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}"

               class="right btn_phone"></a>
            <div class="mob_menu_logo">
                <a href="{$_modx->makeUrl($_modx->config.site_start)}">
                    <img class="" src="assets/template/images/logo_01.png" alt="">
                </a>
            </div>
        </div>
    </div>
    <nav style="display:none;">
        {$_modx->runSnippet('pdoMenu',[
                        'parents' => '0',
                        'level' => '1',
                        'tvPrefix' => ''
                    ])}
    </nav>
</div>
{ignore}
<script>
    !function (f, b, e, v, n, t, s){ if(f.fbq)return;n=f.fbq=function(){ n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments) };if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s) }(window,
            document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '988357327966572'); // Insert your pixel ID here.
    fbq('track', 'PageView');
</script>
<noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=988357327966572&ev=PageView&noscript=1"/>
</noscript>
{/ignore}
{if $_modx->resource.context_key=='web'}
    {include 'file:chunks/regional/msk/metriks.tpl'}
{elseif $_modx->resource.context_key=='spb'}
    {include 'file:chunks/regional/spb/metriks.tpl'}
{/if}
