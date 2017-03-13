<!DOCTYPE html>
<html>
{include 'file:chunks/main/head.tpl'}
<body class="page_sidebar">
<div class="wrapper">
    {include 'file:chunks/main/headerRd.tpl'}
	<div class="middle calc_page">
		<div class="width-site">
            {include 'file:chunks/main/breadcrumbs.tpl'}
			<div class="container">
			    <main class="content calculator">
			        {$_modx->resource.content}
                </main>
			</div><!-- .container-->
			<aside class="left-sidebar calc-sidebar">
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => $_modx->resource.parent,
                        'level' => '1'
                    ])}
				<div class="calc bg-yellow">
				 {if $_modx->resource.id == 38}
                    
                    {else}
                    '<div class="calc bg-yellow"><a href="{$_modx->makeUrl(595)}">Ищешь работу?<br/>Жми!</a></div>'
                    {/if}
				</div><br/>
                <h3>Акции</h3>
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4',
                        'level' => '1',
                        'outerClass' => 'menu_sidebar_bottom'
                    ])}
                <div class="side_blog">
				    <a href="{$_modx->makeUrl(54)}" class="right">Все статьи</a>
				    <h5>Наш блог</h5>
				    <div class="clear"></div>
				     {$_modx->runSnippet('pdoResources',[
                                    'parents' => 54,
                                    'limit' => 2,
                                    'includeContent' => '1',
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
                        'docid' => '1',
                        'limit' => '2'
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