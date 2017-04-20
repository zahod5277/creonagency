{if $_modx->resource.context_key=='web'}
    {var $calc = 34}
    {var $promopersonal = 3}
    {var $vakansii = 595}
    {var $akcii = 4}
    {var $faq = 58}
    {var $reviews = 412}
    {var $blog = 54}
{elseif $_modx->resource.context_key=='spb'}
    {var $calc = 1059}
    {var $promopersonal = 2146}
    {var $vakansii = 2144}
    {var $akcii = 2158}
    {var $faq = 2169}
    {var $reviews = 2186}
    {var $blog = 2217}
    {else}
     {var $parent=$_modx->resource.id}
{/if}
<aside class="left-sidebar">
    <h3>Промо персонал</h3>
    {$_modx->runSnippet('pdoMenu',[
        'parents' => $promopersonal,
        'level' => '1'
    ])}
    {if $_modx->resource.id == 38||$_modx->resource.id == 2145}
    {else}
        <div class="calc bg-yellow"><a href="{$_modx->makeUrl($vakansii)}">Ищешь работу??<br/>Жми!</a></div>
    {/if}
    <br/>
    <h3>Акции</h3>
    {$_modx->runSnippet('pdoMenu',[
        'parents' => $akcii,
        'level' => '1',
        'outerClass' => 'menu_sidebar_bottom'
    ])}
    {include 'file:chunks/promo/promoVideo.tpl'}
    <div class="calc">
        <a href="{$_modx->makeUrl($faq)}">Частые вопросы</a>
    </div>
    {include 'file:chunks/promo/promoGetConsult.tpl'}
    {if $_modx->resource.id == 412||$_modx->resource.id == 2186}
    {else}
        <div class="about sidebar_reviews">
            <a href="{$_modx->makeUrl($reviews)}">Все отзывы</a>
            <h3>Отзывы о нас</h3>
            {$_modx->runSnippet('getImageList',[
            'tvname' => 'main_page_review',
            'tpl' => 'main_page_reviews_tpl',
            'docid' => 1,
            'limit' => '2'
            ])}
        </div>
    {/if}
    <div class="side_blog">
        <a href="{$_modx->makeUrl($blog)}" class="right">Все статьи</a>
        <h5>Наш блог</h5>
        <div class="clear"></div>
        {$_modx->runSnippet('pdoResources',[
            'parents' => $blog,
            'limit' => 2,
            'includeContent' => '1',
            'tpl' => '@FILE:chunks/snippetChanks/blogItemSidebar.tpl'
        ])}
    </div>
</aside><!-- .left-sidebar -->