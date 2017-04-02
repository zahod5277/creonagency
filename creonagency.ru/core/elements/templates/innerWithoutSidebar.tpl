{if $_modx->resource.context_key=='web'}
    {var $about = 5}
    {var $contacts = 8}
    {elseif $_modx->resource.context_key=='spb'}
    {var $about = 855}
    {var $contacts = 2143}
    {else}
{/if}
{if $_modx->resource.id==$contacts||$_modx->resource.id==$about}
    {var $background = ' mobile-background'}
{/if}
<!DOCTYPE html>
<html>
{include 'file:chunks/main/head.tpl'}
<body class="page_sidebar">
<div class="wrapper{$background}">
    {include 'file:chunks/main/headerRd.tpl'}
	<!--<div class="separator"></div>-->
	<div class="middle">
		<div class="width-site">
            {include 'file:chunks/main/breadcrumbs.tpl'}
			<div class="container  ">
			    <div class="content full_width">
    			    <div class="textedit">
    			        {$_modx->resource.content}
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
