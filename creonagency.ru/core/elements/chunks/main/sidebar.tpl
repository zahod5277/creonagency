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
    <div class="calc">
        <a href="{$_modx->makeUrl($faq)}">Частые вопросы</a>
    </div>
    {include 'file:chunks/promo/promoGetConsult.tpl'}
</aside><!-- .left-sidebar -->