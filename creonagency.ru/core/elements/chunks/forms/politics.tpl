{if $_modx->resource.context_key=='web'}
    {var $politics = 2202}
    {else}
    {var $politics = 2203}
{/if}

<p class="politics firstPolitics">
    <small>Ваши данные не будут переданы третьим лицам</small>
</p>
<p class="politics">
    <small>
        <a target="_blank" href="{$politics|url}" title="Политика конфиденциальности">подробнее о политике конфиденциальности</a>
    </small>
</p>