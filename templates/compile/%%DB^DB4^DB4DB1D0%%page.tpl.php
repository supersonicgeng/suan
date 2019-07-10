<?php /* Smarty version 2.6.25, created on 2019-07-01 18:33:32
         compiled from index/xingzuo/page.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/top_nav.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/css/style.css">
<link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/css/suanming/v2/dream.css"/>
<div class="wrapper">
    <div class="main">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/path.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>         
        
        <div class="star_con">
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/baiyang/" class="star_icon star1 <?php if ($this->_tpl_vars['seo']['id'] == 401): ?>star_current<?php endif; ?>">
		<span class="star_name">白羊座</span>
		<span class="star_date">(3.21-4.19)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/jinniu/" class="star_icon star2 <?php if ($this->_tpl_vars['seo']['id'] == 402): ?>star_current<?php endif; ?>">
		<span class="star_name">金牛座</span>
		<span class="star_date">(4.20-5.20)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/shuangzi/" class="star_icon star3 <?php if ($this->_tpl_vars['seo']['id'] == 403): ?>star_current<?php endif; ?>">
		<span class="star_name">双子座</span>
		<span class="star_date">(5.21-6.21)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/juxie/" class="star_icon star4 <?php if ($this->_tpl_vars['seo']['id'] == 404): ?>star_current<?php endif; ?>">
		<span class="star_name">巨蟹座</span>
		<span class="star_date">(6.22-7.22)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/shizi/" class="star_icon star5 <?php if ($this->_tpl_vars['seo']['id'] == 405): ?>star_current<?php endif; ?>">
		<span class="star_name">狮子座</span>
		<span class="star_date">(7.23-8.22)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/chunv/" class="star_icon star6 <?php if ($this->_tpl_vars['seo']['id'] == 406): ?>star_current<?php endif; ?>">
		<span class="star_name">处女座</span>
		<span class="star_date">(8.23-9.22)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/tiancheng/" class="star_icon star7 <?php if ($this->_tpl_vars['seo']['id'] == 407): ?>star_current<?php endif; ?>">
		<span class="star_name">天秤座</span>
		<span class="star_date">(9.23-10.23)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/tianxie/" class="star_icon star8 <?php if ($this->_tpl_vars['seo']['id'] == 408): ?>star_current<?php endif; ?>">
		<span class="star_name">天蝎座</span>
		<span class="star_date">(10.24-11.22)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/sheshou/" class="star_icon star9 <?php if ($this->_tpl_vars['seo']['id'] == 409): ?>star_current<?php endif; ?>">
		<span class="star_name">射手座</span>
		<span class="star_date">(11.23-12.21)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/mojie/" class="star_icon star10 <?php if ($this->_tpl_vars['seo']['id'] == 410): ?>star_current<?php endif; ?>">
		<span class="star_name">摩羯座</span>
		<span class="star_date">(12.22-1.19)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/shuiping/" class="star_icon star11 <?php if ($this->_tpl_vars['seo']['id'] == 411): ?>star_current<?php endif; ?>">
		<span class="star_name">水瓶座</span>
		<span class="star_date">(1.20-2.18)</span>
	</a>
	<a href="<?php echo $this->_tpl_vars['web_url']; ?>
xingzuo/shuangyu/" class="star_icon star12 <?php if ($this->_tpl_vars['seo']['id'] == 412): ?>star_current<?php endif; ?>">
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
                       
							<li <?php if ($this->_tpl_vars['nid'] == 1): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
today/">今日运势</a></li>
							<li <?php if ($this->_tpl_vars['nid'] == 2): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
tomorrow/">明日运势</a></li>
							<li <?php if ($this->_tpl_vars['nid'] == 3): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
week/">本周运势</a></li>
							<li <?php if ($this->_tpl_vars['nid'] == 4): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
month/">本月运势</a></li>
							<li <?php if ($this->_tpl_vars['nid'] == 5): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
year/">年度运势</a></li>
							<li <?php if ($this->_tpl_vars['nid'] == 6): ?>class="on"<?php endif; ?>><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
love/">年度爱情运势</a></li>
                            
						</ul>
					</div>
					<div class="c">
						<dl class="bmt">
							<dt>
								<img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/xingzuo/v2/1.gif" width="116" height="140" alt="">
							</dt>
							<dd>
								<h4><?php echo $this->_tpl_vars['data']['title']; ?>
</h4>
								<span>有效期限：<?=date('Y-m-d',time())?></span>
							</dd>
						</dl>
                        
						<div class="mcz">
                        <?php if ($this->_tpl_vars['nid'] != 6): ?>
							<ul class="clearfix">
								<li>
									<label>综合运势：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<?php if ($this->_tpl_vars['nid'] < 3): ?><?php echo $this->_tpl_vars['list']['index']['zonghe']; ?>
<?php else: ?><?php echo $this->_tpl_vars['list']['index']['0']['star']*20; ?>
<?php endif; ?>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>爱情运势：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<?php if ($this->_tpl_vars['nid'] < 3): ?><?php echo $this->_tpl_vars['list']['index']['aiqing']; ?>
<?php else: ?><?php echo $this->_tpl_vars['list']['index']['1']['star']*20; ?>
<?php endif; ?>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>工作状况：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<?php if ($this->_tpl_vars['nid'] < 3): ?><?php echo $this->_tpl_vars['list']['index']['gongzuo']; ?>
<?php else: ?><?php echo $this->_tpl_vars['list']['index']['2']['star']*20; ?>
<?php endif; ?>px;"></span>
										</span>
									</em>
								</li>
								<li>
									<label>理财投资：</label>
									<em>
										<span class="star_b">
											<span class="star_f" style="width:<?php if ($this->_tpl_vars['nid'] < 3): ?><?php echo $this->_tpl_vars['list']['index']['caiyun']; ?>
<?php else: ?><?php echo $this->_tpl_vars['list']['index']['3']['star']*20; ?>
<?php endif; ?>px;"></span>
										</span>
									</em>
								</li>
                                
                                <?php if ($this->_tpl_vars['nid'] < 3): ?>
                                
                                    <li>
                                        <label>健康指数：</label>
                                        <em><?php echo $this->_tpl_vars['list']['index']['jiankang']; ?>
%</em>
                                    </li>
                                    <li>
                                        <label>幸运颜色：</label>
                                        <em><?php echo $this->_tpl_vars['list']['index']['yanse']; ?>
</em>
                                    </li>
                                    <li>
                                        <label>幸运数字：</label>
                                        <em><?php echo $this->_tpl_vars['list']['index']['xingyunshuzi']; ?>
</em>
                                    </li>
                                    <li>
                                        <label>开运方位：</label>
                                        <em><?php echo $this->_tpl_vars['list']['index']['kaiyunfangwei']; ?>
</em>
                                    </li>
                                
                                <?php endif; ?>
                                
							</ul>
                        <?php endif; ?>
                            
                <div class="teams">
                    <div class="left"><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/pic_all.gif" border="0"></div>
                    <div class="right">
                    <h4>整体概况</h4>
                    <p><?php echo $this->_tpl_vars['list']['content']; ?>
</p>
                    </div>
                    <div class="clear"></div>
                </div>
                
                <?php if ($this->_tpl_vars['nid'] == 5): ?><!--年度--> 
                
                	<!-- Group start -->
                    <div class="teams bg">
                    <div class="left"><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/pic_all.gif" width="55" height="60" border="0"></div>
                    <div class="right">
                    <h4>健康指数</h4>
                    <p><?php echo $this->_tpl_vars['data']['nian']['jiankang']; ?>
</p>
                    </div>
                    <div class="clear"></div>
                    </div>
                    <!-- Group end -->
                    
                    <!-- Group start -->
                    <div class="teams">
                    <div class="left"><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/pic_job.gif" width="55" height="60" border="0"></div>
                    <div class="right">
                    <h4>工作职场</h4>
                    <p><?php echo $this->_tpl_vars['data']['nian']['shiye']; ?>
</p>
                    </div>
                    <div class="clear"></div>
                    </div>
                    <!-- Group end -->
                    
                    <!-- Group start -->
                    <div class="teams bg">
                    <div class="left"><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/pic_money.gif" width="55" height="60" border="0"></div>
                    <div class="right">
                    <h4>金钱理财</h4>
                    <p><?php echo $this->_tpl_vars['data']['nian']['caifu']; ?>
</p>
                    </div>
                    <div class="clear"></div>
                    </div>
                    <!-- Group end -->
                    
                    <!-- Group start -->
                    <div class="teams">
                    <div class="left"><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/images/pic_marry.gif" width="55" height="60" border="0"></div>
                    <div class="right">
                    <h4>恋爱婚姻</h4>
                    <p><?php echo $this->_tpl_vars['data']['nian']['aiqing']; ?>
</p>
                    </div>
                    <div class="clear"></div>
                    </div>
                    <!-- Group end -->
                <?php endif; ?>
                            
                            
						</div>
                        
						<div class="mcb">
                        
							<?php if ($this->_tpl_vars['nid'] == 6): ?>
                            <dl>
								<dt class="fcolor"><strong>总体爱情运势</strong></dt>
								<dd><?php echo $this->_tpl_vars['data']['love']['zh']; ?>
</dd>
							</dl>
							<dl>
								<dt class="fcolor"><strong>女生</strong></dt>
								<dd><?php echo $this->_tpl_vars['data']['love']['nv']; ?>
</dd>
							</dl>
							<dl>
								<dt class="fcolor"><strong>男生</strong></dt>
								<dd><?php echo $this->_tpl_vars['data']['love']['nan']; ?>
</dd>
							</dl>
                            <?php endif; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
        
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/left_sx.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>

<div id="col_right" class="col_right">

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/right.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>  

</div>

</div>

</div>

</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>