{var $image = $_modx->runSnippet('phpthumbon',[
    'input' => $_pls['tv.bg_image'],
    'options' => 'w=310&h=410&zc=C&q=87'
])}
<div class="our-promo__item" style="background-image:url('{$image}')">
    <a href="{$uri}" class="our-promo__item__link">
        <img src="{$_pls['tv.keys_white_logo']}" alt="{$pagetitle}" class="our-promo__item__logo">
    </a>    
</div>