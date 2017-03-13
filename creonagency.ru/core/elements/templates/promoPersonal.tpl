<!DOCTYPE html>
<html>
{include 'file:chunks/main/head.tpl'}
<body class="page_sidebar">
<div class="wrapper">
{include 'file:chunks/main/headerRd.tpl'}
	<!--<div class="separator"></div>-->
	<div class="middle">
		<div class="width-site">
		    <div class="container">
		        <div class="b_phone_mob visible_mobile hidden_tablet">
    		        <div class="width-site">
    		            <span class=""><a href="tel:{$_modx->config.phone_code|stripString:'('| stripString:')' | stripString:' '} {$_modx->config.phone_number|stripString:'-'}">{$_modx->config.phone_code} <i>{$_modx->config.phone_number}</i></a></span>
    		        </div>
    		    </div>
    		    <div class="link_calc hide_tablet visible_mobile">
    		        <div class="width-site">
    		            <div class="left">
    		                <p><strong>Рассчитайте стоимость услуги</strong><br/>именно для вашего мероприятия</p>
    		            </div>
    		            <div class="right">
    		                <a href="{$_modx->makeUrl(34)}">Калькулятор<br/>стоимости персонала</a>
    		            </div>
    		            <div class="clear"></div>
    		        </div>
    		    </div>
		    </div>
		    <div class="clear"></div>
            {include 'file:chunks/main/breadcrumbs.tpl'}
			<div class="container">
			    
			    <main class="content textedit">
			       {$_modx->resource.content}
                  {*  <!--[[-$promo_service_products]]-->*}
                </main>
			</div><!-- .container-->
			<aside class="left-sidebar">
			    <h3>Промо персонал</h3>
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => $_modx->resource.parent,
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
				{ignore}
				    <script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
                    <div id="vk_groups"></div>
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
				<div class="side_blog">
				    <a href="{$_modx->makeUrl(54)}" class="right">Все статьи</a>
				    <h5>Наш блог</h5>
				    <div class="clear"></div>
				    {$_modx->runSnippet('pdoResources',[
                                    'parents' => '54',
                                    'limit' => '2',
                                    'includeContent' => '1',
                                    'tpl' => '@FILE:chunks/snippetChanks/blogItemSidebar.tpl'
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