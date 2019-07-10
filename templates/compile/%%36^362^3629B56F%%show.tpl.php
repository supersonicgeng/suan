<?php /* Smarty version 2.6.25, created on 2019-07-01 18:12:15
         compiled from index/xingzuo/show.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'index/xingzuo/show.tpl', 97, false),)), $this); ?>
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
<script type="text/javascript" src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/js/ainatec.js"></script>
<div class="wrapper">
    <div class="main">
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
        
<style type="text/css"> 
.biankuang{margin-top: 20px;}
</style>
<div class="biankuang">
<p style="text-align:center;">
	<span style="color:#EE33EE;font-size:32px;"><strong><br />
</strong></span>
</p>
<p style="text-align:center;">
	<span style="color:#F44336;font-size:94px;"><strong><?php echo $this->_tpl_vars['data']['title']; ?>
</strong></span>
</p>
<p style="text-align:center;">
	<span style="color:#EE33EE;font-size:32px;"><strong><?php echo $this->_tpl_vars['data']['time']; ?>

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
				<img src="<?php echo $this->_tpl_vars['data']['img']; ?>
" width="144" height="144" alt="<?php echo $this->_tpl_vars['data']['title']; ?>
">
			</div>
			<div class="xingzuo_info_words">
				<h1><strong class="xingzuo_info_name ffyh"><?php echo $this->_tpl_vars['data']['title']; ?>
</strong><span class="xingzuo_info_date ffyh"><?php echo $this->_tpl_vars['data']['time']; ?>
</span></h1>
				<div class="xingzuo_info_read"><?php echo $this->_tpl_vars['data']['dsc']; ?>
</div>
			</div>
		</div>
		<div class="xingzuo_info_attr">
			<?php echo $this->_tpl_vars['data']['more']; ?>

		</div>
        
        <div class="xingzuo_info_article">
        	<?php $_from = $this->_tpl_vars['top_3_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
				<a href="<?php echo $this->_tpl_vars['v']['url']; ?>
" title="<?php echo $this->_tpl_vars['v']['title']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 12) : smarty_modifier_truncate($_tmp, 12)); ?>
</a>
            <?php endforeach; endif; unset($_from); ?>
		</div>
	</div>
	<div class="xingzuo_yunshi">
		<div class="xingzuo_yunshi_con" id="myTab0_Content0">
			<div class="xingzuo_yunshi_top flag_con">
				<h2><?php echo $this->_tpl_vars['data']['title']; ?>
今天运势</h2>
				<p><?=date('Y年m月d日',time())?></p>
				<i class="flag_l"></i>
				<i class="flag_r"></i>
			</div>
			<div class="xingzuo_yunshi_attr">
				<ul class="clearfix">
					<li>综合运势：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['jintian']['index']['zonghe']; ?>
%;"></span></span></li>
					<li>爱情运势：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['jintian']['index']['aiqing']; ?>
%;"></span></span></li>
					<li>工作状况：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['jintian']['index']['gongzuo']; ?>
%;"></span></span></li>
					<li>理财投资：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['jintian']['index']['caiyun']; ?>
%;"></span></span></li>
					<li>健康指数：<?php echo $this->_tpl_vars['data']['jintian']['index']['jiankang']; ?>
%</li>
					<li>开运方位：<?php echo $this->_tpl_vars['data']['jintian']['index']['kaiyunfangwei']; ?>
</li>
					<li>幸运颜色：<?php echo $this->_tpl_vars['data']['jintian']['index']['yanse']; ?>
</li>
					<li>黑色幸运数字：<?php echo $this->_tpl_vars['data']['jintian']['index']['xingyunshuzi']; ?>
</li>
				</ul>
			</div>
			<div class="xingzuo_yunshi_read">
				<p><?php echo $this->_tpl_vars['data']['jintian']['content']; ?>
</p>
			</div>
		</div>
		<div class="xingzuo_yunshi_con1" id="myTab0_Content1" style="display:none;">
			<div class="xingzuo_yunshi_top flag_con">
				<h2><?php echo $this->_tpl_vars['data']['title']; ?>
明日运势</h2>
				<p><?=date('Y年m月d日',time()+3600)?></p>
				<i class="flag_l"></i>
				<i class="flag_r"></i>
			</div>
			<div class="xingzuo_yunshi_attr">
				<ul class="clearfix">
					<li>综合运势：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['mingtian']['index']['zonghe']; ?>
%;"></span></span></li>
					<li>爱情运势：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['mingtian']['index']['aiqing']; ?>
%;"></span></span></li>
					<li>工作状况：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['mingtian']['index']['gongzuo']; ?>
%;"></span></span></li>
					<li>理财投资：<span class="star_b"><span class="star_f" style="width:<?php echo $this->_tpl_vars['data']['mingtian']['index']['caiyun']; ?>
%;"></span></span></li>
					<li>健康指数：<?php echo $this->_tpl_vars['data']['mingtian']['index']['jiankang']; ?>
%</li>
					<li>开运方位：<?php echo $this->_tpl_vars['data']['mingtian']['index']['kaiyunfangwei']; ?>
</li>
					<li>幸运颜色：<?php echo $this->_tpl_vars['data']['mingtian']['index']['yanse']; ?>
</li>
					<li>黑色幸运数字：<?php echo $this->_tpl_vars['data']['mingtian']['index']['xingyunshuzi']; ?>
</li>
				</ul>
			</div>
			<div class="xingzuo_yunshi_read">
				<p><?php echo $this->_tpl_vars['data']['mingtian']['content']; ?>
</p>
			</div>
		</div>
		<div class="xingzuo_yunshi_tab clearfix">
			<ul id="myTab0">
				<li class="active" onClick="nTabs(this,0);">今日运势</li>
				<li class="normal" onClick="nTabs(this,1);">明日运势</li>
				<li class="normal"><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
week/" target="_blank">本周运势</a></li>
				<li class="normal"><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
month/" target="_blank">本月运势</a></li>
				<li class="normal last"><a href="<?php echo $this->_tpl_vars['web_url']; ?>
<?php echo $this->_tpl_vars['seo']['extra']; ?>
year/" target="_blank">本年运势</a></li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
