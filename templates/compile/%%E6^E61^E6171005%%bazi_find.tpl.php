<?php /* Smarty version 2.6.25, created on 2019-07-03 15:26:06
         compiled from ffsm/bazi_find.tpl */ ?>
﻿<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8"/>
	<title>八字精批测算结果-开运网</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="yes" name="apple-mobile-web-app-capable"/>
	<meta content="black" name="apple-mobile-web-app-status-bar-style"/>
	<meta content="telephone=no" name="format-detection"/>
	<link rel="shortcut icon" href="/statics/ffsm/favicon.ico"/>
	<link href="/statics/ffsm/bazi/page1.css" rel="stylesheet" type="text/css"/>
	<script src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
<header class="public_header">
	<h1 class="public_h_con">八字精批结果</h1>
	<a class="public_h_home" href="/"></a><a href="/?ac=history" class="public_h_menu">我的测算</a></header>
<div class="public_banner">
	<img style="width: 100%;" src="/statics/ffsm/public/images/banner_wd.png" alt="八字精批"/>
</div>
<audio src="" id="myAudio"></audio>
<section class="page3-bg-1">
  <div class="material-box">
    <div class="material-img1"></div>
    <div class="material-img2"></div>
    <div class="top clearfix">
      <em class="left center-text">您输入的个人资料</em>
    </div>
    <div class="center clearfix">
      <div class="infor clearfix">
        <div class="infor1 left">
          <span class="key-text">性别:</span>
          <span class="value-text"><?php if ($this->_tpl_vars['data']['data']['gender'] == 1): ?>男<?php else: ?>女<?php endif; ?></span></div>
        <div class="infor2 left">
          <span class="key-text">生肖:</span>
          <span class="value-text"><?php echo $this->_tpl_vars['return']['user']['sx']; ?>
</span></div>
      </div>
      <div class="infor-data clearfix">
        <span class="key-text left">生辰:</span>
        <div class="value-text left">
          <p><?php echo $this->_tpl_vars['data']['data']['y']; ?>
年<?php echo $this->_tpl_vars['data']['data']['m']; ?>
月<?php echo $this->_tpl_vars['data']['data']['d']; ?>
日 <?php echo $this->_tpl_vars['data']['data']['h']; ?>
时</p>
          <p><?php echo $this->_tpl_vars['data']['data']['lDate']; ?>
</p>
        </div>
      </div>
<div class="dashi_point_warp">
	<div class="dashi_point_title">你有一条留言:</div>
	<div class="dashi_point_content">
		<img src="/statics/ffsm/bazijp/img/img-dashitouxiang@2x.png" alt="大师头像" class="portrint">
			<div class="dashi_point_box" data-cid="one">
				<img src="/statics/ffsm/bazijp/img/img_yuyin3.png" alt="语音进度" id="Aone" class="dashi_icon">
			</div>
			<div class="dashi_audio_time newMsg">00:20"</div>
		</div>
</div>
      <div class="infor-table">
        <p class="key-text">您的五行八字资料</p>
        <table>
          <tbody>
            <tr>
              <th>八字</th>
              <th>年柱</th>
              <th>月柱</th>
              <th>日柱</th>
              <th>时柱</th></tr>
            <tr>
              <td>天干</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['0']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['2']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['4']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['6']; ?>
</td></tr>
            <tr>
              <td>地支</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['1']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['3']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['5']; ?>
</td>
              <td><?php echo $this->_tpl_vars['return']['user']['bazi']['7']; ?>
</td></tr>
          </tbody>
        </table>
      </div>
      <div class="solution-box clearfix">
        <div class="sol-left">
          <p>本命属<?php echo $this->_tpl_vars['cookies']['sx']; ?>
