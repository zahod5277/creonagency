<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper">
            <!--<div class="separator"></div>-->
            {include 'file:chunks/main/headerRd.tpl'}
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <div class="content full_width promo_material">
                            <div class="right_part">
                                <a href="#product_order" class="scroll_to btn_rd_default"><span>
                                        {if $_modx->resource.id==528}
                                            Заказать ростовую куклу
                                        {else}
                                            Заказать промо материал
                                        {/if}
                                        {* [[-*id:is=`528`:then=`Заказать ростовую куклу`:else=`Заказать промо материал`]] *}
                                    </span></a>
                                    {* [[-*parent:is=`220`:then=`[[-$promo_souvenirs_service]]`:else=`[[-$promo_good_promo_service]]`]]*}

                                {if $_modx->resource.parent==220}
                                    {include 'file:chunks/promo/promoSouvenirsService.tpl'}
                                {else}
                                    {include 'file:chunks/promo/promoGoodPromoService.tpl'}
                                {/if}
                            </div>
                            <div class="model_gallery items_list">
                                {if $_modx->resource.parent==220}
                                    {var $ttp = '@FILE:chunks/snippetChanks/productItem.tpl'}
                                {else}
                                    {var $ttp = '@FILE:chunks/snippetChanks/productPromoItem.tpl'}
                                {/if}

                                {$_modx->runSnippet('msProducts',[
                                    'showUnpublished' => 1,
                                    'limit' => 0,
                                    'tpl' => $ttp
                                 ])}

                            </div>
                            <div class="clear"></div>
                            {include 'file:chunks/forms/formProductOrder.tpl'}
                            <div class="textedit">

                                {if $_modx->resource.parent==220}
                                    {include 'file:chunks/promo/promoPriceTable.tpl'}
                                {/if}

                                {$_modx->resource.content}
                            </div>

                        </div>
                    </div><!-- .container-->
                </div>
                <div class="clear"></div>
                <div id="request_form">
                    {include 'file:chunks/forms/requestForm.tpl'}
                </div>
                <!-- .width-site-->
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">