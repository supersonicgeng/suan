<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">八字合婚结果</h1>
<div class="detail">
	<div class="remark center">配对指数</div>

	<dd>
	<p><strong>经过分析，<{$data.name}>和<{$data.name_a}>的合婚评分如下</strong></p>
			<{if $one_arr.sex1==$two.sex2}><{/if}>
	</dd>
	<h2>男命解析:</h2>

	<div class="h2_content">
		<span class="brown">
			<strong>姓名：<{$data.name}>  </strong><br>
			<strong>出生时间（公历）：<{$data.gongli1}></strong><br>
			<strong> 生肖:<{$data.shengxiao1}>(运势)</strong><br>
		</span>
		<span class="brown">
			命宫为：<strong><{$data.m_n}></strong><br>
			头胎为：<strong><{$data.erzi}></strong>
		</span>

	</div>


	<div class="h2_content">

		<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#ddd" style="margin-top:10px;">

			<tbody>


			<tr>

				<th width="100" rowspan="3" class="cBrown">旬空：</th>

				<td width="101" class="cBlue">十神：</td>

				<td class="cBlue"><{$data.shishen1}></td>

				<td class="cBlue"><{$data.shishen2}></td>

				<td class="cBlue">日主：</td>

				<td class="cBlue"><{$data.rizhu1}></td>
			</tr>

			<tr>

				<td class="cRed">乾造：</td>

				<{$data.qianzao1}>

			</tr>

			<tr>

				<td>支十神：</td>

				<{$data.zhishishen1}>

			</tr>

			</tbody>

		</table>

		<table class="tableB">

			<tbody>

			<tr>

				<th width="100">十神：</th>

				<{$data.shishen_for1}>

			</tr>



			</tbody>

			<tfoot>

			<tr>

				<td colspan="9"> 您属于：<{$data.m_na}>四命，宜住<{$data.m_na}>四宅的房子为最佳，<br>最佳坐向：<{$data.m_nfw}></td>

			</tr>

			</tfoot>

		</table>

	</div>

	<div class="line"></div>

	<h2>女命解析:</h2>

	<div class="h2_content">
		<span class="brown">
			<strong>姓名：<{$data.name_a}>  </strong><br>
			<strong>出生时间（公历）：<{$data.gongli2}></strong><br>
			<strong> 生肖:<{$data.shengxiao2}>(运势)</strong><br>
		</span>
		<span class="brown">
			命宫为：<strong><{$data.m_v}></strong><br>
			头胎为：<strong><{$data.erzi_a}></strong>
		</span>

	</div>


	<div class="h2_content">

		<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#ddd" style="margin-top:10px;">

			<tbody>


			<tr>

				<th width="100" rowspan="3" class="cBrown">旬空：</th>

				<td width="101" class="cBlue">十神：</td>

				<td class="cBlue"><{$data.shishenb1}></td>

				<td class="cBlue"><{$data.shishenb2}></td>

				<td class="cBlue">日主：</td>

				<td class="cBlue"><{$data.rizhu2}></td>
			</tr>

			<tr>

				<td class="cRed">坤造：</td>

				<{$data.qianzao2}>

			</tr>

			<tr>

				<td>支十神：</td>

				<{$data.zhishishen2}>

			</tr>

			</tbody>

		</table>

		<table class="tableB">

			<tbody>

			<tr>

				<th width="100">十神：</th>

				<{$data.shishen_for2}>

			</tr>



			</tbody>

			<tfoot>

			<tr>

				<td colspan="9">您属于： <{$data.m_va}>四命，宜住<{$data.m_va}>四宅的房子为最佳，最佳坐向：<{$data.m_vfw}></td>

			</tr>

			</tfoot>

		</table>

	</div>

	<div class="line"></div>


	<h2>八字合婚结果如下:</h2>

	<div class="h2_content">
		<span class="brown">
			<strong>命宫：<{$data.bb}>分  </strong>
			<p>此项为30分 说明：以东四命与西四命之说来合，如果相合，那么在购房时，应买与自己命宫相合的房子。</p>

			<strong>年支同气：<{$data.c}> 分</strong>
			<p>此项为20分 说明：如寅卯辰会东方木气，虎兔龙结合的机缘就大于其它属相；巳午未会南方火气，蛇马羊结合的机缘就大于其它属相；申酉戌会西方金气，猴鸡狗结合的机缘就大于其它属相；亥子丑会北方水气，猪鼠牛结合的机缘就大于其它属相。</p>

			<strong> 月令合：<{$data.yh}> 分</strong>
			<p>此项为5分 说明：男女生月相同者互相间也是很有缘份的。</p>

			<strong> 日干相合：<{$data.rrh}> 分</strong>
			<p>此项为25分 说明：谓日干舒配得所？日干五行相同，一阴一阳的组合男女结合的机缘最大，如甲日干逢乙日干，庚日干逢辛日干之类。</p>

			<strong> 天干五合：<{$data.rh}> 分</strong>
			<p>此项为5分 说明：其次是天干五合，如甲日干逢己日干，庚日干逢乙日干之类。再次则是比和或相生。</p>

			<strong> 子女同步：<{$data.ez}> 分</strong>
			<p>此项为15分 说明：何谓子女同步？西方的科学家在探索男女结合的奥秘时提出了 " 性染色体论 " ，我们东方人在四柱预测中看头胎子女的性别，男女双方的八字中头胎子女的性别必须一致。</p>

			<p><strong class="red">总分：<{$data.zongfen}> 分</strong></p>

		</span>
		<span class="brown">
			命宫为：<strong><{$data.m_v}></strong><br>
			头胎为：<strong><{$data.erzi_a}></strong>
		</span>

	</div>
</div>
	<div>
		<{include file='./h5/public/more_nav.tpl'}>
	</div>

	<{include file='./h5/public/news.tpl'}>


</div>
<{include file='./h5/footer.tpl'}>