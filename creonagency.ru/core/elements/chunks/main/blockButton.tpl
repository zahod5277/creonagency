<div class="block_btn_more">
    <div class="parent">
       {* [[-getImageList?
            &docid=`[[-*id]]`
            &tvname=`button_grroup`
            &tpl=`block_button_tpl`
        ]]*}
        {$_modx->runSnippet('getImageList',[
                        'tvname' => 'button_grroup',
                        'tpl' => 'block_button_tpl',
                        'docid' => $_modx->resource.id
                    ])}
    </div>
</div>
