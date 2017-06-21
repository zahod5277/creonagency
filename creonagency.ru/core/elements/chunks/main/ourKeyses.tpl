{if $_modx->resource.context_key=='web'}
    {var $resources = '775,851,2250,2251,80,576,2249,837,630,807,2222,2205,840,846,816'}
    {var $parents = '2'}
    {elseif $_modx->resource.context_key=='spb'}
    {var $resources = '1587,1617,2260,2252,1677,1628,2254,1611,1620,2255,2257,2258,2256,1614,1598'}
    {var $parents = '1523'}
{/if}
<div class="services_rd">
    <div class="width-site">
        <div class="our-promo-title">
            <h4>Наши промо-акции</h4>
        </div>
        <div class="our-promo-title">
            <p><i class="our-promo-zoom"></i><a href="{'2'|url}">Смотреть все 187 проектов</a></p>
        </div>
        <div class="our-promo">
            {$_modx->runSnippet('!pdoResources',[
                'parents' => $parents,
                'where' => '{"keys_sort:!=":""}',
                'sortby' => 'keys_sort',
                'sortdir' => 'ASC',
                'limit' => 15,
                'includeTVs' => 'keys_white_logo,bg_image,keys_sort',
                'processTVs' => 1,
                'prepareTVs' => 1,
                'tpl' => '@FILE:chunks/main/ourPromo.row.tpl'
            ])}
        </div>
    </div>
</div>