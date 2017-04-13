<div class="form-block" id="request_form_usluga">
    <div class="width-site">
        <div class="form-wraper">
            <p>Оставьте заявку<span>прямо сейчас!</span></p>
            <form name="type" class="sendLead" action="{$_modx->resource.id}" method="post" data-id="request_form">
                <input name="name" type="text" placeholder="Как вас зовут?" >
                <input name="phone" type="text" placeholder="Ваш номер телефона*" class="required" data-type="phone">
                <input name="email" type="text" placeholder="E-mail" data-type="email">
                <textarea name="message" placeholder="Ваш комментарий"></textarea>
                <input type="text" name="lastname" >
                <input type="hidden" name="type" value="Заявка на услугу" />
                {include 'file:chunks/forms/politics.tpl'}
                <button>Отправить</button>
            </form>
            <i></i>
        </div><!-- .form-wraper-->
        <div class="helper"></div>
    </div><!-- .width-site -->
</div><!-- .form-block -->