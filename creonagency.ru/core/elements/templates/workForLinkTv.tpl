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
                          {*  [[-ms2GalleryResources?
                                &limit=`0`
                                &includeTVs=`work_logo`
                                &parents=`2`
                                &resources=`-[[*id]]`
                                &tvPrefix=`` 
                                &showHidden=`1`
                                &tpl=`item_similar_works`
                                &includeOriginal=`1`
                                &sortby=`menuindex`
                                &sortdir=`DESC`
                            ]]*}
                            {$_modx->runSnippet('ms2GalleryResources',[
                                    'parents' => 2,
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
			<aside class="left-sidebar">
                <h3>Промо персонал</h3>
                {$_modx->runSnippet('pdoMenu',[
                        'parents' => '3',
                        'level' => '1',
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
                {include 'file:chunks/promo/promoVideo.tpl'}
                <div class="vidget_vk">
                    {ignore}
				    <script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
                    <!-- VK Widget -->
                    <div id="vk_groups"></div>
                    <script type="text/javascript">
                    VK.Widgets.Group("vk_groups", {mode: 0, width: "255", height: "400", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 71072219);
                    </script>
                    {/ignore}
				</div>
				
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