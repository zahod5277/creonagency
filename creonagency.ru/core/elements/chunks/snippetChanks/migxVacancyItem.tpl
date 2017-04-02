{if $_modx->resource.context_key=='web'}
    {var $vakansii = 38}
 {elseif $_modx->resource.context_key=='spb'}
    {var $vakansii = 2145}
    {else}
     {var $vakansii=$_modx->resource.id}
{/if}
<div class="vacancy-item">
    <div class="img">
        <img src="[[+image:phpthumbon=`w=294&h=441&zc=1`]]" alt="[[+title]]" />
        <div class="calc bg-yellow vacancy-more"><a href="{$vakansii|url}" class="">Подробнее</a></div>
    </div>
    <div class="description">
        <div class="description-content">
            <h4 class="title" style="text-align: left;">[[+title]]</h4>
            <p><strong>Возраст: </strong>[[+age]]</p>
            <p><strong>Требования: </strong>[[+requirements]]</p>
            [[+cost:notempty=`<p><strong>Оплата: </strong>[[+cost]]</p>`]]
            <div class="text_edit">
                <p><strong>Описание: </strong></p>
                [[+description]]
            </div>
        </div>
    </div>
</div>