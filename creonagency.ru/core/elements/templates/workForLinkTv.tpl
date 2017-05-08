<!DOCTYPE html>
<html>
{if $_modx->resource.context_key=='web'}
    {var $other = 2}
{elseif $_modx->resource.context_key=='spb'}
    {var $other = 1523} 
    {else}
{/if}
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper mobile-background">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <main class="content textedit">
                            <img src="
                                 {$_modx->runSnippet('phpthumbon',[
                                    'input' => $_modx->resource.work_logo,
                                    'options' => '&w=200'
                                ])}
                                 " alt="{$_modx->resource.pagetitle}" style="float:right;margin:22px 0 5px 5px;" />{$_modx->resource.content}
                            <div class="our_work_carousel portfolio_rd">
                                {$_modx->runSnippet('ms2Gallery',[
                                    'resource' => $_modx->resource.id,
                                    'tplOuter' => '@FILE:chunks/snippetChanks/ms2galleryPortfolioOuter.tpl',
                                    'tplRow' => '@FILE:chunks/snippetChanks/galleryPortfolioRow.tpl',
                                    'tplEmpty' => '@INLINE'
                                 ])}
                            </div>
                            <div class="similar_models">
                                <h4>Смотрите также другие проекты</h4>
                                <div class="parent">
                                    {$_modx->runSnippet('ms2GalleryResources',[
                                    'parents' => $other,
                                    'hideContainers' => 1,
                                    'showHidden' => 1,
                                    'limit' => 12,
                                    'includeThumbs' => '120x90,360x270',
                                    'resources' => -$_modx->resource.id,
                                    'tvPrefix' => '',
                                    'includeTVs' => 'work_logo',
                                    'includeOriginal' => 1,
                                    'sortby' => 'publishedon',
                                    'sortdir' => 'DESC',
                                    'where' => '{"class_key:=":"modDocument"}',
                                    'tpl' => '@FILE:chunks/snippetChanks/itemSimilarWorks.tpl'
                                 ])}
                                </div>
                            </div>
                            {include 'file:chunks/forms/formActionOrder.tpl'}
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
