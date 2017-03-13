<div class="row msearch2" id="mse2_mfilter">
    <div class="left">
        <div class="filters_parent">
    		<form action="" method="post" id="mse2_filters">
    			[[+filters]]
    		</form>
    
    		
    		<!--div>[[-%mse2_limit]]
    			<select name="mse_limit" id="mse2_limit">
    				<option value="10" [[-+limit:is=`10`:then=`selected`]]>10</option>
    				<option value="25" [[-+limit:is=`25`:then=`selected`]]>25</option>
    				<option value="50" [[-+limit:is=`50`:then=`selected`]]>50</option>
    				<option value="100" [[-+limit:is=`100`:then=`selected`]]>100</option>
    			</select>
    		</div-->
    	</div>
    </div>
    <div class="right">
        <a href="#popup_models" class="btn_rd_default fancybox"><span>Оставить заявку</span></a>
    </div>
    <div class="clear"></div>
    <div class="border_block"></div>
	<!--div class="">
		<h3>[[-%mse2_filter_total]] <span id="mse2_total">[[-+total:default=`0`]]</span></h3>

		<div class="row">
			<div id="mse2_sort" class="span5 col-md-5">
				[[-%mse2_sort]]
				<a href="#" data-sort="resource|publishedon" data-dir="[[-+mse2_sort:is=`resource|publishedon:desc`:then=`desc`]]" data-default="desc" class="sort">[[-%mse2_sort_publishedon]] <span></span></a>
			</div>

			[[-+tpls:notempty=`
			<div id="mse2_tpl" class="span4 col-md-4">
				<a href="#" data-tpl="0" class="[[-+tpl0]]">[[-%mse2_chunk_default]]</a> /
				<a href="#" data-tpl="1" class="[[-+tpl1]]">[[-%mse2_chunk_alternate]]</a>
			</div>
			`]]
		</div>

		<div id="mse2_selected_wrapper">
			<div id="mse2_selected">[[-%mse2_selected]]:
				<span></span>
			</div>
		</div-->

		<div id="mse2_results" class="models_list items_list">
			[[+results]]
		</div>

		<div class="pagination">
			<ul id="mse2_pagination">
				[[!+page.nav]]
			</ul>
		</div>

	
</div>