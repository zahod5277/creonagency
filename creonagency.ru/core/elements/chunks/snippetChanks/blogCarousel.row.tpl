{if count($files)>1}
    {foreach $files as $file}
        <li>
            <img src="{$file['url']}" title="[[*pagetitle]] btl agency creon"  alt="{$_modx->resource.pagetitle} btl agency creon" title="{$file['name']}" width="530" height="375">
        </li>
    {/foreach}
{/if}