，<?php echo $this->_tpl_vars['nayin']['0']['layin']; ?>
命。<?php echo $this->_tpl_vars['wang']['wang']; ?>
<?php echo $this->_tpl_vars['wang']['que']; ?>
；日主天干为<?php echo $this->_tpl_vars['nayin']['0']['layin']; ?>
<?php echo $this->_tpl_vars['wang']['wang']; ?>
<?php echo $this->_tpl_vars['wang']['que']; ?>
<?php echo $this->_tpl_vars['cookies']['bazi']['4']; ?>
，生于<?php echo $this->_tpl_vars['cookies']['siji']; ?>
季。</p>
          <p>
          </p>
        </div>
        <!--<div class="sol-right">-->
        <!--<img src="//statics/ffsm/bazimf/images/pic8.png" alt="">-->
        <!--</div>--></div>
    </div>
  </div>
  <div class="content-box page3-content">
    <div class="title clearfix" style="display: flex">
      <img style="text-align: center;margin: 2% auto;" src="/statics/ffsm/bazimf/images/pic-text4.png" alt=""></div>
    <div class="list-box list1">
      <h2 class="clearfix">
        <span class="icon icon1"></span>
        <em>八字排盘</em></h2>
      <div class="list-text">
        <span class="red">提示:</span>
        <span>八字命盘从阴阳干支三合历取得。上排是天干，由五行「金水木火土」轮流排列。下排是地支，用十二生肖顺序排列。十二生肖可转换成五行。</span></div>
      <table>
        <tbody>
          <tr>
            <th>八字</th>
            <th>年柱</th>
            <th>月柱</th>
            <th>日柱</th>
            <th>时柱</th></tr>
          <tr>
            <!--1=天干 2地支 3本气 4余气 5杂气-->
            <th>天干</th>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['0']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen3']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['2']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen1']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['4']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen4']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['6']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen2']; ?>
</td></tr>
          <tr>
            <th>地支</th>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['1']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen1']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['3']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen2']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['5']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen3']; ?>
</td>
            <td><?php echo $this->_tpl_vars['return']['user']['bazi']['7']; ?>
/<?php echo $this->_tpl_vars['pp']['shishen4']; ?>
</td></tr>
          <tr>
            <th>藏干</th>
            <td><?php echo $this->_tpl_vars['pp']['zanggan1']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['zanggan2']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['zanggan3']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['zanggan4']; ?>
</td></tr>
          <tr>
            <th>空亡</th>
            <td><?php echo $this->_tpl_vars['pp']['ykw']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['mkw']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['rkw']; ?>
</td>
            <td><?php echo $this->_tpl_vars['pp']['hkw']; ?>
</td></tr>
         <tr>
           <th>十二长生</th>
           <td><?php echo $this->_tpl_vars['pp']['srchangsheng']['0']; ?>
</td>
           <td><?php echo $this->_tpl_vars['pp']['srchangsheng']['1']; ?>
</td>
           <td><?php echo $this->_tpl_vars['pp']['srchangsheng']['2']; ?>
</td>
           <td><?php echo $this->_tpl_vars['pp']['srchangsheng']['3']; ?>
</td></tr>
         <tr>
           <th>神煞</th>
           <td><?php echo $this->_tpl_vars['pp']['shenshas_y']['0']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_y']['1']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_y']['2']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_y']['3']; ?>
</br></td>
            <td>
              <?php echo $this->_tpl_vars['pp']['shenshas_m']['0']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_m']['1']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_m']['2']; ?>
</br>
              <?php echo $this->_tpl_vars['pp']['shenshas_m']['3']; ?>
</br></td>
           <td>
            <?php echo $this->_tpl_vars['pp']['shenshas_d']['0']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_d']['1']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_d']['2']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_d']['3']; ?>
</br></td>
           <td>
            <?php echo $this->_tpl_vars['pp']['shenshas_h']['0']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_h']['1']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_h']['2']; ?>
</br>
            <?php echo $this->_tpl_vars['pp']['shenshas_h']['3']; ?>
</br></td>
            </tr>
            <th>命宫</th>
            <td colspan="4"><?php echo $this->_tpl_vars['pp']['minggong']; ?>
</td></tr>
          <tr>
            <th>胎元</th>
            <td colspan="4"><?php echo $this->_tpl_vars['pp']['taiyuan']; ?>
</td></tr>
          <tr>
            <th>胎息</th>
            <td colspan="4"><?php echo $this->_tpl_vars['return']['user']['bazi']['6']; ?>
