<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<{if $t1!=''}>
<h1 class="title">男生和<{$t2}>女生的缘分</h1>
    <div class="detail">
<div class="h2_content">
        <p><{$info.shorttxt}></p>
        <p><{$info.content}></p></div>
    </div>
    <{/if}>
<h1 class="title">星座血型配对</h1>
<div class="detail">
</br>
    <dl>
        <form name="sm" action="/index.php" method="post">
            <input type="hidden" name="ac" value="xingzuoxuexing" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="461" />
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
                    <option value="AB型">AB型</option>

                    <option value="A型">A型</option>

                    <option value="B型">B型</option>

                    <option value="O型">O型</option>
                </select></div>
            <div align="center"><input type="submit" name="submit" class="button" value="马上配对"/></div>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>