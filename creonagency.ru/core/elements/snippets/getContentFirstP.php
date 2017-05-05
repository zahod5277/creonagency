<?php

/* 
 * Сниппет, который достает содержимое первого параграфа в контенте, чтобы вставить это в descrption.
 */

if ($page = $modx->getObject('modResource',$id)){
    $content = explode('.', strip_tags($page->get('content')));
    return substr($content[0],0,260).'...';
} else {
    return $page->get('pagetitle');
}

