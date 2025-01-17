<?php /* Smarty version 2.6.25, created on 2019-07-03 18:23:09
         compiled from ffsm/ffqm_find.tpl */ ?>
<!DOCTYPE html>
<html lang="ch-ZN" style="font-size: 41.1px;">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?php echo $this->_tpl_vars['opt_Array']['xing']; ?>
姓宝宝 - 姓名列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<link rel="shortcut icon" href="/statics/ffsm/favicon.ico"/>
    <link href="/statics/ffsm/ffqm/wap.min-v=0817.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="/statics/ffsm/ffqm/css/mip.css">
	<link href="/statics/ffsm/ffqm/css/wap.min-v=0817.css" rel="stylesheet" type="text/css"/>
	<script src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    </head>
    <body class="page-names-list mobile pc hfweishang" site-from="wap3" page-from="namelist">
<header class="public_header J_testFixedShow">
<h1 class="public_h_con">宝宝起名</h1>
<a class="public_h_home" href="/"></a><a href="/?ac=history" class="public_h_menu">我的测算</a></header>
<div  class="swiper-slide-prev">
      <div>
        <img class="img_100" src="/statics/ffsm/ffqm/images/img_banner_yd.jpg" alt=""></div>
      <div class="see_carousel_info">
        <span class=""><span style="color:#da3028;">订单编号:</span><?php echo $this->_tpl_vars['data']['oid']; ?>
</span>
	  </div>
  </div>
        <main class="site-main">
            <article class="main-content-namelist name-result">
                <ul class="tab-content">
                    <li class="active">
                        <section class="g-block-white basic-info">
                            <div class="basic">
                                <div class="basic-box">
                                    <div class="item">
                                        <div class="text-center">
                                            <p>性别</p>
                                        </div>
                                        <div class="text-left">
                                            <p><i class="user_sex">
                                            <?php if ($this->_tpl_vars['opt_Array']['sex'] == '1'): ?>男<?php elseif ($this->_tpl_vars['opt_Array']['sex'] == '2'): ?>未知<?php else: ?>女<?php endif; ?>
                                                                                            </i></p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="text-center">
                                            <p>姓氏</p>
                                        </div>
                                        <div class="text-left">
                                            <p><i class="user_family_name"><?php echo $this->_tpl_vars['opt_Array']['xing']; ?>
</i></p>
                                        </div>
                                    </div>
                                                                  <div class="item">
                                        <div class="text-center">
                                            <p>出生日期</p>
                                        </div>
                                        <div class="text-left">
                                            <p>
                                                <span class="text-primary-red">阳历：</span><i class="birthday_solar"><?php echo $this->_tpl_vars['data']['data']['y']; ?>
年<?php echo $this->_tpl_vars['data']['data']['m']; ?>
月<?php echo $this->_tpl_vars['data']['data']['d']; ?>
日 <?php echo $this->_tpl_vars['data']['data']['h']; ?>
时</i>
                                            </p>
                                            <p>
                                                <span class="text-primary-red">农历：</span><i class="birthday_lunar"><?php echo $this->_tpl_vars['data']['data']['lDate']; ?>
</i>
                                            </p>
                                        </div>
                                    </div> 
                                    <div class="item">
                                        <div class="text-center">
                                            <p>单双名</p>
                                        </div>
                                        <div class="text-left">
                                            <p class="surname-radios">
											<a <?php if ($this->_tpl_vars['opt_Array']['hs'] == '2'): ?>class="active"<?php endif; ?> href="/?ac=ffqm&oid=<?php echo $this->_tpl_vars['oid']; ?>
&token=<?php echo $this->_tpl_vars['token']; ?>
&xid=<?php echo $this->_tpl_vars['opt_Array']['xid']; ?>
&sex=<?php echo $this->_tpl_vars['opt_Array']['sex']; ?>
&hs=2&page=<?php echo $this->_tpl_vars['opt_Array']['page']; ?>
"><i></i><span>单字名</span></a>
											<a <?php if ($this->_tpl_vars['opt_Array']['hs'] == '3' || $this->_tpl_vars['opt_Array']['hs'] == ""): ?>class="active"<?php endif; ?> href="/?ac=ffqm&oid=<?php echo $this->_tpl_vars['oid']; ?>
&token=<?php echo $this->_tpl_vars['token']; ?>
&xid=<?php echo $this->_tpl_vars['opt_Array']['xid']; ?>
&sex=<?php echo $this->_tpl_vars['opt_Array']['sex']; ?>
&hs=3&page=<?php echo $this->_tpl_vars['opt_Array']['page']; ?>
"><i></i><span>双字名</span></a>
                                               
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="g-block-white namelist-warpper">
<div class="center clearfix">
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
          <p>此八字喜用神「<?php echo $this->_tpl_vars['return']['data']['xiyongshen']['data']['xishen']; ?>
