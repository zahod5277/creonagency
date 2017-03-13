<div id="product_order" class="wrap-popup show">
	<form action="{$_modx->resource.id}" method="post" class="sendLead" data-id="product_order">
		<span>{*[[-*id:is=`528`:then=`Заказать ростовую куклу`:else=`Заказать промо материал`]]*}
		{if $_modx->resource.id == 528}
					Заказать ростовую куклу
				{else}
					Заказать промо материал
				{/if}
		</span>
		<div class="clear"></div>
		<input name="name" type="text" placeholder="Как вас зовут?" />
		<input name="phone" type="text" placeholder="Ваш номер телефона" class="required" data-type="phone" />
		<input type="text" name="lastname" />
		<input type="hidden" name="type" value="Заказ промо материала" />
		<button>Заказать</button>
	</form>
</div>