<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<{if $xm1}><h1 class="title">姓名配对-情缘类型</h1>
<div class="detail">
<div class="h2_content">
    <dl>
        <dd>双方姓名：<{$xm1}>:<{$xm2}></dd>
        <dd>关系揭密：<{$xxxy.intro}></dd></div>
    </dl>
</div>

<{/if}>
<img src="/static/img/peiduixm.jpg" width="100%">
<div class="detail">
    <dl>
        <form name="s" action="/index.php" method="post">
            <input type="hidden" name="ac" value="mingzi" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="387" /></br>
            <dd class="form zhongjian">男生：<input class="ipt1" type="text" id="wd1" name="xm1" maxlength="10" placeholder="男生" value=""></dd>
</br>
            <dd class="form zhongjian">女生：<input class="ipt1" type="text" id="wd2" name="xm2" maxlength="10" placeholder="女生" value=""></dd>
</br>
            <dd class="form"><center>

                    <button id="vote_vote" class="button" type="submit">开始配对</button>

                    <input type="hidden" name="action" value="test">  </center>

            </dd>

        </form>

    </dl>

</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>