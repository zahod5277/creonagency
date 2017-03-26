<!DOCTYPE html>
<html>
    {include 'file:chunks/main/head.tpl'}
    <body class="page_sidebar">
        <div class="wrapper mobile-background">
            {include 'file:chunks/main/headerRd.tpl'}
            <!--<div class="separator"></div>-->
            <div class="middle">
                <div class="width-site">
                    {include 'file:chunks/main/breadcrumbs.tpl'}
                    <div class="container">
                        <main class="content textedit">
                            {$_modx->resource.content}
                        </main>
                    </div><!-- .container-->
                    {include 'file:chunks/main/sidebar.tpl'}
                    <div class="clear"></div>
                </div><!-- .width-site-->

                {if $_modx->resource.id != 38}
                    {include 'file:chunks/forms/requestForm.tpl'}
                {/if}
            </div><!-- .middle-->
        </div><!-- .wrapper -->
        {include 'file:chunks/main/footer.tpl'}
    </body>
</html>
<link href="assets/template/css/style.font.css" rel="stylesheet">