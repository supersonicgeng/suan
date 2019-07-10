<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/style.css">
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/dream.css"/>
<div class="wrapper">
    <div class="main">
<{include file='./index/public/path.tpl'}>         
        
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

<div class="cont">

			<div class="col_left">

				<div class="yunshi_detail clearfix">
			<div class="yunshi_detail_con">
				<div class="">
					<div class="cbst">
						<ul>
                       
							<li <{if $nid==1}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>today/">今日运势</a></li>
							<li <{if $nid==2}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>tomorrow/">明日运势</a></li>
							<li <{if $nid==3}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>week/">本周运势</a></li>
							<li <{if $nid==4}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>month/">本月运势</a></li>
							<li <{if $nid==5}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>year/">年度运势</a></li>
							<li <{if $nid==6}>class="on"<{/if}>><a href="<{$web_url}><{$seo.extra}>love/">年度爱情运势</a></li>
                            
						</ul>
					</div>
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
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.zonghe}><{else}><{$list.index.0.star*20}><{/if}>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>爱情运势：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.aiqing}><{else}><{$list.index.1.star*20}><{/if}>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>工作状况：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.gongzuo}><{else}><{$list.index.2.star*20}><{/if}>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>理财投资：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<{if $nid<3}><{$list.index.caiyun}><{else}><{$list.index.3.star*20}><{/if}>px;"></span>
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
						</div>
					</div>
				</div>
			</div>
		</div>
        
        <{include file='./index/public/left_sx.tpl'}>
</div>

<div id="col_right" class="col_right">

<{include file='./index/public/right.tpl'}>  

</div>

</div>

</div>

</div>

<{include file='./index/footer.tpl'}>