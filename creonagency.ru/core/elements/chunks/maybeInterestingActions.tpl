{if $_modx->resource.context_key=='web'}
    {var $listovki = 23}
    {var $booking = 2185}
    {var $personal = 9}
    {var $promoforma = 98}
{elseif $_modx->resource.context_key=='spb'}
    {var $listovki = 2163}
    {var $booking = 2185}
    {var $personal = 2147}
    {var $promoforma = 1940}
    {else}
{/if}

<div class="action_wrapper">
    <h4>Возможно, вас заинтересует</h4>
    <ul class="actions-icon">
    	<li><a href="{$_modx->makeUrl($personal)}"><i></i>промоутеры</a></li>
    	<li><a href="{$_modx->makeUrl($promofoma)}"><i></i>заказать промо форму</a></li>
    	<li><a href="{$_modx->makeUrl($listovki)}"><i></i>заказать листовки</a></li>
    	<li><a href="{$_modx->makeUrl($booking)}"><i></i>букинг под ключ</a></li>
    </ul>
</div>