<?php echo $this->_tpl_vars['return']['user']['bazi']['7']; ?>
</td></tr>
          <tr>
            <th>日空</th>
            <td colspan="4"><?php echo $this->_tpl_vars['pp']['xkrgz']; ?>
</td></tr>
        </tbody>
      </table>
    </div>
    <!--<div class="list-box list2">
      <h2 class="clearfix">
        <span class="icon icon2"></span>
        <em>吉神凶煞</em></h2>
      <table>
        <tbody>
          <tr>
            <th>四柱</th>
            <th>神煞</th></tr>
          <tr>
            <th>年柱</th>
            <td>月德 天乙贵人</td></tr>
          <tr>
            <th>月柱</th>
            <td>病符 亡神 反朝桃花 四大空亡 天福贵 福星贵 截路空亡 大败</td></tr>
          <tr>
            <th>日柱</th>
            <td>福德 天喜 桃花 绞煞 天德 流霞 阴阳差错 交神</td></tr>
          <tr>
            <th>时柱</th>
            <td>岁破 灾煞 天哭</td></tr>
        </tbody>
      </table>
    </div>-->
    <div class="list-box list3">
      <h2 class="clearfix">
        <span class="icon icon3"></span>
        <em>五行综述</em></h2>
      <table>
        <tbody>
          <tr>
            <th>八字</th>
            <th><?php echo $this->_tpl_vars['return']['user']['bazi']['0']; ?>
<?php echo $this->_tpl_vars['return']['user']['bazi']['1']; ?>
</th>
            <th><?php echo $this->_tpl_vars['return']['user']['bazi']['2']; ?>
<?php echo $this->_tpl_vars['return']['user']['bazi']['3']; ?>
</th>
            <th><?php echo $this->_tpl_vars['return']['user']['bazi']['4']; ?>
<?php echo $this->_tpl_vars['return']['user']['bazi']['5']; ?>
</th>
            <th><?php echo $this->_tpl_vars['return']['user']['bazi']['6']; ?>
<?php echo $this->_tpl_vars['return']['user']['bazi']['7']; ?>
</th></tr>
			<tr>
            <th>五行</th>
            <td><?php echo $this->_tpl_vars['cookies']['wh']['0']; ?>
<?php echo $this->_tpl_vars['cookies']['wh']['1']; ?>
</td>
            <td><?php echo $this->_tpl_vars['cookies']['wh']['2']; ?>
<?php echo $this->_tpl_vars['cookies']['wh']['3']; ?>
</td>
            <td><?php echo $this->_tpl_vars['cookies']['wh']['4']; ?>
<?php echo $this->_tpl_vars['cookies']['wh']['5']; ?>
</td>
            <td><?php echo $this->_tpl_vars['cookies']['wh']['6']; ?>
<?php echo $this->_tpl_vars['cookies']['wh']['7']; ?>
</td>
                </tr>
        </tbody>
      </table>
    </div>
</div>
  <div class="content-box page3-content">
    <div class="title" style="display: flex">
      <img style="text-align: center;margin: 2% auto;" src="/statics/ffsm/bazimf/images/pic-text2.png" alt=""></div>
    <div class="content-warp1">
      <div class="warp1-text-box">
        <h3>●性格分析:
          <span></span></h3>
        <div class="warp1-text">
		  <p><?php echo $this->_tpl_vars['xgfx']; ?>
</p>
          <p><?php echo $this->_tpl_vars['rglm']['xgfx']; ?>
</p>
          </div>
      </div>
      <div class="warp1-text-box">
        <h3>●爱情分析:
          <span></span></h3>
        <div class="warp1-text">
		<p>您命中有:红艳桃花<?php if ($this->_tpl_vars['return']['data']['zonghe']['th']): ?><?php echo $this->_tpl_vars['return']['data']['zonghe']['th']; ?>
<?php else: ?>1<?php endif; ?>朵</p>
          <p><?php echo $this->_tpl_vars['rglm']['aqfx']; ?>
