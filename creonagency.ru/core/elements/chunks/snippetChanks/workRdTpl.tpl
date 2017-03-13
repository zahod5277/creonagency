<div class="portfolio-item">
    <div class="review_rd">
        <div class="review_rd_hide" 
            style="background-image: url('{$_pls['bg_image']|phpthumbon:'w=350&h=232&zc=1&q=80'}');">
            <div class="bg_color"></div>
    	    <div class="review_rd_logo">
    	        <img src="{$_pls['logo_white']}" alt="">
    	    </div>
    	    <h4>
    	        {if $_pls['title_work_rd'] == ''}
					{if $_pls['menutitle'] == ''}
					    {$_pls['pagetitle']}
					{else}
					    {$_pls['menutitle']}
					{/if}
				{/if}
    	    </h4>
    	</div>
    	<div class="review_rd_vsp">
    	    <div class="block-logo_rd">
    		<img src="{$_pls['work_logo']|phpthumbon:'w=100&h=50&q=80'}" alt="">
    		<h5>Дата проведения: <br/> в [[-publishedon:dateRU_nd]]
    		{$_modx->runSnippet('dateRU_nd',[
                        'input' => $_pls['publishedon']
                    ])}
    		
    		г.</h5>
    	</div>
    	<div class="block-review_rd">
    	    <div class="review_rd_title">
    	        В организацию промо-акции вошли следующие услуги:
    	    </div>
    		<div class="review_rd_text">
    		    <ul>
    		        {$_modx->runSnippet('getImageList',[
                        'tvname' => 'list_work_portfolio',
                        'tpl' => 'list_work_tpl',
                        'docid' => $id
                    ])}
    		    </ul>
    		    <a href="{$_pls['uri']}" class="go_to">Подробнее</a>
    		    <div class="clear"></div>
    		</div>
    	</div><!-- .review-->
    	</div>
    	<div class="clear"></div>
    </div>
</div>