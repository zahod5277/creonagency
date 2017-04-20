{if $_modx->resource.context_key=='web'}
    {var $listovki = 23}
    {var $anketirovanie = 22}
    {var $personal = 63}
    {var $promoforma = 98}
{elseif $_modx->resource.context_key=='spb'}
    {var $listovki = 2163}
    {var $anketirovanie = 2162}
    {var $personal = 2157}
    {var $promoforma = 1940}
    {else}
{/if}

<div class="promo_wrapper">
    <h4>Возможно, вас заинтересует</h4>
    <ul class="actions-icon">
    	<li><a href="{$listovki|url}"><i></i>Раздача листовок</a></li>
    	<li><a href="{$anketirovanie|url}"><i></i>Анкетирование</a></li>
    	<li><a href="{$personal|url}"><i></i>Персонал на выставку</a></li>
    	<li><a href="{$promoforma|url}"><i></i>Заказать промо форму</a></li>
    </ul>
</div>