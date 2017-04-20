{if $_modx->resource.context_key=='web'}
    {var $promo = 119}
    {var $degust = 19}
    {var $models = 6}
    {var $promouters = 9}
    {var $promostand = 63}
{elseif $_modx->resource.context_key=='spb'}
    {var $promo = 1939}
    {var $degust = 2159}
    {var $models = 1721}
    {var $promouters = 2147}
    {var $promostand = 2157}
    {else}
     {var $promo=$_modx->resource.id}
{/if}
<div class='parent'>
    <div class='item'>
        <div class='img'>
            <img src='assets/template/images/slide2.jpg' alt=''/>
        </div>
        <div class='desc'>
            <p>Хотите провести<br/>промо-акцию?</p>
            <a href='{$promo|url}#form_realize' class='btn_rd_default'><span>Оставить заявку</span></a>
        </div>
    </div>
    <div class='item'>
        <div class='img'>
            <img src='assets/template/images/slide_rd2.jpg' alt=''/>
        </div>
        <div class='desc'>
            <p> Необходимо провести<br/>дегустацию?</p>
            <a href="{$degust|url}" class="btn_rd_default"><span>Подробнее</span></a>
        </div>
    </div>
    <div class='item'>
        <div class='img'>
            <img src='assets/template/images/slide_rd3.jpg' alt=''/>
        </div>
        <div class='desc'>
            <p>Требуются модели<br/>на мероприятие ?</p>
            <a href='{$models|url}' class='btn_rd_default'><span>Смотреть каталог</span></a>
        </div>
    </div>
    <div class='item'>
        <div class='img'>
            <img src='assets/template/images/slide_rd4.jpg' alt=''/>
        </div>
        <div class='desc'>
            <p>Ищете промоутеров?</p>
            <a href='{$promouters|url}' class='btn_rd_default'><span>Подробнее</span></a>
        </div>
    </div>
    <div class='item'>
        <div class='img'>
            <img src='assets/template/images/slide_rd5.jpg' alt=''/>
        </div>
        <div class='desc'>
            <p>Нужен персонал<br/>на выставку?</p>
            <a href='{$promostand|url}' class='btn_rd_default'><span>Подробнее</span></a>
        </div>
    </div>
</div>