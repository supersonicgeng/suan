<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title">定字起名结果参考</h1>

<div class="detail">

		<h2>结果如下</h2>

        <{if $notcontent!=''}>
        <{$notcontent}>
        <{else}>
			<div class="namelist">
				<ul class="xsdq">
					<{foreach from=$list item=v key=k}>
						<li><a href="/xingming/xmfx/<{$v.name}>" target="_blank"><{$v.name}></a></li>
					<{/foreach}>
				</ul>
			</div>
			<div class="clear"></div>

		<{/if}>

		<div class="clear"></div>

		<div class="h2_content">

			<p>由于篇幅有限，在此只列表这么多陈姓名字，如果你觉得还是不够的话，您还可以使用：开运网的大师在线定制吉祥美名，需要的请点击链接【<a href="https://www.03ky.com/weixin/m" target="_blank">开运科技</a>】关注微信后联系我们的大师哦！</p>

		</div>

	</dl>

</div>
<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>