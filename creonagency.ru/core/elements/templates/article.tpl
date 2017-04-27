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