</p></div>
      </div>
      <div class="warp1-text-box">
        <h3>●事业分析:
          <span></span></h3>
        <div class="warp1-text">
		<p><?php echo $this->_tpl_vars['rglm']['syfx']; ?>
</p>
		<p><?php echo $this->_tpl_vars['tywh']['hyhw']; ?>
</p>
		</div>
      </div>
      <div class="warp1-text-box">
        <h3>●健康分析:
          <span></span></h3>
        <div class="warp1-text">
		<p><?php echo $this->_tpl_vars['return']['data']['rgxx']['jkfx']; ?>
</p>
		<p>易患疾病:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['jb']; ?>
</p>
		<p>易发症状:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['zz']; ?>
</p>
		<p>从中医养生上来说，您基本上是<font color="#ff4632"><?php echo $this->_tpl_vars['return']['info']['wharr']['wang']; ?>
</font>型人。</p>
		<p>养生要点:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['yd']; ?>
</p>
		<p>生活起居:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['sh']; ?>
</p>
		<p>饮食调养:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['ys']; ?>
</p>
		<p>保健膳食:<?php echo $this->_tpl_vars['return']['info']['wharr']['whjk']['bj']; ?>
</p></div>
      </div>
      <div class="warp1-text-box">
        <h3>●财运分析:
          <span></span></h3>
        <div class="warp1-text">
          <p><?php echo $this->_tpl_vars['rglm']['cyfx']; ?>
</p>
        </div>
      </div>
      <div class="warp1-text-box">
        <h3>●三命通会:
          <span></span></h3>
        <div class="warp1-text">
          <p><?php echo $this->_tpl_vars['sxth']['tf1']; ?>
</p>
          <p><?php echo $this->_tpl_vars['sxth']['tf2']; ?>
</p>
        </div>
      </div>
      <div class="warp1-text-box">
        <h3>●未来十年:
          <span></span></h3>
        <div class="warp1-text">
          <p><?php echo $this->_tpl_vars['myq_text']; ?>
</p>
        </div>
      </div>
<div class="dashi_point_warp border2">
	<div class="dashi_point_title">你有一条留言:</div>
	<div class="dashi_point_content">
		<img src="/statics/ffsm/bazijp/img/img-dashitouxiang@2x.png" alt="大师头像" class="portrint">
		<div class="dashi_point_box" data-cid="two">
			<img src="/statics/ffsm/bazijp/img/img_yuyin3.png" alt="语音进度" id="Atwo" class="dashi_icon">
		</div>
		<div class="dashi_audio_time newMsg">00:45"</div>
	</div>
	<p class="kefu_point">如果对结果有不懂，或者想深度和大师一对一私聊的话，可以点击下面的按钮和大师沟通。</p>
	<a href="https://www.03ky.com/lb-2-1.html"><div class="kefu_btn">与大师互动问答</div></a>
<audio src="https://www.03ky.com/m/video/bzjp_bottom5.mp3" id="Atwo"></audio>
</div>
    </div>
  </div>
</section>

