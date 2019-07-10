<{include file='./h5/header.tpl'}>
<style>
.cbst ul li{float:left;}
</style>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$seo.name}></h1>
<form name=form1 action="/index.php" method="post">
	<input type="hidden" name="ct" value="h5_zgjm">
	<input type="hidden" name="ac" value="search">

	<div id="se_wrap">

		<div id="se_inner">

			<input type="text" name="q" maxLength=32 class="se-input" onBlur="if (value==''){value='请输入梦见了什么'}" onFocus="if (value=='请输入梦见了什么') {value=''}" value="请输入梦见了什么">

			<div id="cross"></div>

		</div>

		<input id="se_bn" type="submit" name="submit1" value="解梦">

	</div>

</form>


<div class="detail">

	<h3 class="suanmingDetail_title"><{$data.title}> ：今日运势-<?=date('Y年m月d日',time())?></h3>

	<div class="mainBox">

		<div class="suanmingDetail_info">

			<div class="xz_nav sss sss1" style="display: block; height:auto;">

				<ul class="clearbox">

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


	<div class="cbst">
		<ul class="clearbox">

			<li <{if $nid==1}>class="on"<{/if}>><a href="/<{$seo.extra}>today/">今日运势</a></li>
			<li <{if $nid==2}>class="on"<{/if}>><a href="/<{$seo.extra}>tomorrow/">明日运势</a></li>
			<li <{if $nid==3}>class="on"<{/if}>><a href="/<{$seo.extra}>week/">本周运势</a></li>
			<li <{if $nid==4}>class="on"<{/if}>><a href="/<{$seo.extra}>month/">本月运势</a></li>
			<li <{if $nid==5}>class="on"<{/if}>><a href="/<{$seo.extra}>year/">年度运势</a></li>
			<li <{if $nid==6}>class="on"<{/if}>><a href="/<{$seo.extra}>love/">爱情运势</a></li>

		</ul>
	</div>

	<div class="suanmingDetail_item">

		<div class="c">
			<dl class="bmt">
				<dt>
					<img src="<{$web_url}>static/bazi/images/xingzuo/v2/1.gif" width="116" height="140" alt="">
				</dt>
				<dd>
					<h4><{$data.title}></h4>
					<span>有效期限：<?=date('Y-m-d',time())?></span>
				</dd>
			</dl>

			<div class="mcz">
				<{if $nid!=6}>
				<ul class="clearfix">
					<li>
						<label>综合运势：</label>
						<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.zonghe}><{else}><{$list.index.0.star*14}><{/if}>px;"></span>
										</span>
						</em>
					</li>
					<li>
						<label>爱情运势：</label>
						<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.aiqing}><{else}><{$list.index.1.star*14}><{/if}>px;"></span>
										</span>
						</em>
					</li>
					<li>
						<label>工作状况：</label>
						<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.gongzuo}><{else}><{$list.index.2.star*14}><{/if}>px;"></span>
										</span>
						</em>
					</li>
					<li>
						<label>理财投资：</label>
						<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.caiyun}><{else}><{$list.index.3.star*14}><{/if}>px;"></span>
										</span>
						</em>
					</li>

					<{if $nid<3}>

					<li>
						<label>健康指数：</label>
						<em><{$list.index.jiankang}>%</em>
					</li>
					<li>
						<label>幸运颜色：</label>
						<em><{$list.index.yanse}></em>
					</li>
					<li>
						<label>幸运数字：</label>
						<em><{$list.index.xingyunshuzi}></em>
					</li>
					<li>
						<label>开运方位：</label>
						<em><{$list.index.kaiyunfangwei}></em>
					</li>

					<{/if}>

				</ul>
				<{/if}>

				<div class="teams">
					<div class="left"><img src="<{$web_url}>static/bazi/images/pic_all.gif" border="0"></div>
					<div class="right">
						<h4>整体概况</h4>
						<p><{$list.content}></p>
					</div>
					<div class="clear"></div>
				</div>

				<{if $nid==5}><!--年度-->

				<!-- Group start -->
				<div class="teams bg">
					<div class="left"><img src="<{$web_url}>static/bazi/images/pic_all.gif" width="55" height="60" border="0"></div>
					<div class="right">
						<h4>健康指数</h4>
						<p><{$data.nian.jiankang}></p>
					</div>
					<div class="clear"></div>
				</div>
				<!-- Group end -->

				<!-- Group start -->
				<div class="teams">
					<div class="left"><img src="<{$web_url}>static/bazi/images/pic_job.gif" width="55" height="60" border="0"></div>
					<div class="right">
						<h4>工作职场</h4>
						<p><{$data.nian.shiye}></p>
					</div>
					<div class="clear"></div>
				</div>
				<!-- Group end -->

				<!-- Group start -->
				<div class="teams bg">
					<div class="left"><img src="<{$web_url}>static/bazi/images/pic_money.gif" width="55" height="60" border="0"></div>
					<div class="right">
						<h4>金钱理财</h4>
						<p><{$data.nian.caifu}></p>
					</div>
					<div class="clear"></div>
				</div>
				<!-- Group end -->

				<!-- Group start -->
				<div class="teams">
					<div class="left"><img src="<{$web_url}>static/bazi/images/pic_marry.gif" width="55" height="60" border="0"></div>
					<div class="right">
						<h4>恋爱婚姻</h4>
						<p><{$data.nian.aiqing}></p>
					</div>
					<div class="clear"></div>
				</div>
				<!-- Group end -->
				<{/if}>


			</div>

			<div class="mcb">

				<{if $nid==6}>
				<dl>
					<dt class="fcolor"><strong>总体爱情运势</strong></dt>
					<dd><{$data.love.zh}></dd>
				</dl>
				<dl>
					<dt class="fcolor"><strong>女生</strong></dt>
					<dd><{$data.love.nv}></dd>
				</dl>
				<dl>
					<dt class="fcolor"><strong>男生</strong></dt>
					<dd><{$data.love.nan}></dd>
				</dl>
				<{/if}>

				<div class="arcbox">
					<h4>
						<strong>★<{$data.title}>的相关文章</strong>
						<small><a href="/list-345-<{$category}>.html">更多&gt;&gt;</a></small>
					</h4>
					<ul class="litext">
						<{foreach from=$hot_content item=v}>
						<li>·<a href="<{$v.url}>" target="_blank" title="<{$v.title}>"><{$v.title}></a></li>
						<{/foreach}>
					</ul>
				</div>
			</div>
		</div>

	</div>

</div>

<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>

<div class="detail">

	<h3><a href="/list-345-<{$category}>.html"><{$date.title}>话题：</a></h3>

	<{if $img_data.0.img}>
	<a href="<{$img_data.0.url}>" title="<{$img_data.0.title}>" class="xingzuo_topic_img"><img src="<{$img_data.0.img}>" width="120" height="90" alt="<{$img_data.0.title}>"></a>
	<div class="xingzuo_topic_words">
		<h2><a href="<{$img_data.0.url}>" title="<{$img_data.0.title}>" class="ffyh"><{$img_data.0.title}></a></h2>
		<div class="xingzuo_topic_read">
			<p><{$img_data.0.shorttxt|truncate:120}><a href="<{$img_data.0.url}>">[详细]</a></p>
		</div>
	</div>
	<{/if}>

	<dl>
		<{foreach from=$list_data item=v}>
		<li><a href="<{$v.url}>" title="<{$v.title}>">·<{$v.title|truncate:16}></a></li>
		<{/foreach}>

	</dl>

</div>

<div id="navi">
	<{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>