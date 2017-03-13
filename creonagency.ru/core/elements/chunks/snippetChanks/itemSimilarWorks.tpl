{var $img = $_modx->runSnippet('phpthumbon',[
                                'input' => $_pls['360x270'],
                                'options' => '&w=280&h=280&zc=T&far=C'
                            ])}

<div class="item">
    <div class="img">
        <a href="{$_pls['uri']}">
            <img src="{$img}" alt="{$pagetitle}" title="{$pagetitle} btl agency creon" width="172" height="172">
        </a>
    </div>
    <div class="text">
        <a href="{$_pls['uri']}">{$_pls['pagetitle']}</a>
    </div>
</div>