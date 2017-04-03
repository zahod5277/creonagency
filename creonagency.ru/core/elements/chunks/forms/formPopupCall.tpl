<div id="popup" class="wrap-popup">
    <form action="{$_modx->resource.id}" method="post" class="sendLead" data-id="form_popup_call">
        <span>Заказать звонок</span>
        <input name="name" type="text" placeholder="Как вас зовут?" />
        <input name="phone" type="text" placeholder="Ваш номер телефона" class="required" data-type="phone" />
        <input type="text" name="lastname" />
        <input type="hidden" name="type" value="Заявка на обратный звонок" />
        <button>Перезвоните мне</button>
    </form>
</div>