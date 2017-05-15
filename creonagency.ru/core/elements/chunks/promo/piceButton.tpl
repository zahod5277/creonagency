{if $_modx->resource.context_key=='web'}
        {var $calc = 34}
    {elseif $_modx->resource.context_key=='spb'}
        {var $calc = 1059}
{/if}
<ul class="additional_nav price_but">
	<li><a href="{$calc|url}" class="btn_rd_default" style="margin:0 auto"><span>Рассчитать подробнее на калькуляторе</span></a></li>    
</ul>