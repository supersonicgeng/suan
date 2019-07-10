<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title">【<{$q}> - 解梦】</h1>

<div class="detail">

    <div class="suanmingDetail_item">

        <div class="subs">
            <div class="subs_title">※ 关于<{$q}>的热门梦境</div>
            <div class="cont">
                <div class="content">
                    <ul class="dl-col2">

                        <{foreach from=$data item=v key=k}>
                            <li><a href="/zgjm/show-<{$v.id}>.html" target="_blank"><{$v.title}></a></li>
                        <{/foreach}>

                    </ul>

                    <div class="page">
                        <{$pageStr}>
                    </div>

                </div>
            </div>


            <div class="dream_other">
                <div class="dream_other_title">分类导航</div>
                <div class="dream_other_a">
                    <a href="/zgjm/renwu.html">人物</a>
                    <a href="/zgjm/dongwu.html">动物</a>
                    <a href="/zgjm/wupin.html">物品</a>
                    <a href="/zgjm/zhiwu.html">植物</a>
                    <a href="/zgjm/guishen.html">鬼神</a>
                    <a href="/zgjm/shenghuo.html">生活</a>
                    <a href="/zgjm/qita.html">其他</a>
                </div>
            </div>

        </div>

    </div>

</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>

<{include file='./h5/footer.tpl'}>