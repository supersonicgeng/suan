<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<{if $sx1}>
    <div class="detail">
        <h2><{$sx1}>和<{$sx2}>的缘分：</h2>
<div class="h2_content">
        <p><{$sx.shorttxt}></p>
        <p><{$sx.content}></p></div>
    </div>
    <{/if}>
<div class="detail">
<img src="/static/img/peiduigq.jpg" width="100%">
    <dl>
        <form name="sm" action="/index.php" method="post">
            <input type="hidden" name="ac" value="shengxiao" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="386" /></br>
            <dd class="form zhongjian">
                男生属相：<select id="sx1" name="sx1" class="select">
                    <option value="鼠">生肖属：鼠</option>
                    <option value="牛">生肖属：牛</option>
                    <option value="虎">生肖属：虎</option>
                    <option value="兔">生肖属：兔</option>
                    <option value="龙">生肖属：龙</option>
                    <option value="蛇">生肖属：蛇</option>
                    <option value="马">生肖属：马</option>
                    <option value="羊">生肖属：羊</option>
                    <option value="猴">生肖属：猴</option>
                    <option value="鸡">生肖属：鸡</option>
                    <option value="狗">生肖属：狗</option>
                    <option value="猪">生肖属：猪</option></select> </dd></br>
            <dd class="form zhongjian">
                女生属相：<select id="sx2" name="sx2" class="select">
                    <option value="鼠">生肖属：鼠</option>
                    <option value="牛">生肖属：牛</option>
                    <option value="虎">生肖属：虎</option>
                    <option value="兔">生肖属：兔</option>
                    <option value="龙">生肖属：龙</option>
                    <option value="蛇">生肖属：蛇</option>
                    <option value="马">生肖属：马</option>
                    <option value="羊">生肖属：羊</option>
                    <option value="猴">生肖属：猴</option>
                    <option value="鸡">生肖属：鸡</option>
                    <option value="狗">生肖属：狗</option>
                    <option value="猪">生肖属：猪</option></select></dd></br>
            <div align="center"><input type="submit" name="submit" class="button" value="马上配对"/></div>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>