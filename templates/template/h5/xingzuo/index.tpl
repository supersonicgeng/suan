<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<h1 class="title">十二星座运势</h1>
<div class="detail">

	<div class="mainBox">

		<div class="suanmingDetail_info">

			<div class="xz_nav sss sss1" style="display: block;">

				<ul>

					<li><a class="x1" href="/xingzuo/baiyang/"><img src="/static/img/xingzuo/1.gif" alt="白羊座"></a><span>白羊座</span></li>

					<li><a class="x2" href="/xingzuo/jinniu/"><img src="/static/img/xingzuo/2.gif" alt="金牛座"></a><span>金牛座</span></li>

					<li><a class="x3" href="/xingzuo/shuangzi/"><img src="/static/img/xingzuo/3.gif" alt="双子座"></a><span>双子座</span></li>

					<li><a class="x4" href="/xingzuo/juxie/"><img src="/static/img/xingzuo/4.gif" alt="巨蟹座"></a><span>巨蟹座</span></li>

					<li><a class="x5" href="/xingzuo/shizi/"><img src="/static/img/xingzuo/5.gif" alt="狮子座"></a><span>狮子座</span></li>

					<li><a class="x6" href="/xingzuo/chunv/"><img src="/static/img/xingzuo/6.gif" alt="处女座"></a><span>处女座</span></li>

					<li><a class="x7" href="/xingzuo/tiancheng/"><img src="/static/img/xingzuo/7.gif" alt="天秤座"></a><span>天秤座</span></li>

					<li><a class="x8" href="/xingzuo/tianxie/"><img src="/static/img/xingzuo/8.gif" alt="天蝎座"></a><span>天蝎座</span></li>

					<li><a class="x9" href="/xingzuo/sheshou/"><img src="/static/img/xingzuo/9.gif" alt="射手座"></a><span>射手座</span></li>

					<li><a class="x10" href="/xingzuo/mojie/"><img src="/static/img/xingzuo/10.gif" alt="摩羯座"></a><span>摩羯座</span></li>

					<li><a class="x11" href="/xingzuo/shuiping/"><img src="/static/img/xingzuo/11.gif" alt="水瓶座"></a><span>水瓶座</span></li>

					<li><a class="x12" href="/xingzuo/shuangyu/"><img src="/static/img/xingzuo/12.gif" alt="双鱼座"></a><span>双鱼座</span></li>

				</ul>

			</div>

		</div>

	</div>

	<div class="suanmingDetail_item">

		<table cellpadding="0" cellspacing="0" border="0" class="dataTable table">

			<tbody>



			<tr>

				<th>综合指数</th>

				<td><p><{$xz_yunshi_baiyang.jintian.index.zonghe}>%</p></td>

			</tr>

			<tr>

				<th>爱情指数</th>

				<td><{$xz_yunshi_baiyang.jintian.index.aiqing}>%</td>

			</tr>

			<tr>

				<th>工作指数</th>

				<td><{$xz_yunshi_baiyang.jintian.index.gongzuo}>%</td>

			</tr>

			<tr>

				<th>财运指数</th>

				<td><{$xz_yunshi_baiyang.jintian.index.caiyun}>%</td>

			</tr>

			<tr>

				<th>健康指数</th>

				<td><{$xz_yunshi_baiyang.jintian.index.jiankang}>%</td>

			</tr>

			<tr>

				<th>幸运颜色</th>

				<td><{$xz_yunshi_baiyang.jintian.index.yanse}></td>

			</tr>

			<tr>

				<th>幸运数字</th>

				<td><{$xz_yunshi_baiyang.jintian.index.xingyunshuzi}></td>

			</tr>

			<tr>

				<th>开运方位</th>

				<td><{$xz_yunshi_baiyang.jintian.index.kaiyunfangwei}></td>

			</tr>

			</tbody>

		</table>

	</div>

	<div class="suanmingDetail_item">

		<table cellpadding="0" cellspacing="0" border="0" class="dataTable table">

			<tbody>

			<thead>

			<th>【今日提醒】</th>

			</thead>

			<tr>

				<td>

					<p>
						<{$xz_yunshi_baiyang.jintian.content}>
					</p>

				</td>

			</tr>

			</tbody>

		</table>

	</div>

	<div class="suanmingDetail_item">

		<table cellpadding="0" cellspacing="0" border="0" class="dataTable table">

			<tbody>

			<thead>

			<th>【简介】</th>

			</thead>

			<tr>

				<td>

					<p>

						<{$xz_yunshi_baiyang.dsc}>

					</p>

				</td>

			</tr>

			</tbody>

		</table>

	</div>

</div>

<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>