<?php /* Smarty version 2.6.25, created on 2019-07-04 10:36:50
         compiled from ffsm/user_txmx.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'ffsm/user_txmx.tpl', 94, false),)), $this); ?>
<!DOCTYPE html>
<html>
<head>
<title>会员中心-提现明细</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
<meta name="format-detection" content="telephone=no">
<!--a-->
<link rel="shortcut icon" href="/statics/ffsm/favicon.ico"/>
<link rel="stylesheet"href="/statics/user/css/frozen.min.css">
<link rel="stylesheet"href="/statics/user/css/style.min.css">
<style type="text/css">
#footer{height:56px;}#footer i{font-size:1.6rem}#footer li.active,#footer li:active,#footer li:hover{font-size:.7rem}
.ui-tiled li{font-size:.7rem}
</style> 
<style>
.open_vip{
background-color: lightcyan;;
}
.ui-border li i em{
font-size: 0.75rem;
}
.aboutpic li{
margin-top: 0.6rem
}
.aboutpic li i img{
width: 2.5rem;
height: 2.5rem;
}
</style>
</head>
<body>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/user_header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<header id="header" class="ui-header ui-header-positive ui-border-b" >
<h1></h1>
</header>
<section class="jilu" style=" padding-top:0px;"> 
<a href="?ac=user_tgjl">
<li>
<h2 class="t2 l" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">推广记录</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a>
<a href="?ac=user_wdxx">
<li>
<h2 class="t2 l" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">我的二级下线</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a> 
<a href="?ac=user_wdxxj">
<li>
<h2 class="t2 l" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">我的三级下线</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a> 
<a href="?ac=user_yjtx">
<li>
<h2 class="t2 l "><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">佣金提现</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a> 
<a href="?ac=user_txmx">
<li>
<h2 class="t2 l cl-red" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">提现明细</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a>
<a href="?ac=user_wdcs">
<li>
<h2 class="t2 l" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">我的测算</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a>
<a href="?ac=loginout">
<li>
<h2 class="t2 l" ><img src="/statics/user/picture/ustb.png" width="12" height="12" style="margin-right:5px;">退出登录</h2>
<span class="r login_yj"> &gt; </span>
</li>
</a>
</section>
  
  <?php $_from = $this->_tpl_vars['tx_result']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['i']):
?>
    <?php if ($this->_tpl_vars['i']['uid']): ?>
	<div class="public_ddxx">
      <div class="public_k">
        <span class="public_des">[提现金额] <font color="#ff0000" ><?php echo $this->_tpl_vars['i']['dl_jf']; ?>
元</font></span><span class="public_pyzt"><?php if ($this->_tpl_vars['i']['dl_sc'] == 1): ?><font color="#008000" >已打款</font><?php elseif ($this->_tpl_vars['i']['dl_sc'] == 2): ?><font color="#ff0000" >打款失败</font><?php else: ?>未打款<?php endif; ?></span>      </div> 
	<div class="public_k">
      <span class="public_pyzt_ddxx">提现渠道：<?php if ($this->_tpl_vars['i']['dl_txfs'] == 1): ?>支付宝<?php elseif ($this->_tpl_vars['i']['dl_txfs'] == 2): ?>微信<?php else: ?>未知<?php endif; ?></span>
    </div>
	<div class="public_k">
      <span class="public_pyzt_ddxx">联系电话：<?php echo $this->_tpl_vars['i']['dl_txtel']; ?>
</span>
    </div>
      <div class="public_k">
      <span class="public_pyzt_ddxx">申请时间：<?php echo ((is_array($_tmp=$this->_tpl_vars['i']['add_time'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
</span>
    </div>
	<div class="public_k">
      <span class="public_pyzt_ddxx">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：<?php echo $this->_tpl_vars['i']['dl_txbz']; ?>
</span>
    </div>
  	
  </div>
     <?php endif; ?>
 <?php endforeach; endif; unset($_from); ?> 
   
    
<div class="page" align="center"> 
<a href="/?ac=user_txmx>">首页</a> <a href="/?ac=user_txmx&page=<?php echo $this->_tpl_vars['pagepre']; ?>
" >< 上一页</a> <a href="/?ac=user_txmx&page=<?php echo $this->_tpl_vars['pagenext']; ?>
">下一页 ></a> <a href="/?ac=user_txmx&page=<?php echo $this->_tpl_vars['endpage']; ?>
">末页</a></div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/user_footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>
 