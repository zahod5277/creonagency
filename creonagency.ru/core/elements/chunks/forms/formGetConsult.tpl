<div id="popup_get_consult" class="wrap-popup">
	<form action="{$_modx->resource.id}" method="post" class="sendLead" data-id="form_get_consult">
		<span>Оставить заявку</span>
		<input name="name" type="text" placeholder="Как вас зовут?" />
		<input name="phone" type="text" placeholder="Ваш номер телефона*" class="required" data-type="phone" />
		<input name="email" type="text" placeholder="E-mail" data-type="email" />
		<input type="text" name="lastname" />
		<input type="hidden" name="type" value="Получение консультации по организации промо-акции" />
		<button>Перезвоните мне</button>
	</form>
</div>