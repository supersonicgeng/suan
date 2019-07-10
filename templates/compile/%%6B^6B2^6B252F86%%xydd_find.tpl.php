<?php /* Smarty version 2.6.25, created on 2019-07-04 14:44:49
         compiled from ffsm/xydd_find.tpl */ ?>
﻿<!DOCTYPE html>
<html lang="en">
 <head> 
  <meta charset="utf-8" /> 
  <title>祈福明灯，孔明灯，许愿广场，在线专业测算</title> 
  <meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover" /> 
  <meta name="apple-mobile-web-app-capable" content="yes" /> 
  <meta name="apple-touch-fullscreen" content="yes" /> 
  <meta name="keywords" content="祈福，许愿，愿望，孔明灯，许愿树，我要许愿，实现愿望" /> 
  <meta name="description" content="开运网专业在线祈福明灯！为您提供许愿及祈福平台，致力于实现每个人心中的美好愿望，灵机文化祈福明灯祝您早日实现您的美好愿望。" /> 
  <link rel="shortcut icon" href="/statics/ffsm/favicon.ico"/>
  <meta http-equiv="Pragma" content="no-cache" /> 
  <meta http-equiv="Cache-Control" content="no-cache" /> 
  <meta http-equiv="Expires" content="0" /> 
  <meta name="apple-mobile-web-app-capable" content="yes" /> 
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> 
  <meta name="format-detection" content="telephone=no" /> 
  <meta name="format-detection" content="email=no" /> 

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> 
  <meta name="renderer" content="webkit" /> 
  <!-- uc强制竖屏 --> 
  <meta name="screen-orientation" content="portrait" /> 
  <meta name="x5-orientation" content="portrait" />
  <!-- QQ强制竖屏 --> 
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <!-- 不让百度转码 --> 
  <link rel="stylesheet" type="text/css" href="/statics/ffsm/xydd/css/xydd4.css"/>
  <script src="/statics/ffsm/xydd/js/bj-report-tryjs.min.js"></script>
  <script src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>

 </head> 
 <body> 
  <div class="container" id="container" > 
   <div class="wrapper" id="wrapper"> 
    <section id="page-result">
<header class="public_header">
<h1 class="public_h_con">许愿点灯</h1>
<a class="public_h_home" href="/"></a><a href="/?ac=history" class="public_h_menu">我的测算</a>
</header>
     <section data-reactroot="">
      <div class="content">
       <div class="user-info">
        <img src="/statics/ffsm/xydd/images/icon_right.png" alt="" />
        <p>
         <!-- react-text: 6 -->订单号：
         <!-- /react-text --><span><?php echo $this->_tpl_vars['data']['oid']; ?>
</span></p>
        <p>
         <!-- react-text: 9 -->供奉时间：
         <!-- /react-text -->
         <!-- react-text: 10 --><?php echo $this->_tpl_vars['gf_start']; ?>

         <!-- /react-text -->
         <!-- react-text: 11 -->至
         <!-- /react-text -->
         <!-- react-text: 12 --><?php echo $this->_tpl_vars['gf_end']; ?>

         <!-- /react-text -->
         <!-- react-text: 13 -->（180天）
         <!-- /react-text --></p>
        <p class="big-font">
         <!-- react-text: 15 -->支付成功，可将许愿灯存至
         <!-- /react-text --><span>相册</span></p>
       </div>
       <div class="wish-result">
        <div class="result-pic">
         <img src="<?php echo $this->_tpl_vars['xydd_img']; ?>
" alt="" />
        </div>
        <p>长按保存相册</p>
        <div class="go-square">
         <a href="/?ac=xydd"><img src="/statics/ffsm/xydd/images/go_square.png" alt="" /></a>
        </div>
       </div>
      </div>
     </section>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="ainuo_foot_nav cl" id="testFixedBtn">
    <ul>
     <li><a href="/"><i class="shouye_1"></i><p>测算首页</p></a></li>
     <li><a href="/?ac=history"><i class="wddd_1"></i><p>订单查询</p></a></li>
     <li><a href="/"class="botpost"><em><i class="lijics_1"></i></em><p>继续测算</p></a></li>
     <li><a href="/"><i class="gengduo_1"></i><p>更多测算</p></a></li>
     <li><a href="/?ac=member"><i class="grzx_1"></i><p>个人中心</p></a></li>
    </ul>
</div>
<style type="text/css">
.ainuo_foot_nav{display: block; padding: 2px 0; background:#6e477e; position: fixed; bottom: 0; width: 100%; z-index: 99999;max-width: 720px;}
.ainuo_foot_nav li{width: 20%; text-align: center; float: left;}
.ainuo_foot_nav li a{width: 100%; display: block;}
.ainuo_foot_nav .foothover i{color: #f13030;}
.ainuo_foot_nav li i{display: block; line-height: 25px; height: 25px; margin: auto; padding: 0; width: 25px; overflow: hidden; background-size: 100%;}
.ainuo_foot_nav li a.botpost{position: relative; margin-top: -11px; background-color: rgba(0,0,0,0.0);}
.ainuo_foot_nav li a.botpost em{background: #ffffff; padding: 2px; border: 1px solid #ff5e5e; display: block; border-radius: 50%; width: 30px; height: 30px; margin: 0 auto; margin-bottom: 2px;padding-bottom: 0px;}
.ainuo_foot_nav li p{overflow: hidden; font-size: 12px; height: 16px; line-height: 16px; color: #fff; font-weight: 400;}
.shouye_1{background: url(/statics/ffsm/public/images/shouye.png) no-repeat;}
.wddd_1{background: url(/statics/ffsm/public/images/dingdan.png) no-repeat;}
.lijics_1{background: url(/statics/ffsm/public/images/suan.png) no-repeat;}
.gengduo_1{background: url(/statics/ffsm/public/images/gengduo.png) no-repeat;}
.grzx_1{background: url(/statics/ffsm/public/images/grzx.png) no-repeat;}
</style>
    </section> 
   </div> 
  </div> 
 <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/dl_ck.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>