<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <main class="content">
                            {include 'file:chunks/promo/promoAdvantagesForPost.tpl'}                            
                            <div class="carousel_uslugi_rd">
                                <ul class="parent">
                                {$_modx->runSnippet('ms2Gallery',[
                                    'resource' => $_modx->resource.id,
                                    'tpl' => '@FILE:chunks/snippetChanks/blogCarousel.row.tpl'
                                 ])}
                                </ul>
                            </div>
                            
                            {if ($_modx->resource.id == 355) || ($_modx->resource.id == 359)|| ($_modx->resource.id == 360) || ($_modx->resource.id == 361) || ($_modx->resource.id == 363) || ($_modx->resource.id == 365)}
                                <h3 class="h3_to_h1">Внимание! Заказы на проведение мероприятий с аниматорами принимаем от 10 000 рублей!</h3>
                            {/if}
                            {if $_modx->resource.show_img == 1}
                                <img src="{$_modx->runSnippet('phpthumbon',[ 
                                'input' => $_modx->resource.img, 
                                'options' => 'w=300&q=100' 
                                ])}" alt="{$_modx->resource.pagetitle}" style="float: left; margin: 0 10px 10px 0;"/>
                            {/if}
                            <div class="textedit">
                                {$_modx->resource.content}
                            </div>
                            {*include 'file:chunks/forms/blogSubscribeForm.tpl'*}
                        </main>
                    </div><!-- .container-->
                    <aside class="left-sidebar">
                        <h3>Промо персонал</h3>
                        {$_modx->runSnippet('pdoMenu',[
                        'parents' => '3',
                        'level' => '1'
                        ])} 
                        <div class="calc bg-yellow">
                            {if $_modx->resource.id != 38}
                                <div class="calc bg-yellow"><a href="{$_modx->makeUrl(595)}">Ищешь работу?<br/>Жми!</a></div>
                            {/if}
                        </div><br/>
                        <h3>Акции</h3>
                        {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4',
                        'level' => '1',
                        'outerClass' => 'menu_sidebar_bottom'
                        ])}
                        <div class="calc">
                            <a href="kalkulyator.html">Калькулятор стоимости персонала</a>
                        </div>
                        {include 'file:chunks/promo/promoVideo.tpl'}
                        <!--div class="vidget_vk">
                            <script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
                        <!-- VK Widget -->
                        <!--div id="vk_groups"></div>
                        {ignore} <script type="text/javascript">
                         VK.Widgets.Group("vk_groups", {mode: 0, width: "255", height: "400", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 71072219);
                         </script>{/ignore}
                                     </div-->
                        <div class="side_blog">
                            <a href="{$_modx->makeUrl(54)}" class="right">Все статьи</a>
                            <h5>Наш блог</h5>
                            <div class="clear"></div>
                            {$_modx->runSnippet('pdoResources',[
                               'parents' => '54',
                                'limit' => '2',
                                'includeContent' => '1'
                               'tpl' => '@FILE:chunks/snippetChanks/blogItemSidebar.tpl'
                             ])}
                        </div>
                        <div class="calc">
                            <a href="{$_modx->makeUrl(58)}">Частые вопросы</a>
                        </div>
                        {include 'file:chunks/promo/promoGetConsult.tpl'}
                        <div class="about sidebar_reviews">
                            <a href="{$_modx->makeUrl(412)}">Все отзывы</a>
                            <h3>Отзывы о нас</h3>
                            {$_modx->runSnippet('getImageList',[
                                'tvname' => 'main_page_review',
                                'tpl' => 'main_page_reviews_tpl',
                                'limit' => '2',
                                'docid' => '1'
                             ])}
                        </div>
                    </aside><!-- .left-sidebar -->
                    <div class="clear"></div>
                </div><!-- .width-site-->
                {include 'file:chunks/forms/requestForm.tpl'}
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">