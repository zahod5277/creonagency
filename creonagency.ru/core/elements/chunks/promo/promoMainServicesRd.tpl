{if $_modx->resource.context_key=='web'}
        {var $parents = '4,3,0'}
        {var $promoakzii = '9,119,23,22,20'}
        {var $advSellPoint = '11,21,19,118,13'}
        {var $exh = '63,10,18,12'}
        {var $event = '117,14,15,116'}
    {elseif $_modx->resource.context_key=='spb'}
        {var $parents = '2146,2158'}
        {var $promoakzii = '2168,2147,2160,2163,2162'}
        {var $advSellPoint = '2149,2161,2159,2166,2151'}
        {var $exh = '2157,2148,2156,2150'}
        {var $event = '2165,2152,2153,2164'}
{/if}
<div class="services_rd">
    <div class="width-site">
        <h4>наши услуги</h4>
        <div class="service_block oddblock">
            <div class="service_block_header">
                <h5>Промоакции</h5>
            </div>
            <div class="img">
                <div id="promo1"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => $parents,
                        'resources' => $promoakzii
                    ])}
        </div>
        <div class="service_block">
            <div class="service_block_header">
                <h5>Продвижение в торговых точках</h5>
            </div>
            <div class="img">
                <div id="promo2"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => $parents,
                        'resources' => $advSellPoint
                    ])}
        </div>
        <div class="service_block oddblock">
            <div class="service_block_header">
                <h5>Выставки</h5>
            </div>
            <div class="img">
                <div id="promo3"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => $parents,
                        'resources' => $exh
                    ])}
        </div>
        <div class="service_block">
            <div class="service_block_header">
                <h5>event-мероприятия</h5>
            </div>
            <div class="img">
                <div id="promo4"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => $parents,
                        'resources' => $event
                    ])}
        </div>
        <div class="clear"></div>
    </div>
</div>