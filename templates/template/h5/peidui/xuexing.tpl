<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<{if $xx.shorttxt!=''}>
<h1 class="title"><{$xx1}>男生和<{$xx2}>女生的缘分</h1>
    <div class="detail">
        <div class="h2_content">
		<p><{$xx.shorttxt}></p>
        <p><{$xx.content}></p></div>
    </div>
    <{/if}>
<h1 class="title">血型配对</h1>
<div class="detail">
</br>
    <dl>
        <form name="sm" action="/index.php" method="post">
            <input type="hidden" name="ac" value="xuexing" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="388" />
            <dd class="form zhongjian">
                男生血型： <select id="xx1" name="xx1" class="select"><option value="A">男A型血</option><option value="B">男B型血</option><option value="O">男O型血</option><option value="AB">男AB型血</option></select>  </dd></br>
            <dd class="form zhongjian">
                女生血型： <select id="xx2" name="xx2" class="select"> <option value="A">女A型血</option><option value="B">女B型血</option><option value="O">女O型血</option><option value="AB">女AB型血</option></select>
            </dd>
            <div align="center"><input type="submit" name="submit" class="button" value="马上配对" /></div>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>