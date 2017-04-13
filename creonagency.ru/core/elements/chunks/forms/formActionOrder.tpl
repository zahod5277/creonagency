<div class="wrap-popup variant_form" style="display:block;" id="form_realize">
	<form action="{$_modx->resource.id}" method="post" class="sendLead" data-id="form_action_order">
		<!--
		<span>Агентство Creon более 10 лет на рынке BTL! Мы организуем промо акцию любой сложности!</span>
		-->
		<span>
		    Поможем реализовать Ваше мероприятие
		</span>
		<div class="two_col">
		    <div>
        		<input name="name" type="text" placeholder="Как вас зовут?" />
        		<input name="phone" type="text" placeholder="Ваш номер телефона" class="required" data-type="phone" />
        		<input name="email" type="text" placeholder="E-mail" data-type="email" />
                        {include 'file:chunks/forms/politics.tpl'}
		    </div>
		    <div>
		        <a href="assets/template/images/source/0hbGMcKa7FA.jpg" class="fancybox"><img src="assets/template/images/shtamp.png" alt=""></a>
		    </div>
		</div>
		
		<input type="text" name="lastname" />
		<input type="hidden" name="type" value="Заявка на заказ акции" />
		<button>
		    Оставить заявку
		</button>
	</form>
</div>