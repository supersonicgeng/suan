<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$seo.name}>-解梦</h1>
<form name=form1 action="/index.php" method="post">
    <input type="hidden" name="ct" value="h5_zgjm">
    <input type="hidden" name="ac" value="search">

    <div id="se_wrap">

        <div id="se_inner">

            <input type="text" name="q" maxLength=32 class="se-input" onBlur="if (value==''){value='请输入梦见了什么'}" onFocus="if (value=='请输入梦见了什么') {value=''}" value="请输入梦见了什么">

            <div id="cross"></div>

        </div>

        <input id="se_bn" type="submit" name="submit1" value="解梦">

    </div>

</form>


<div class="detail">

    <div class="suanmingDetail_item">

        <div class="subs">
            <div class="subs_title">※ 热门梦境</div>
            <div class="cont">
                <div class="content">
                    <ul class="dl-col2">

                        <{foreach from=$list item=v key=k}>
                            <li><a href="show-<{$v.id}>.html" target="_blank"><{$v.title}></a></li>
                        <{/foreach}>

                    </ul>

                    <div class="page">
                        <{$pageStr}>
                    </div>

                </div>
            </div>

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