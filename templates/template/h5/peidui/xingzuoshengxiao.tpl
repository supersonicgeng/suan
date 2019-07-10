<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<{if $t1!=''}>
<h1 class="title">男生和生肖<{$t2}>女生的缘分</h1>
    <div class="detail">
<div class="h2_content">
        <p><{$info.shorttxt}></p>
        <p><{$info.content}></p></div>
    </div>

    <{/if}>
<h1 class="title">星座属相配对</h1>
<div class="detail">
</br>
    <dl>
        <form name="sm" action="/index.php" method="post">
            <input type="hidden" name="ac" value="xingzuoshengxiao" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="463" />
            <div align="center">
                <select id="xz1" name="t1" class="select">
                    <option selected="" value="白羊座">白羊座</option>
                    <option value="金牛座">金牛座</option>

                    <option value="双子座">双子座</option>

                    <option value="巨蟹座">巨蟹座</option>

                    <option value="狮子座">狮子座</option>

                    <option value="处女座">处女座</option>

                    <option value="天秤座">天秤座</option>

                    <option value="天蝎座">天蝎座</option>

                    <option value="射手座">射手座</option>

                    <option value="摩羯座">摩羯座</option>

                    <option value="水瓶座">水瓶座</option>

                    <option value="双鱼座">双鱼座</option>
                </select>
                配 <select id="xz2" name="t2" class="select">
                    <option selected="" value="鼠">鼠</option>

                    <option value="牛">牛</option>

                    <option value="虎">虎</option>

                    <option value="兔">兔</option>

                    <option value="龙">龙</option>

                    <option value="蛇">蛇</option>

                    <option value="马">马</option>

                    <option value="羊">羊</option>

                    <option value="猴">猴</option>

                    <option value="鸡">鸡</option>

                    <option value="狗">狗</option>

                    <option value="猪">猪</option>
                </select></div>
				</br>
            <div align="center"><input type="submit" name="submit" class="button" value="马上配对"/></div>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>