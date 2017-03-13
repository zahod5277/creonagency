<div class="main_our_project">
		    <div class="width-site">
		        <div class="our_projects">
                    <h3>Наши проекты</h3>
                    <div class="parent">
                        {$_modx->runSnippet('getImageList',[
                            'tvname' => 'we_works_main',
                            'tpl' => 'main_our_projects_tpl',
                            'limit' => '0',
                            'docid' => '1'
                        ])}
                    </div>
                    <a href="{$_modx->makeUrl(2)}">Все проекты</a>
                    <div class="clear"></div>
                </div>
		    </div>
		</div>