」。</p>
          <p>
          </p>
        </div></div>
    </div>  
                            <h4 class="g-title-primary">为你推荐如下美名</h4>
                            <div class="name-list loadmore">
                                <ul class="list-itmes namelist_html">
								<?php $_from = $this->_tpl_vars['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                    <li class="list-item">
                                            <a href="/?ac=ffqm&oid=<?php echo $this->_tpl_vars['oid']; ?>
&token=<?php echo $this->_tpl_vars['token']; ?>
&name=<?php echo $this->_tpl_vars['v']['name']; ?>
"><?php echo $this->_tpl_vars['v']['name']; ?>
</a>
                                        </li>               
                                <?php endforeach; endif; unset($_from); ?>  
                                                                        
                                                                    </ul>
                                <ul class="list-itmes list">
                                </ul>
                            </div>
                        </section>
                    </li>
                </ul>
            </article>
    </main>
        <script>
            $(function () {
                $('.tab-nav > .menu-item').on({
                    click: function () {
                        $(this).addClass('active').siblings().removeClass('active noborder')
                        $('.tab-content>li').eq($(this).index()).addClass('active').siblings().removeClass('active');
                        $('.uer-feedback-scroll').kxbdMarquee({ direction: "up", isEqual: false,scrollDelay: 50 });
                    }
                })
                $('.btn_check_namelist').on({
                    click:function(){
                        $('.tab-content>li').eq(0).addClass('active').siblings().removeClass('active');
                        $('.tab-nav > .menu-item').eq(0).addClass('active').siblings().removeClass('active');

                    }
                })
                $("#box").animate({height:"300px"});
                function initSingleNameOptions (){
                    if(getQueryString('single') && parseInt(getQueryString('single')) == 1){
                        $('.surname-radios a').eq(0).addClass('active')
                    }else{
                        $('.surname-radios a').eq(1).addClass('active')
                    }
                }
                initSingleNameOptions ()
                $('.surname-radios a').on({
                    click: function() {
                        $(this).addClass('active').siblings().removeClass('active');
                        $('.namesReget').attr({
                            'href': '?single=' + $(this).attr('single-name')
                        })
                    }
                })

                switch ($(this).index()) {
                    case 0:
                        $url = changeURLArg($('.namesReget').attr('href'), 'single', 1);
                        $('.surname-length-value').text('单字名');
                        $('.namesReget').attr({
                            href: $url
                        });
                        break;
                    case 1:
                        $url = changeURLArg($('.namesReget').attr('href'), 'single', 0);
                        $('.surname-length-value').text('双字名');
                        $('.namesReget').attr({
                            href: $url
                        });
                        break;
                }
                $('.surname-length .surname-options').hide();

                function getShengXiaoLikeHtml(shengXiaoIndex) {
                    var zodiacLikeHtml = '';
                    var zodiacDisikeHtml = '';
                    shengxiao_jinji[shengXiaoIndex][0].forEach(function (item, index) {
                        zodiacLikeHtml += '<p><span>（' + (++index) + '）</span>' + item + '</p>';
                    })
                    shengxiao_jinji[shengXiaoIndex][1].forEach(function (item, index) {
                        zodiacDisikeHtml += '<p><span>（' + (++index) + '）</span>' + item + '</p>';
                    })
                    $('.zodiac-details-like').html(zodiacLikeHtml);
                    $('.zodiac-details-dislike').html(zodiacDisikeHtml);
                }
                $('.zodiac_detaisl_pics_tab .tab_item').on({
                    click: function(){
                        $(this).addClass('current').siblings().removeClass('current')
                        var zodiacIndexCurrent = $(this).index();
                        getShengXiaoLikeHtml(zodiacIndexCurrent)
                    }
                })

                $(function () {
                    if ($('.zodiac-details-introduction').length > 0) {
                        var zodiacIntroductionHtml = '';
                        var zodiacIndex = parseInt($('.zodiac-details-introduction').attr('zodiac-index')) - 1;
                        $('.zodiac_detaisl_pics_tab .tab_item').eq(zodiacIndex).addClass('current');
                        console.log(zodiacIndex)
                        getShengXiaoLikeHtml(zodiacIndex);

                    }
                })
            })
        </script>
      
        <script async="" src="statics/ffsm/mfqm/new/js.js"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-117273948-2');
        </script>
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
.ainuo_foot_nav{display: block; padding: 2px 0; background:#fd7d9c; position: fixed; bottom: 0; width: 100%; z-index: 99999;max-width:640px;}
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