<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$q}></h1>

<div class="detail">

    <div class="intro_tab_list">
        <ul class="clearfix mt10 nobt">
            <{foreach from=$data item=v}>
            <li><span><{$v.uptime}></span><a href="show-<{$v.id}>.html"><{$v.title}></a></li>
            <{/foreach}>
        </ul>
    </div>

    <div class="page">
        <{$pageStr}>
    </div>

    <div class="dream_other">
        <div class="dream_other_title">分类导航</div>
        <div class="dream_other_a">
            <a href="/astro.html">星座测试</a>
            <a href="/xinli.html">心理测试</a>
            <a href="/fengshui.html">风水命理</a>
            <a href="/shengxiao.html">生肖运势</a>
            <a href="/bazisuanming.html">八字算命</a>
        </div>
    </div>


</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<div class="detail">

    <h3><a href="/xingzuo/yunshi/">12星座明日运势：</a></h3>

    <dl>

        <li>

            <a href="/xingzuo/baiyang-2016-11-28" title="白羊座2016年11月28日明日运势">白羊</a> &nbsp;

            <a href="/xingzuo/jinniu-2016-11-28" title="金牛座2016年11月28日明日运势">金牛</a> &nbsp;

            <a href="/xingzuo/shuangzi-2016-11-28" title="双子座2016年11月28日明日运势">双子</a> &nbsp;

            <a href="/xingzuo/juxie-2016-11-28" title="巨蟹座2016年11月28日明日运势">巨蟹</a> &nbsp;

            <a href="/xingzuo/shizi-2016-11-28" title="狮子座2016年11月28日明日运势">狮子</a> &nbsp;

            <a href="/xingzuo/chunv-2016-11-28" title="处女座2016年11月28日明日运势">处女</a></li>

        <li>

            <a href="/xingzuo/tiancheng-2016-11-28" title="天秤座2016年11月28日明日运势">天秤</a> &nbsp;

            <a href="/xingzuo/tianxie-2016-11-28" title="天蝎座2016年11月28日明日运势">天蝎</a> &nbsp;

            <a href="/xingzuo/sheshou-2016-11-28" title="射手座2016年11月28日明日运势">射手</a> &nbsp;

            <a href="/xingzuo/mojie-2016-11-28" title="魔羯座2016年11月28日明日运势">魔羯</a> &nbsp;

            <a href="/xingzuo/shuiping-2016-11-28" title="水瓶座2016年11月28日明日运势">水瓶</a> &nbsp;

            <a href="/xingzuo/shuangyu-2016-11-28" title="双鱼座2016年11月28日明日运势">双鱼</a></dd>

        </li>

</div>

<{include file='./h5/public/news.tpl'}>

<div class="detail">

    <h3><a href="/xinli/">星座运势专栏：</a></h3>

    <dl>

        <li><a href="/xingzuo/4094-zhanning.html" class="inlink"  title="展钰凝2016年10月星座运势">展钰凝2016年10月星座运势</a></li>
        <li><a href="/xingzuo/4093-bifulanke.html" class="inlink"  title="黛比-弗兰克2016年10月星座运势">黛比-弗兰克2016年10月星座运势</a></li>
        <li><a href="/xingzuo/4092-yangqizhanxing.html" class="inlink"  title="氧气占星2016年10月星座运势">氧气占星2016年10月星座运势</a></li>
        <li><a href="/xingzuo/4091-alexshidashu.html" class="inlink"  title="Alex是大叔2016年10月星座运势">Alex是大叔2016年10月星座运势</a></li>
        <li><a href="/xingzuo/4090-jinni.html" class="inlink"  title="金妮2016年10月星座运势">金妮2016年10月星座运势</a></li>
        <li><a href="/xingzuo/4089-patelikealundeer.html" class="inlink"  title="帕特里克-阿伦德尔2016年10月星座运势">帕特里克-阿伦德尔2016年10月星座运势</a></li>




    </dl>

</div>

<div class="detail">

    <h3>你可能感兴趣的：</h3>

    <dl>
        <{foreach from=$hot_data item=v}>
        <li>
            <a href="show-<{$v.id}>.html" target="_blank"><{$v.title}></a>
        </li>
        <{/foreach}>
    </dl>

</div>
<div id="navi">
    <{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>