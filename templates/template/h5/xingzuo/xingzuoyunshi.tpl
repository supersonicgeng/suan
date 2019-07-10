<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>



<div class="detail">

	<h3 class="suanmingDetail_title"><{$data.shorttxt}></h3>

	<div class="mainBox">

		<div class="suanmingDetail_info">

			<div class="xz_nav sss sss1" style="display: block;">

				<ul>

					<li><a class="x1" href="/xingzuo/baiyang/"><img src="/static/img/xingzuo/1.png" alt="白羊座"></a><span>白羊座</span></li>

					<li><a class="x2" href="/xingzuo/jinniu/"><img src="/static/img/xingzuo/2.png" alt="金牛座"></a><span>金牛座</span></li>

					<li><a class="x3" href="/xingzuo/shuangzi/"><img src="/static/img/xingzuo/3.png" alt="双子座"></a><span>双子座</span></li>

					<li><a class="x4" href="/xingzuo/juxie/"><img src="/static/img/xingzuo/4.png" alt="巨蟹座"></a><span>巨蟹座</span></li>

					<li><a class="x5" href="/xingzuo/shizi/"><img src="/static/img/xingzuo/5.png" alt="狮子座"></a><span>狮子座</span></li>

					<li><a class="x6" href="/xingzuo/chunv/"><img src="/static/img/xingzuo/6.png" alt="处女座"></a><span>处女座</span></li>

					<li><a class="x7" href="/xingzuo/tiancheng/"><img src="/static/img/xingzuo/7.png" alt="天秤座"></a><span>天秤座</span></li>

					<li><a class="x8" href="/xingzuo/tianxie/"><img src="/static/img/xingzuo/8.png" alt="天蝎座"></a><span>天蝎座</span></li>

					<li><a class="x9" href="/xingzuo/sheshou/"><img src="/static/img/xingzuo/9.png" alt="射手座"></a><span>射手座</span></li>

					<li><a class="x10" href="/xingzuo/mojie/"><img src="/static/img/xingzuo/10.png" alt="摩羯座"></a><span>摩羯座</span></li>

					<li><a class="x11" href="/xingzuo/shuiping/"><img src="/static/img/xingzuo/11.png" alt="水瓶座"></a><span>水瓶座</span></li>

					<li><a class="x12" href="/xingzuo/shuangyu/"><img src="/static/img/xingzuo/12.png" alt="双鱼座"></a><span>双鱼座</span></li>

				</ul>

			</div>

		</div>

	</div>


</div>


<div class="detail">
	<div class="remark center">时间：<{$data.uptime}> &nbsp; 来源：开运网 &nbsp; 关键词：<{$data.title}></div>

	<h2><{$data.title}>今日指数：</h2>
	<div class="h2_content">
		<p>综合：<{$data.content.zonghe}>%; 爱情：<{$data.content.aiqing}>%; 工作：<{$data.content.gongzuo}>%;</p>

		<p>财富：<{$data.content.caiyun}>%; 健康：<{$data.content.jiankang}>; 开运方位：<{$data.content.kaiyunfangwei}></p>

		<p>幸运数字：<{$data.content.xingyunshuzi}>; 幸运颜色：<{$data.content.yanse}></p>
	</div>

	<h2><{$data.title}>今日建议：</h2>
	<div class="h2_content">
		<{$data.des}>
	</div>

	<h2><{$data.title}>宜忌：</h2>
	<div class="h2_content">
		<p>宜：<{$data.yi}></p>
		<p>忌：<{$data.ji}></p>
	</div>

	<h2><{$data.title}>图解：</h2>
	<div class="h2_content">
		<img src="<{$web_url}><{$data.img}>" width="100%" style="border:0;" />
	</div>

</div>

<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>


<div class="detail">


	<h3>你可能感兴趣的：</h3>

	<dl>
		<li>
			<{foreach from=$hot_data item=v}>
		<li>
			<a href="<{$v.url}>" target="_blank"><{$v.title}></a>
		</li>
		<{/foreach}>
		</li>
	</dl>

</div>

<{include file='./h5/public/news.tpl'}>

<div class="detail">

	<h3><a href="/xingzuo/yunshi/">12星座明日运势：</a></h3>

	<dl>

		<li>

			<a href="/xingzuo/baiyang/tomorrow/" title="白羊座明日运势">白羊</a> &nbsp;

			<a href="/xingzuo/jinniu/tomorrow/" title="金牛座明日运势">金牛</a> &nbsp;

			<a href="/xingzuo/shuangzi/tomorrow/" title="双子座明日运势">双子</a> &nbsp;

			<a href="/xingzuo/juxie/tomorrow/" title="巨蟹座明日运势">巨蟹</a> &nbsp;

			<a href="/xingzuo/shizi/tomorrow/" title="狮子座明日运势">狮子</a> &nbsp;

			<a href="/xingzuo/chunv/tomorrow/" title="处女座明日运势">处女</a></li>

		<li>

			<a href="/xingzuo/tiancheng/tomorrow/" title="天秤座明日运势">天秤</a> &nbsp;

			<a href="/xingzuo/tianxie/tomorrow/" title="天蝎座明日运势">天蝎</a> &nbsp;

			<a href="/xingzuo/sheshou/tomorrow/" title="射手座明日运势">射手</a> &nbsp;

			<a href="/xingzuo/mojie/tomorrow/" title="魔羯座明日运势">魔羯</a> &nbsp;

			<a href="/xingzuo/shuiping/tomorrow/" title="水瓶座明日运势">水瓶</a> &nbsp;

			<a href="/xingzuo/shuangyu/tomorrow/" title="双鱼座明日运势">双鱼</a></dd>

		</li>
        
        </dl>

</div>



<div id="navi">
	<{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>