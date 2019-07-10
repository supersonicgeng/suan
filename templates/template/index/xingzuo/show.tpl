<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/style.css">
<script type="text/javascript" src="<{$web_url}>static/bazi/js/jquery.min.js"></script>
<script type="text/javascript" src="<{$web_url}>static/bazi/js/ainatec.js"></script>
<div class="wrapper">
    <div class="main">
       <div class="star_con">
	<a href="<{$web_url}>xingzuo/baiyang/" class="star_icon star1 <{if $seo.id==401}>star_current<{/if}>">
		<span class="star_name">白羊座</span>
		<span class="star_date">(3.21-4.19)</span>
	</a>
	<a href="<{$web_url}>xingzuo/jinniu/" class="star_icon star2 <{if $seo.id==402}>star_current<{/if}>">
		<span class="star_name">金牛座</span>
		<span class="star_date">(4.20-5.20)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuangzi/" class="star_icon star3 <{if $seo.id==403}>star_current<{/if}>">
		<span class="star_name">双子座</span>
		<span class="star_date">(5.21-6.21)</span>
	</a>
	<a href="<{$web_url}>xingzuo/juxie/" class="star_icon star4 <{if $seo.id==404}>star_current<{/if}>">
		<span class="star_name">巨蟹座</span>
		<span class="star_date">(6.22-7.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shizi/" class="star_icon star5 <{if $seo.id==405}>star_current<{/if}>">
		<span class="star_name">狮子座</span>
		<span class="star_date">(7.23-8.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/chunv/" class="star_icon star6 <{if $seo.id==406}>star_current<{/if}>">
		<span class="star_name">处女座</span>
		<span class="star_date">(8.23-9.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/tiancheng/" class="star_icon star7 <{if $seo.id==407}>star_current<{/if}>">
		<span class="star_name">天秤座</span>
		<span class="star_date">(9.23-10.23)</span>
	</a>
	<a href="<{$web_url}>xingzuo/tianxie/" class="star_icon star8 <{if $seo.id==408}>star_current<{/if}>">
		<span class="star_name">天蝎座</span>
		<span class="star_date">(10.24-11.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/sheshou/" class="star_icon star9 <{if $seo.id==409}>star_current<{/if}>">
		<span class="star_name">射手座</span>
		<span class="star_date">(11.23-12.21)</span>
	</a>
	<a href="<{$web_url}>xingzuo/mojie/" class="star_icon star10 <{if $seo.id==410}>star_current<{/if}>">
		<span class="star_name">摩羯座</span>
		<span class="star_date">(12.22-1.19)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuiping/" class="star_icon star11 <{if $seo.id==411}>star_current<{/if}>">
		<span class="star_name">水瓶座</span>
		<span class="star_date">(1.20-2.18)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuangyu/" class="star_icon star12 <{if $seo.id==412}>star_current<{/if}>">
		<span class="star_name">双鱼座</span>
		<span class="star_date">(2.19-3.20)</span>
	</a>
</div>
        
<style type="text/css"> 
.biankuang{margin-top: 20px;}
</style>
<div class="biankuang">
<p style="text-align:center;">
	<span style="color:#EE33EE;font-size:32px;"><strong><br />
</strong></span>
</p>
<p style="text-align:center;">
	<span style="color:#F44336;font-size:94px;"><strong><{$data.title}></strong></span>
</p>
<p style="text-align:center;">
	<span style="color:#EE33EE;font-size:32px;"><strong><{$data.time}>
</strong></span>
</p>
<p style="text-align:center;">
	<span style="color:#EE33EE;font-size:32px;"><strong><br />
</strong></span>
</p>
</div>
<div class="biankuang">
<div class="xingzuo_detail clearfix">
	<div class="xingzuo_info">
        <div class="xingzuo_info_top clearfix">
			<div class="xingzuo_info_img">
				<img src="<{$data.img}>" width="144" height="144" alt="<{$data.title}>">
			</div>
			<div class="xingzuo_info_words">
				<h1><strong class="xingzuo_info_name ffyh"><{$data.title}></strong><span class="xingzuo_info_date ffyh"><{$data.time}></span></h1>
				<div class="xingzuo_info_read"><{$data.dsc}></div>
			</div>
		</div>
		<div class="xingzuo_info_attr">
			<{$data.more}>
		</div>
        
        <div class="xingzuo_info_article">
        	<{foreach from=$top_3_data item=v}>
				<a href="<{$v.url}>" title="<{$v.title}>"><{$v.title|truncate:12}></a>
            <{/foreach}>
		</div>
	</div>
	<div class="xingzuo_yunshi">
		<div class="xingzuo_yunshi_con" id="myTab0_Content0">
			<div class="xingzuo_yunshi_top flag_con">
				<h2><{$data.title}>今天运势</h2>
				<p><?=date('Y年m月d日',time())?></p>
				<i class="flag_l"></i>
				<i class="flag_r"></i>
			</div>
			<div class="xingzuo_yunshi_attr">
				<ul class="clearfix">
					<li>综合运势：<span class="star_b"><span class="star_f" style="width:<{$data.jintian.index.zonghe}>%;"></span></span></li>
					<li>爱情运势：<span class="star_b"><span class="star_f" style="width:<{$data.jintian.index.aiqing}>%;"></span></span></li>
					<li>工作状况：<span class="star_b"><span class="star_f" style="width:<{$data.jintian.index.gongzuo}>%;"></span></span></li>
					<li>理财投资：<span class="star_b"><span class="star_f" style="width:<{$data.jintian.index.caiyun}>%;"></span></span></li>
					<li>健康指数：<{$data.jintian.index.jiankang}>%</li>
					<li>开运方位：<{$data.jintian.index.kaiyunfangwei}></li>
					<li>幸运颜色：<{$data.jintian.index.yanse}></li>
					<li>黑色幸运数字：<{$data.jintian.index.xingyunshuzi}></li>
				</ul>
			</div>
			<div class="xingzuo_yunshi_read">
				<p><{$data.jintian.content}></p>
			</div>
		</div>
		<div class="xingzuo_yunshi_con1" id="myTab0_Content1" style="display:none;">
			<div class="xingzuo_yunshi_top flag_con">
				<h2><{$data.title}>明日运势</h2>
				<p><?=date('Y年m月d日',time()+3600)?></p>
				<i class="flag_l"></i>
				<i class="flag_r"></i>
			</div>
			<div class="xingzuo_yunshi_attr">
				<ul class="clearfix">
					<li>综合运势：<span class="star_b"><span class="star_f" style="width:<{$data.mingtian.index.zonghe}>%;"></span></span></li>
					<li>爱情运势：<span class="star_b"><span class="star_f" style="width:<{$data.mingtian.index.aiqing}>%;"></span></span></li>
					<li>工作状况：<span class="star_b"><span class="star_f" style="width:<{$data.mingtian.index.gongzuo}>%;"></span></span></li>
					<li>理财投资：<span class="star_b"><span class="star_f" style="width:<{$data.mingtian.index.caiyun}>%;"></span></span></li>
					<li>健康指数：<{$data.mingtian.index.jiankang}>%</li>
					<li>开运方位：<{$data.mingtian.index.kaiyunfangwei}></li>
					<li>幸运颜色：<{$data.mingtian.index.yanse}></li>
					<li>黑色幸运数字：<{$data.mingtian.index.xingyunshuzi}></li>
				</ul>
			</div>
			<div class="xingzuo_yunshi_read">
				<p><{$data.mingtian.content}></p>
			</div>
		</div>
		<div class="xingzuo_yunshi_tab clearfix">
			<ul id="myTab0">
				<li class="active" onClick="nTabs(this,0);">今日运势</li>
				<li class="normal" onClick="nTabs(this,1);">明日运势</li>
				<li class="normal"><a href="<{$web_url}><{$seo.extra}>week/" target="_blank">本周运势</a></li>
				<li class="normal"><a href="<{$web_url}><{$seo.extra}>month/" target="_blank">本月运势</a></li>
				<li class="normal last"><a href="<{$web_url}><{$seo.extra}>year/" target="_blank">本年运势</a></li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>
<{include file='./index/footer.tpl'}>

