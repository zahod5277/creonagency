<?php

header('Content-Type: text/html; charset=utf-8');
define('MODX_API_MODE', true);
require 'index.php';
$pdo = $modx->getService('pdoTools');
// Откликаться будет ТОЛЬКО на ajax запросы
if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) || $_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') {
    return;
}
if (!empty($_POST['action']) || !empty($_POST['action0'])) {
    switch ($_POST['action']) {
        case 'quickview':
            if ($_POST['context']=='web'){
                $pageId = 1;
            } else {
                $pageId = 853;
            }
            $snip1 = $modx->runSnippet('getImageList', array(
                'docid' => $pageId,
                'tvname' => 'trust',
                'tpl' => 'trust',
            ));
            $snip2 = $modx->runSnippet('getImageList', array(
                'docid' => $pageId,
                'tvname' => 'main_page_review',
                'tpl' => 'main_page_reviews_tpl',
            ));
            $res = "<div class='width-site'>
				<div class='clients-wrap'>
					<h4>Нам доверяют</h4>
					<div class='clients-carousel' id='snip1'>
					    " . $snip1 . "
					</div>
				</div>
			    <div class='certificate-wrap'>
                	<h4 class='certificate-title'>Creon - сертифицировано<br/> Российской ассоциацией BTL!</h4>
                	<a href='assets/template/images/source/0hbGMcKa7FA.jpg' class='fancybox'><img src='assets/template/images/shtamp.png' alt=''></a>
                </div>
				<div class='reviews-wrap'>
					<h4><a href='" . $modx->makeUrl(412) . "'>отзывы о нас</a></h4>
					<div class='owl-carousel-reviews'>
 					</div>
 					<div class='main_page_reviews' id='snip2'>
 					    " . $snip2 . "
 					</div>
 					<a href='" . $modx->makeUrl(412) . "' class='btn_variant'>Смотреть все отзывы</a>
 					<div class='clear'></div>
				</div>
			</div>";
            break;
    }
}
if (!empty($res)) {
    die($res);
}
