<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
    <h1 class="title">QQ配对-情缘类型</h1>
<{if $qq.qq1}>
<div class="detail">
    <dd>
        <dd>双方QQ：<{$qq.qq1}>:<{$qq.qq2}></dd>
        <dd>关系揭密：<{$qqqy.intro}></dd>
    </dd></br></br>
</div>

<{/if}>

<div class="detail">
    <dl>

        <form name="s" action="/index.php" method="post">
            <input type="hidden" name="ac" value="qq" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="384" />
            <dd class="form">男生QQ：<input class="ipt1" type="text" id="wd1" name="qq1" maxlength="10" placeholder="男生QQ号码" value=""></dd>
</br>
            <dd class="form">女生QQ：<input class="ipt1" type="text" id="wd2" name="qq2" maxlength="10" placeholder="女生QQ号码" value=""></dd>

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