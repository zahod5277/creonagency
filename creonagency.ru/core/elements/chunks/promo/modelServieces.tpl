{if $_modx->resource.context_key=='web'}
    {var $vistav = 10}
    {var $horeca = 116}
    {var $event = 117}
    {var $product = 120}
    {var $otherbtl = 20}
{elseif $_modx->resource.context_key=='spb'}
    {var $vistav = 2148}
    {var $horeca = 2164}
    {var $event = 2165}
    {var $product = 2167}
    {var $otherbtl = 2160}
    {else}
     {var $parent=$_modx->resource.id}
{/if}
<div class="model_services promo">
    <h5>[[*parent:is=`198`:then=`<b>Модель</b> может принять участие в:`:else=`<b>Эта модель</b> может принять участие в:`]]</h5>
    <ul>
        <li><a href="{$vistav|url}">выставках</a></li>
        <li><a href="{$product|url}">продвижении товара</a></li>
        <li><a href="{$horeca|url}">акциях HORECA</a></li>
        <li><a href="{$event|url}">event маркетинг</a></li>
        <li><a href="{$otherbtl|url}">и других BTL-акциях</a></li>
    </ul>
</div>