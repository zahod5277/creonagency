{if $_modx->resource.context_key=='web'}
    {var $parent = 6}
    {var $girls = 29}
    {elseif $_modx->resource.context_key=='spb'}
    {var $parent = 1727}
    {var $girls = 1728}
    {else}
    {var $parent=''}
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
			        <div class="portfolio_nav models">
			            <ul class="additional_nav">
                            {$_modx->runSnippet('pdoMenu',[
                                'parents' => $parent,
                                'tpl' => 'INLINE <option {$classes} value="{$link}">{$menutitle}</option>{$wrapper}',
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
			        
			        <div class="mob_filter_nav">
                        <select class="additional_nav">
                            {$_modx->runSnippet('pdoMenu',[
                                'parents' => $parent,
                                'level' => '1',
                                'outerClass' => 'additional_nav',
                                'displayStart' => '1',
                                'hereClass' => 'current',
                                'selfClass' => 'active',
                                'outerTpl' => 'INLINE {$wrapper}',
                                'tplStart' => 'INLINE <option {$classes} value="{$link}">Все</option>{$wrapper}',
                                'tpl' => 'INLINE <option {$classes} value="{$link}">{$menutitle}</option>{$wrapper}'
                            ])}
    			        </select>
                    </div>

                {include 'file:chunks/snippetChanks/filterModels.tpl'}
    				
                    <div class="textedit">
                        {include 'file:chunks/promo/promoAdvantagesForCatalog.tpl'}
                        
                        {if ($_modx->resource.id == $parent) || ($_modx->resource.id == $girls)}
                            <h2>{$_modx->resource.pagetitle}</h2>
                            {/if}
                        
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