<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$xing}>姓取名，<{$xing}>姓起名大全参考</h1>

<div class="detail">

	<dl>
		<h2><{$xing}>姓<{$xingbie_s}><{$huashu_s}>名字大全：</h2>

		<{if $list==''}>
			<ul class="xsdq">
				<strong>真遗憾！您的姓氏暂时不在我们的起名推荐中，如想得到更多姓名大全，可向我们反馈，我们会适时添加。</strong>
				<a href="/xingming/qiming/">重新测试</a>
			</ul>
		<{else}>


			<div class="qiming_nav">
				<ul class="clearfix">
					<li class="first">
					<a <{if $opt_Array.sex=='0'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-0-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓名字大全</a>
					</li>
					<li>
					<a <{if $opt_Array.sex=='1'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-1-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓男孩名字大全</a>
					</li>
					<li>
					<a <{if $opt_Array.sex=='2'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-2-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓女孩名字大全</a>
					</li>
				</ul>
			</div>

			<div class="fn_subtab">
				<a <{if $opt_Array.hs=='0'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-0-<{$opt_Array.page}>.html">不限</a>
				<a <{if $opt_Array.hs=='2'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-2-<{$opt_Array.page}>.html">二字</a>
				<a <{if $opt_Array.hs=='3'}>class="current"<{/if}> href="/xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-3-<{$opt_Array.page}>.html">三字</a>
			</div>


			<div class="namelist">
				<ul class="xsdq">
					<{foreach from=$list item=v key=k}>
						<li><a href="/xingming/xmfx/<{$v.name}>" target="_blank"><{$v.name}></a></li>
					<{/foreach}>
				</ul>
			</div>
			<div class="clear"></div>

			<div class="page mt10">
				<{$pageStr}>
			</div>
		<{/if}>

		<div class="clear"></div>

		<div class="h2_content">

			<p>由于篇幅有限，在此只列表这么多<{$xing}>姓名字，如果你觉得还是不够的话，您还可以使用：开运网的大师在线定制吉祥美名，需要的请点击链接【<a href="https://www.03ky.com/weixin/m" target="_blank">开运算命网</a>】关注微信后联系我们的大师哦！</p>

		</div>

	</dl>

</div>

<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>
