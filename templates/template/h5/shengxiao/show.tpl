<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title"><{$data.title}></h1>
<div class="detail">

    <div class="bd">
        <div class="mod_zodiac_txt">
            <div class="list">
                <{foreach from=$s_tid item=v}>
                <a href="<{$web_url}><{$v.extra}>" class="<{if $v.id==$seo.id}>current<{/if}>"><{$v.name}></a>
                <{/foreach}>
            </div>
        </div>
        <{$data.content}>
    </div>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>
<style>
.xghp-con{margin: 10px;}
.xghp-con p{font-size: 14px;color: #009688;line-height: 23px;}
.gyear-art{margin: 10px;}
.gyear-art p{font-size: 14px;color: #626262;line-height: 23px;}
</style>