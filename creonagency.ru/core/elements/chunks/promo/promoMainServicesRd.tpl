<div class="services_rd">
    <div class="width-site">
        <h4>наши услуги</h4>
        <div class="service_block oddblock">
            <div class="service_block_header">
                <h5>Промоакции</h5>
            </div>
            <div class="img">
                <div id="promo1"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4,3,0',
                        'resources' => '9,119,23,22,20'
                    ])}
        </div>
        <div class="service_block">
            <div class="service_block_header">
                <h5>Продвижение в торговых точках</h5>
            </div>
            <div class="img">
                <div id="promo2"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4,3,',
                        'resources' => '11,21,19,118,13'
                    ])}
        </div>
        <div class="service_block oddblock">
            <div class="service_block_header">
                <h5>Выставки</h5>
            </div>
            <div class="img">
                <div id="promo3"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4,3,',
                        'resources' => '63,10,18,12'
                    ])}
        </div>
        <div class="service_block">
            <div class="service_block_header">
                <h5>event-мероприятия</h5>
            </div>
            <div class="img">
                <div id="promo4"></div>
            </div>
            {$_modx->runSnippet('pdoMenu',[
                        'parents' => '4,3,',
                        'resources' => '117,14,15,116'
                    ])}
        </div>
        <div class="clear"></div>
    </div>
</div>