<script>
//播放音频
        var num = 1;
        var clearTime;
        function setTimeAnimation(NodeClass){
            num++;
            if(num >3){
                num=1;
            }
            clearTime = setTimeout(function(){
                $(NodeClass).attr('src',"/statics/ffsm/bazijp/img/img_yuyin"+num+".png");
                setTimeAnimation(NodeClass);
            },400)
        }
        

        var audio = document.getElementById('myAudio');
        document.addEventListener("WeixinJSBridgeReady", function () {

            audio.play();
        }, false);


        $('.dashi_point_box').on('click',function(){
            if($(this).attr('data-cid')=='one'){
                clearTimeout(clearTime);
                if($(this).hasClass('play')){
                    $(this).removeClass('play');
                    audio.pause();
                }else{
                    $('.dashi_point_box').removeClass('play');
                    $(this).addClass('play');
                    $('#myAudio').attr('src','/m/video/bzjp_top.mp3');
                    audio.play();
                    $(this).next('.dashi_audio_time').removeClass('newMsg');
                }
                
            }else if($(this).attr('data-cid')=='two'){
                clearTimeout(clearTime);
                if($(this).hasClass('play')){
                    $(this).removeClass('play');
                    audio.pause();
                }else{
                    $('.dashi_point_box').removeClass('play');
                    $(this).addClass('play');
                    $('#myAudio').attr('src','/m/video/bzjp_bottom.mp3');
                    audio.play();
                    $(this).next('.dashi_audio_time').removeClass('newMsg');
                }
            }
        });

        audio.addEventListener("play", function(){

            if($('#myAudio').attr('src')=='/m/video/bzjp_top5.mp3'){
                clearTimeout(clearTime);
                $('#Atwo').attr('src',"/statics/ffsm/bazijp/img/img_yuyin.png");
                setTimeAnimation('#Aone');
            }
            if($('#myAudio').attr('src')=='/m/video/bzjp_bottom.mp3'){
                clearTimeout(clearTime);
                $('#Aone').attr('src',"/statics/ffsm/bazijp/img/img_yuyin.png");
                setTimeAnimation('#Atwo');
            }
        });
        
        audio.addEventListener("pause", function(){
            $('.dashi_point_box').removeClass('play');
            if($('#myAudio').attr('src')=='/m/video/bzjp_top.mp3'){
                clearTimeout(clearTime);
                $('#Aone').attr('src',"/statics/ffsm/bazijp/img/img_yuyin3.png");
            }
            if($('#myAudio').attr('src')=='/m/video/bzjp_bottom.mp3'){
                clearTimeout(clearTime);
                $('#Atwo').attr('src',"/statics/ffsm/bazijp/img/img_yuyin3.png");
            }
        });
</script>
<div class="ainuo_foot_nav cl" id="testFixedBtn" style="height: 44px;">
    <ul>
     <li><a href="/"><i class="shouye_1"></i><p>测算首页</p></a></li>
     <li><a href="/?ac=history"><i class="wddd_1"></i><p>订单查询</p></a></li>
     <li><a href="/"class="botpost"><em><i class="lijics_1"></i></em><p>继续测算</p></a></li>
     <li><a href="/"><i class="gengduo_1"></i><p>更多测算</p></a></li>
     <li><a href="/?ac=member"><i class="grzx_1"></i><p>个人中心</p></a></li>
    </ul>
</div>
<style type="text/css">
.ainuo_foot_nav{display: block; padding: 2px 0; background:#ff2e0c; position: fixed; bottom: 0; width: 100%; z-index: 99999;max-width:640px;}
.ainuo_foot_nav ul{margin: 0;padding: 0;}
.ainuo_foot_nav li{width: 20%; text-align: center; float: left;}
.ainuo_foot_nav li a{width: 100%; display: block;}
.ainuo_foot_nav .foothover i{color: #f13030;}
.ainuo_foot_nav li i{display: block; line-height: 25px; height: 25px; margin: auto; padding: 0; width: 25px; overflow: hidden; background-size: 100%;}
.ainuo_foot_nav li a.botpost{position: relative; margin-top: -11px; background-color: rgba(0,0,0,0.0);}
.ainuo_foot_nav li a.botpost em{background: #ffffff; padding: 2px; border: 1px solid #ff5e5e; display: block; border-radius: 50%; width: 30px; height: 30px; margin: 0 auto; margin-bottom: 2px;padding-bottom: 0px;}
.ainuo_foot_nav li p{overflow: hidden; font-size: 12px; height: 16px; line-height: 16px; color: #fff; font-weight: 400;margin: 0;padding: 0;}
.shouye_1{background: url(/statics/ffsm/public/images/shouye.png) no-repeat;}
.wddd_1{background: url(/statics/ffsm/public/images/dingdan.png) no-repeat;}
.lijics_1{background: url(/statics/ffsm/public/images/suan.png) no-repeat;}
.gengduo_1{background: url(/statics/ffsm/public/images/gengduo.png) no-repeat;}
.grzx_1{background: url(/statics/ffsm/public/images/grzx.png) no-repeat;}
</style>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './ffsm/dl_ck.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>