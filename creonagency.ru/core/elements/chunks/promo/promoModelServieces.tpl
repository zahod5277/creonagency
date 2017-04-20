{if $_modx->resource.context_key=='web'}
    {var $vistav = 10}
    {var $degust = 19}
    {var $listovki = 23}
    {var $anketir = 22}
    {var $product = 120}
    {var $otherbtl = 20}
{elseif $_modx->resource.context_key=='spb'}
    {var $vistav = 2148}
    {var $degust = 2159}
    {var $listovki = 2163}
    {var $anketir = 2162}
    {var $product = 2167}
    {var $otherbtl = 2160}
    {else}
     {var $parent=$_modx->resource.id}
{/if}

<div class="model_services promo">
    <h5><b>Эта модель</b> может принять участие в: </h5>
    <ul>
        <li><a href="{$vistav|url}">выставках</a></li>
        <li><a href="{$degust|url}">проведении дегустации</a></li>
        <li><a href="{$listovki|url}">раздаче листовок</a></li>
        <li><a href="{$anketir|url}">проведении анкетирования</a></li>
        <li><a href="{$product|url}">продвижении товара</a></li>
        <li><a href="{$otherbtl|url}">и других BTL-акциях</a></li>
    </ul>
</div>