<!DOCTYPE html>
<html>
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
			        {$_modx->resource.content}
                </main>
			</div><!-- .container-->
			<aside class="left-sidebar">
			    <h3>Промо персонал</h3>
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '3',
                        'level' => '1'
                    ])}
				{if $_modx->resource.id != 38}
                    <div class="calc bg-yellow"><a href="{$_modx->makeUrl(595)}">Ищешь работу?<br/>Жми!</a></div>
                    {/if}
				<br/>
                <h3>Акции</h3>
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4',
                        'level' => '1',
                        'outerClass' => 'menu_sidebar_bottom'
                    ])}
                
				{include 'file:chunks/promo/promoVideo.tpl'}
				<!-- VK Widget 
				<div class="vidget_vk">
				    <script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
                    <div id="vk_groups"></div>
                    {ignore}
                    <script type="text/javascript">
                    VK.Widgets.Group("vk_groups", {mode: 0, width: "255", height: "400", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 71072219);
                    </script>
                    {/ignore}
				</div>
				-->
				<div class="calc">
				    <a href="{$_modx->makeUrl(58)}">Частые вопросы</a>
				</div>
				{include 'file:chunks/promo/promoGetConsult.tpl'}
				
				{if $_modx->resource.id != 5}
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
				{/if}
       
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
                
		    </aside><!-- .left-sidebar -->
		<div class="clear"></div>
		</div><!-- .width-site-->

		{if $_modx->resource.id != 38}
                {include 'file:chunks/forms/requestForm.tpl'}
                {/if}
	</div><!-- .middle-->
</div><!-- .wrapper -->
{include 'file:chunks/main/footer.tpl'}
</body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">