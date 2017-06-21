<div class="left">
    <div class="slider_main_rd">
        {include 'file:chunks/added/sliderDesktop.tpl'}
    </div>
</div>
<div class="right">
    <div class="slider_port_rd">

        <div class="swiper-container">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                {$_modx->runSnippet('getImageList',[
                                                'tvname' => 'we_works_main',
                                                'tpl' => 'main_our_projects_rd_tpl',
                                                'limit' => '0',
                                                'docid' => $docid
                                            ])}
            </div>
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev-custom">
                <i class="fa fa-angle-up"></i>
            </div>
            <div class="swiper-button-next-custom">
                <i class="fa fa-angle-down"></i>
            </div>
        </div>
    </div>

    <div class="slider_video_rd">
        <div class="swiper-container">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                {$_modx->runSnippet('getImageList',[
                                                'tvname' => 'video_main',
                                                'tpl' => 'main_video_rd_tpl',
                                                'limit' => '0',
                                               'docid' => $docid
                                            ])}
            </div>
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev-custom">
                <i class="fa fa-angle-up"></i>
            </div>
            <div class="swiper-button-next-custom">
                <i class="fa fa-angle-down"></i>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>