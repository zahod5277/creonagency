<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <div class="content full_width">
                            {$_modx->runSnippet('ms2Gallery',[
                                    'tplRow' => '@FILE:chunks/ms2Gallery/ms2GalleryRowCustom.tpl',
                                    'tplOuter' => '@FILE:chunks/ms2Gallery/ms2GalleryOuterCustom.tpl',
                                    'tpl' => '',
                                    'frontend_css' => ''
                                 ])}
                            <div class="right_part">
                                <a href="#request_form" class="scroll_to btn_rd_default"><span>Оставить заявку</span></a>
                                <div class="model_data">
                                    <div class="model_data_param">
                                        <span class="param_mame">Имя:</span> {$_modx->resource.pagetitle}
                                    </div>
                                </div>
                                {if $_modx->resource.model_id != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Id:</span> {$_modx->resource.model_id}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.representative != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Представитель:</span> {$_modx->resource.representative}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.date_of_birth != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Дата рождения:</span> {$_modx->resource.date_of_birth}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.an_experience != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Опыт:</span> {$_modx->resource.an_experience}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.height != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Рост:</span> {$_modx->resource.height}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.weight != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Вес:</span> {$_modx->resource.weight}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.clothing_size != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Размер одежды:</span> {$_modx->resource.clothing_size}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.shoe_size != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Размер обуви:</span> {$_modx->resource.shoe_size}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.bust_size != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Размер бюста:</span> {$_modx->resource.bust_size}
                                        </div>
                                    </div>
                                {/if}
                                {if $_modx->resource.bust_volume != ''}
                                    <div class="model_data">
                                        <div class="model_data_param">
                                            <span class="param_mame">Объем груди:</span> {$_modx->resource.bust_volume}
                                        </div>
                                    </div>
                                {/if}
                                    {if $_modx->resource.waist_volume != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Объем талии:</span> {$_modx->resource.waist_volume}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.hips_volume != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Объем бедер:</span> {$_modx->resource.hips_volume}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.face_type != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Тип лица:</span> {$_modx->resource.face_type}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.hair_color != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Цвет волос:</span> {$_modx->resource.hair_color}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.eye_color != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Цвет глаз:</span> {$_modx->resource.eye_color}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.hair_length != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Длина волос:</span> {$_modx->resource.hair_length}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.english != ''}
                                        <div class="model_data">
                                            <div class="model_data_param">
                                                <span class="param_mame">Английский:</span> {$_modx->resource.english}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $_modx->resource.parent == 389}
                                    {else}
                                        {if $_modx->resource.id == 28}
                                            {include 'file:chunks/promo/promoModelServieces.tpl'}
                                        {else}
                                            {include 'file:chunks/promo/modelServieces.tpl'}
                                        {/if}
                                    {/if}

                                </div>
                                <div class="clear"></div>
                                <div class="similar_models">
                                    <h4>Другие модели</h4>
                                    <div class="parent">
                                {$_modx->runSnippet('pdoResources',[
                                    'parents' => $_modx->resource.parent,
                                    'limit' => 0,
                                    'resources' => -$_modx->resource.id,
                                    'tvPrefix' => '',
                                    'includeTVs' => 'model_photo',
                                    'showHidden' => '0',
                                    'tpl' => '@FILE:chunks/snippetChanks/itemSimilarModels.tpl'
                                 ])}
                                    </div>
                                </div>
                                <div class="textedit">
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