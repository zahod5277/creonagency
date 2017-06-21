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
<div class="slider_main_rd">
    <div class="parent owl-carousel">
        <div class="carousel-item">
            <img class="carousel-item-img" src="{$_modx->config.assets_url}template/images/newslider/1-min.jpg" alt="Хотите провести мероприятие?">
            <div class="carousel-item-description">
                <p class="carousel-item-text">
                    Хотите провести <b>промо-акцию?</b>
                </p>
                <a href="{$promo|url}#form_realize" class="carousel-btn">
                    <span>Оставить заявку</span>
                </a>
            </div>
        </div>
        <div class="carousel-item">
            <img class="carousel-item-img" src="{$_modx->config.assets_url}template/images/newslider/4-min.jpg" alt="Хотите провести мероприятие?">
            <div class="carousel-item-description">
                <p class="carousel-item-text">
                    Ищете <b>промоутеров?</b>
                </p>
                <a href="{$promouters|url}" class="carousel-btn">
                    <span>Подробнее</span>
                </a>
            </div>
        </div> 
        <div class="carousel-item">
            <img class="carousel-item-img" src="{$_modx->config.assets_url}template/images/newslider/3-min.jpg" alt="Хотите провести мероприятие?">
            <div class="carousel-item-description">
                <p class="carousel-item-text">
                    Требуются модели <b>на мероприятие?</b>
                </p>
                <a href="{$models|url}" class="carousel-btn">
                    <span>Смотреть каталог</span>
                </a>
            </div>
        </div>
        <div class="carousel-item">
            <img class="carousel-item-img" src="{$_modx->config.assets_url}template/images/newslider/6-min.jpg" alt="Хотите провести мероприятие?">
            <div class="carousel-item-description">
                <p class="carousel-item-text">
                    Нужен персонал <b>на выставку?</b>
                </p>
                <a href="{$promostand|url}" class="carousel-btn">
                    <span>Подробнее</span>
                </a>
            </div>
        </div>
        <div class="carousel-item">
            <img class="carousel-item-img" src="{$_modx->config.assets_url}template/images/newslider/2-min.jpg" alt="Хотите провести мероприятие?">
            <div class="carousel-item-description">
                <p class="carousel-item-text">
                    Необходимо провести <b>дегустацию?</b>
                </p>
                <a href="{$degust|url}" class="carousel-btn">
                    <span>Подробнее</span>
                </a>
            </div>
        </div>
    </div>
</div>