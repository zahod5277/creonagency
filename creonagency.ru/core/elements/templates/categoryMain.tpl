{if $_modx->resource.context_key=='web'}
    {var $parent = 119}
    {if $_modx->resource.id==$parent}
        {var $promo = '[[$promo_advantages_for_usluga? &title_bottom=`Для ребят из нашей команды не существует невыполнимых задач!`]]'}
    {/if}
{elseif $_modx->resource.context_key=='spb'}
    {var $parent = 1939}
    {if $_modx->resource.id==$parent}
        {var $promo = '[[$promo_advantages_for_usluga? &title_bottom=`Для ребят из нашей команды не существует невыполнимых задач!`]]'}
    {/if}
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
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <div class="content full_width">
                            {$promo}
                            <ul class="additional_nav">                                    
                                {$_modx->runSnippet('pdoMenu',[
                                'parents' => $parent,
                                'level' => '1',
                                'showHidden' => '0',
                                'showUnpublished' => '0',
                                'displayStart' => '1',
                                'hereClass' => 'current',
                                'context' => $_modx->resource.context_key,
                                'selfClass' => 'active',
                                'outerTpl' => '@INLINE {$wrapper}',
                                'tplStart' => '@INLINE <li {$classes}><a href="{$link}">Все</a></li>{$wrapper}',
                                'outerClass' => 'additional_nav'
                            ])}
                            </ul>
                            <div class="models_list items_list" id="pdopage">
                                <div class="rows">
                                    {if $_modx->resource.id==$parent}
                                        {var $sortby = 'sort'}
                                    {else}
                                        {var $sortby = 'menuindex'}
                                    {/if}

                                    {var $where = '{"template:=":"39"}'}
                                    {$_modx->runSnippet('!pdoPage',[
                                'elements' => 'msProducts',
                                'ajaxMode' =>'button',
                                'ajaxTplMore' =>'@INLINE <div class="recall btn-more"><a>Загрузить еще</a></div>'
                                'tpl' => '@FILE:chunks/snippetChanks/categoryItem.tpl',
                                'limit' => '15',
                                'includeTVs' => 'model_photo,sort',
                                'processTVs' => 'model_photo',
                                'tvPrefix' => '',
                                'where' => $where,
                                'depth' => '2',
                                'showUnpublished' => 0,
                                'sortby' => $sortby,
                                'context' => $_modx->resource.context_key,
                                'sortdir' => 'DESC'
                            ])}
                                </div>
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                            <div class="textedit">
                                {$_modx->resource.content}
                            </div>

                        </div>
                        <div class="clear"></div>
                    </div><!-- .container-->
                </div><!-- .width-site-->
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">