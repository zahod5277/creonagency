<div class="review">
	<div class="block-logo">
		<img src="[[+work_logo:phpthumbon=`w=200&h=200`]]" alt="{$pagetitle} btl agency Creon">
		<h5>Дата проведения: <br/>[[+publishedon:dateRU_nd]] г.</h5>
	</div>
	<div class="block-review">
		<h4>[[+longtitle:default=`[[+pagetitle]]`]]</h4>
		<div class="text">
		    [[+content:strip_tags=``:ellipsis=`460`]]
		    
		    <a href="[[+uri]]" class="open go_to">Читать дальше</a>
		    <div class="clear"></div>
		</div>
		[[ms2Gallery?
	        &resource=`[[+id]]`
            &tplOuter=`ms2gallery_portfolio_outer`
            &tplRow=`gallery_portfolio_row`
            &tplEmpty=`@INLINE `
        ]]
	</div><!-- .review-->
	<div class="clear"></div>
</div>