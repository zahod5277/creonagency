{if $_modx->resource.service_adv_title==''}
    {var $serviceAdvTitle = 'Преимущества услуги'}
    {else}
    {var $serviceAdvTitle = $_modx->resource.service_adv_title}   
{/if}
<div class="promo_advantages">
    <div class="title">{$_modx->resource.service_adv_title}</div>
    <div class="parent">
        [[getImagelist?
            &docid=`10`
            &tpl=`promo_advantages_for_usluga_tpl`
            &tvname=`promo_advantages_for_usluga`
        ]]
    </div>
    <div class="title_bottom">[[+title_bottom]]</div>
    <a href="#popup_models" class="btn_rd_default fancybox"><span>Связаться с нами</span></a>
</div>