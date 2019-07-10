<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$data.title}></h1>

<div class="detail">

    <dl>

        <dd class="sosuo_content">
            <div class="newsinfo mb10">时间：<{$data.uptime}> &nbsp; 来源：开运网 &nbsp; 关键词：<{$data.contentKeyword}></div>

            <{$data.content}>

        </dd>

        <div class="getpage">

            <div class="pager">
                <{$pageStr}>
            </div>

        </div>

    </dl>

</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>