<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper mobile-background">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--div class="separator"></div-->
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <div class=" content full_width">
                            <div class="textedit">
                                <h2 style="display: none;">
                                    {if $_modx->resource.longtitle != ''}
                                        {$_modx->resource.longtitle}
                                    {else}
                                        {$_modx->resource.pagetitle}
                                    {/if}
                                </h2>
                                {$_modx->resource.content}
                            </div>
                            <div class="vacancy-wrapper">
                                {$_modx->runSnippet('getImageList',[
                                    'tvname' => 'migx_vacancy',
                                    'tpl' => 'migx_vacancy_item',
                                    'docid' => $_modx->resource.id
                            ])}
                            </div>
                        </div>

                    </div><!-- .container-->
                    <div class="clear"></div>
                </div><!-- .width-site-->
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">