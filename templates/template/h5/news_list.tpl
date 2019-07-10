<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$seo.name}></h1>

<div class="detail">

    <div class="intro_tab_list">
        <ul class="clearfix mt10 nobt">
            <{foreach from=$list item=v}>
            <li><span><{$v.uptime}></span><a href="show-<{$v.id}>.html"><{$v.title}></a></li>
            <{/foreach}>
        </ul>
    </div>

    <div class="page">
        <{$pageStr}>
    </div>


</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>



<div class="detail">

    <h3><a href="/xingzuo/yunshi/">12星座明日运势：</a></h3>

    <dl>

        <li>

            <a href="/xingzuo/baiyang/" title="白羊座运势">白羊</a> &nbsp;

            <a href="/xingzuo/jinniu/" title="金牛座运势">金牛</a> &nbsp;

            <a href="/xingzuo/shuangzi/" title="双子座运势">双子</a> &nbsp;

            <a href="/xingzuo/juxie/" title="巨蟹座运势">巨蟹</a> &nbsp;

            <a href="/xingzuo/shizi/" title="狮子座运势">狮子</a> &nbsp;

            <a href="/xingzuo/chunv/" title="处女座运势">处女</a></li>

        <li>

            <a href="/xingzuo/tiancheng/" title="天秤座运势">天秤</a> &nbsp;

            <a href="/xingzuo/tianxie/" title="天蝎座运势">天蝎</a> &nbsp;

            <a href="/xingzuo/sheshou/" title="射手座运势">射手</a> &nbsp;

            <a href="/xingzuo/mojie/" title="魔羯座运势">魔羯</a> &nbsp;

            <a href="/xingzuo/shuiping/" title="水瓶座运势">水瓶</a> &nbsp;

            <a href="/xingzuo/shuangyu/" title="双鱼座运势">双鱼</a></dd>

        </li>

</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>