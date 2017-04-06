{if $_modx->resource.context_key=='web'}
    {var $parent = 2}
 {elseif $_modx->resource.context_key=='spb'}
    {var $parent = 1523}
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
			    <div class="porfolio_content">
    			    <div class="portfolio_nav">
    			        <ul class="additional_nav">
                            {$_modx->runSnippet('pdoMenu',[
                                'parents' => $parent,
                                'level' => '1',
                                'outerClass' => 'additional_nav',
                                'displayStart' => '1',
                                'hereClass' => 'current',
                                'selfClass' => 'active',
                                'context' => $_modx->resource.context_key,
                                'outerTpl' => '@INLINE {$wrapper}',
                                'tplStart' => '@INLINE <li {$classes}><a href="{$link}">Все</a></li>{$wrapper}',
                                'tpl' => '@INLINE <li {$classes}><a href="{$link}">{$menutitle}</a></li>{$wrapper}'
                            ])}
        		        </ul>
    			    </div>
    			    <div class="portfolio_page_wrapper preloader">
                        <div id="pdopage">
                            <div class="rows shapeshift portfolio-parent">
                                 {if $_modx->resource.id==$parent}
                                    {var $where = '{"class_key":"modDocument"}'}
                                    {else}
                                    {var $where = json_encode([
                                                "parent:="=>"[[*id]]",
                                                "OR:multipleCategories:LIKE" => "%[[*id]]%",
                                                "context_key:=" => "{$_modx->resource.context_key}"
                                            ])
                                        }
                                {/if}
                                [[!pdoPage@portfolio? 
                                    &ajaxMode=`button`
                                    &hideContainers=`1`
                                    &ajaxTplMore=`@INLINE <div class="recall btn-more"><a>Загрузить еще</a></div>`
                                    &showUnpublished=`0` 
                                    &tpl=`@FILE:chunks/snippetChanks/workRdTpl.tpl` 
                                    &limit=`15` 
                                    &tvPrefix=``
                                    &showLog=`1`
                                    &includeTVs=`work_logo,logo_white,bg_image,title_work_rd,multipleCategories` 
                                    &processTVs=`1` 
                                    &includeContent=`1`
                                    &sortby=`{ "publishedon":"DESC", "parent":"ASC"}`
                                    &where=`{$where}`
                                ]] 
                            </div>
                            
                            [[!+page.nav]]
                        </div>
                    </div>
                    <div class="textedit">
                        {$_modx->resource.content}
                    </div>
                </div>
                
			</div><!-- .container-->
			<div class="clear"></div>
		</div><!-- .width-site-->
	</div><!-- .middle-->
</div><!-- .wrapper -->
{include 'file:chunks/main/footer.tpl'}
</body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">