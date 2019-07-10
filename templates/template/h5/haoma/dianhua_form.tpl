 <{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
    <{if $word==''}>
        <h1 class="title">电话号码吉凶</h1>
    <{/if}>

    <{if $word!=''}>
        <h1 class="title">电话号码<{$word}>的测试结果</h1>

        <div class="detail">

            <dl>

                <h2>所查号码：</h2>

                <div class="h2_content"><{$word}></div>

                <div class="h2_content">

                    <p>吉凶分析：<{$haomajx.title}> <span class="red"><strong>(<{$haomajx.jx}>)</strong></span></p>

                </div>

                <div align="center">

                    <div class="bdlikebutton"></div>

                </div>

                <h2>主人个性：</h2>

                <div class="h2_content"><{$haomajx.content}> </div>

            </dl>

        </div>
    <{/if}>


<div class="detail">
    <dl>
        <form name="form1" action="/index.php"  method="post">
            <input type="hidden" name="ac" value="dianhua">
            <input type="hidden" name="ct" value="h5_haoma">
			</br>
            <dd class="form">请输入电话号码: <input type="text" name="word" maxLength=32 class="ipt1" onBlur="if (value==''){value='不需要加区号'}" onFocus="if (value=='不需要加区号') {value=''}" value="不需要加区号">
            </dd>
			</br>
            <dd><center><input type="submit" name="submit" class="button" value="马上测试" />
                    <input type="hidden" value="test" name="action">  </center></dd>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>