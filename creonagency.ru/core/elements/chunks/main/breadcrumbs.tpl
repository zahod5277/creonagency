<div class="sled_soc" style='float:right;'>

    <p style='margin:15px 0 5px 0px;color:#008ad1;font-size:18px;letter-spacing: -1px;'>
        Следите за нами в соц.сетях

    </p>
    <a target="_blank" class='social' href="https://vk.com/creonagency">
        <img src="assets/images/resources/38/share_link_vk.png" alt="альтернативный текст">
    </a>
    <a target="_blank"  class='social' href="https://www.facebook.com/creonagency">
        <img src="assets/images/resources/38/share_link_fb.png" alt="альтернативный текст">
    </a>
    <a target="_blank"  class='social'  href="https://instagram.com/creonagency/">
        <img src="assets/images/resources/38/share_link_inst.png" alt="альтернативный текст">
    </a>
    <a target="_blank" class='social' href="https://twitter.com/creonagency ">
        <img src="assets/images/resources/38/share_link_twitter.png" alt="альтернативный текст">
    </a>

</div>
{$_modx->runSnippet('pdoCrumbs',[
                        'showHome' => '1',
                        'outputSeparator' => ' / ',
                        'tpl' => '@INLINE <span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem"><a rel="nofollow" itemprop="item" title="{$menutitle}" href="{$link}"><span itemprop="name">{$menutitle}</span><meta itemprop="position" content="{$idx}"></a></span>',
                        'tplWrapper' => '@INLINE <div itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">{$output}</div>',
                        'tplCurrent' => '@INLINE <span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem"><span itemprop="name">{$pagetitle}</span><meta itemprop="position" content="{$idx}"></span>'
                    ])}

[[-*id:is=`6`:or:is=`29`:then=`<h3 class="h3_to_h1">[[*menutitle]]</h3>`:else=`<h1>[[*pagetitle]]</h1>`]]		
{if ($_modx->resource.id == 6) || ($_modx->resource.id == 29)}
    <h1 class="h3_to_h1">[[*menutitle]]</h1>
{else}
    {if $_modx->resource.template==41}
        {if (($_modx->resource.parent==389)||($_modx->resource.parent==1890))}
            {var $title = $_modx->resource.pagetitle}
        {else}
              {var $title = $_modx->resource.pagetitle~' Цвет волос: '~$_modx->resource.hair_color~' '~$_modx->resource.height~'/'~$_modx->resource.weight}
        {/if}
    {else}
        {var $title = $_modx->resource.pagetitle}
    {/if}
    <h1>{$title}</h1>
{/if}

