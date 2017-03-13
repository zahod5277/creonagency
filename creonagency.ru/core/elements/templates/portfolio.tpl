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
                                'parents' => '2',
                                'level' => '1',
                                'outerClass' => 'additional_nav',
                                'displayStart' => '1',
                                'hereClass' => 'current',
                                'selfClass' => 'active',
                                'outerTpl' => '@INLINE {$wrapper}',
                                'tplStart' => '@INLINE <li {$classes}><a href="{$link}">Все</a></li>{$wrapper}',
                                'tpl' => '@INLINE <li {$classes}><a href="{$link}">{$menutitle}</a></li>{$wrapper}'
                            ])}
        		        </ul>
    			    </div>
    			    <div class="portfolio_page_wrapper preloader">
                        <div id="pdopage">
                            <div class="rows shapeshift portfolio-parent">
                                 {if $_modx->resource.id==2}
                                    {var $where = '{"class_key":"modDocument"}'}
                                    {else}
                                    {var $where = json_encode([
                                                "parent:="=>"[[*id]]",
                                                "OR:multipleCategories:LIKE" => "%[[*id]]%"
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
                                    
                                {*$_modx->runSnippet('!pdoPage@portfolio',[
                                    'ajaxMode' => 'button',
                                    'ajaxTplMore' => '@INLINE <div class="recall btn-more"><a>Загрузить еще</a></div>',
                                    'showUnpublished' => '0',
                                    'hideContainers' => '1',
                                    'limit' => '9',
                                    'includeTVs' => 'work_logo,logo_white,bg_image,title_work_rd',
                                    'processTVs' => '1',
                                    'includeContent' => '1',
                                    'tvPrefix' => '',
                                    'tpl' => '@FILE:chunks/snippetChanks/workRdTpl.tpl',
                                    'sortby' => '{"publishedon" : "desc", "parent" : "asc"}',
                                    'where' => $where
                                 ])*}
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