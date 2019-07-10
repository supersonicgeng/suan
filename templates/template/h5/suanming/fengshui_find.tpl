<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$haomajx.nianfen}>年出生,<{$haomajx.xingbie}>,大门朝向:<{$haomajx.chaoxiang}>风水测算结果</h1>

<div class="detail">

<dl>

	<h2>风水详解：</h2>

	<div class="h2_content"><{$haomajx.xiangjie}></div>

	<h2>给你的忠告：</h2>

	<div class="h2_content"><{$haomajx.beizhu}></div>

	<div align="center">

		<div class="bdlikebutton"></div>

	</div>

</dd>

</dl>

</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>

