<?php /* Smarty version 2.6.25, created on 2019-07-02 10:02:28
         compiled from index/paipan/bazi_find.tpl */ ?>
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
static/bazi/css/paipan/smcss.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/daohang.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        </div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/path.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
 <div class="cont">
<div class="col_left">

<div class="fn_bz2 fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1>生辰八字</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>八字排盘结果</h6>
<div style="height:35px; width:672px; overflow:hidden;">
<span style="float:left;"><input type="button" name="Submit0" value="确认出生日期准确，然后点击这里复制结果" onClick="xcopyf();" style="float: left"></span>
</div>

<div id="html" style="display:none;">
命主姓名：<?php echo $this->_tpl_vars['info']['bzname']; ?>
。<br>公历：<?php echo $this->_tpl_vars['data']['bzdate']; ?>
<br>农历：<?php echo $this->_tpl_vars['data']['nongdate']; ?>
<br>
胎元：<?php echo $this->_tpl_vars['data']['taiyuan']; ?>
[<?php echo $this->_tpl_vars['data']['nayintaiyuan']; ?>
]<br>
命宫：<?php echo $this->_tpl_vars['data']['minggong']; ?>
[<?php echo $this->_tpl_vars['data']['nayinminggong']; ?>
]<br>
起运:命主于出生后<?php echo $this->_tpl_vars['data']['qysj']; ?>
开始起运<br>
交运:命主于公历<?php echo $this->_tpl_vars['zysj']; ?>
交运，以后每逢尾数带<?php echo $this->_tpl_vars['data']['sub_zysj']; ?>
的年份交脱运<br>
八字:<?php if ($this->_tpl_vars['info']['sex'] == 1): ?>乾造<?php else: ?>坤造<?php endif; ?><br>
十神:<?php echo $this->_tpl_vars['data']['shishen']; ?>
<br>
日元:<?php echo $this->_tpl_vars['data']['riyuan']; ?>
<br>
四柱:<?php echo $this->_tpl_vars['data']['sizhu']; ?>
<br>
节气:<?php echo $this->_tpl_vars['data']['jqstr']; ?>
<br>
岁次:<?php echo $this->_tpl_vars['data']['suicihtmljs']; ?>
<br>
始于:<?php echo $this->_tpl_vars['data']['liunianhtmljs']; ?>
<br>
流年:<?php echo $this->_tpl_vars['data']['liunian2htmljs']; ?>
<br>
止于:<?php echo $this->_tpl_vars['data']['liunian3htmljs']; ?>
<br>
</div>

<p class="info_prop">
<span>姓名：<strong><?php echo $this->_tpl_vars['info']['bzname']; ?>
</strong></span>
<span>性别：<strong><?php if ($this->_tpl_vars['info']['sex'] == 1): ?>男<?php else: ?>女<?php endif; ?></strong></span>
<span>出生地：<strong><?php echo $this->_tpl_vars['info']['area']; ?>
<?php if ($this->_tpl_vars['info']['taiyang'] == 1): ?>(经度：<?php echo $jd1?>度<?php echo $jd2?>分)<?php endif; ?></strong></span>
<span>排盘方式：<strong>公历排盘</strong></span><br/><br/>
<span>公历：<strong><?php echo $this->_tpl_vars['data']['bzdate']; ?>
</strong></span>
<span>农历：<strong><?php echo $this->_tpl_vars['data']['nongdate']; ?>
</strong></span>
</p>
</div>


<div class="mod_box_t3 fn_box" style="margin-top:20px;">
<div class="box_con ret_con">


<div class="pp_box" id="Layerurl">
 
<?php if ($this->_tpl_vars['data']['taiyang'] == 1): ?>
  &nbsp;&nbsp;&nbsp;&nbsp;出生钟点时：".date("Y年m月d日H时i分",$notydate)."<br>";
  &nbsp;&nbsp;&nbsp;&nbsp;实际太阳时：".date("Y年m月d日H时i分",$bzdate)."<br>";
<?php endif; ?>

<span class='jiachu'>胎元： &nbsp;&nbsp;&nbsp;</span><?php echo $this->_tpl_vars['data']['taiyuan']; ?>
<span class=sm_lv>[<?php echo $this->_tpl_vars['data']['nayintaiyuan']; ?>
]</span>  &nbsp;&nbsp;<span class='jiachu'>命宫：</span><?php echo $this->_tpl_vars['data']['minggong']; ?>
<span class=sm_lv>[<?php echo $this->_tpl_vars['data']['nayinminggong']; ?>
]</span><br>


<span class="jiachu">起运： &nbsp;&nbsp;&nbsp;</span>命主于出生后<span class="sm_lv"><?php echo $this->_tpl_vars['data']['qysj']; ?>
</span>开始起运<br>
<span class="jiachu">交运： &nbsp;&nbsp;&nbsp;</span>命主于公历<span class="sm_hong"><?php echo $this->_tpl_vars['data']['zysj']; ?>
</span>交运，以后每逢尾数带<span class="sm_hong"><?php echo $this->_tpl_vars['data']['sub_zysj']; ?>
</span>的年份交脱运<br>
<span class="jiachu">八字： &nbsp;&nbsp;&nbsp;</span>乾造<br />

<div class="sm_kuang2 jiachu">十神:</div>
<div class="sm_kuang2"><?php echo $this->_tpl_vars['data']['shishen1']; ?>
</div>
<div class="sm_kuang2"><?php echo $this->_tpl_vars['data']['shishen2']; ?>
</div>
<div class="sm_kuang2">日元</div>
<div class="sm_kuang2"><?php echo $this->_tpl_vars['data']['riyuan']; ?>
</div>
<div class="sm_clear"></div>

<div class="sm_kuang2 jiachu">四柱:</div>
<div class="sm_kuang2 sm_hong"><?php echo $this->_tpl_vars['data']['ygz']; ?>
</div>
<div class="sm_kuang2 sm_hong"><?php echo $this->_tpl_vars['data']['mgz']; ?>
</div>
<div class="sm_kuang2 sm_hong"><?php echo $this->_tpl_vars['data']['rgz']; ?>
</div>
<div class="sm_kuang2 sm_hong"><?php echo $this->_tpl_vars['data']['hgz']; ?>
</div>
<div class="sm_kuang2">空(<?php echo $this->_tpl_vars['data']['xkrgz']; ?>
)</div>
<div class="sm_clear"></div>

<div class="sm_kuang2 jiachu">藏干:</div>
<div class="sm_kuang4 sm_lan"><?php echo $this->_tpl_vars['data']['zanggan1']; ?>
</div>
<div class="sm_kuang4 sm_lan"><?php echo $this->_tpl_vars['data']['zanggan2']; ?>
</div>
<div class="sm_kuang4 sm_lan"><?php echo $this->_tpl_vars['data']['zanggan3']; ?>
</div>
<div class="sm_kuang4 sm_lan"><?php echo $this->_tpl_vars['data']['zanggan4']; ?>
</div>
<div class="sm_clear"></div>

<div class="sm_kuang2 jiachu">纳音:</div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><?php echo $this->_tpl_vars['data']['nayin1']; ?>
</div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><?php echo $this->_tpl_vars['data']['nayin2']; ?>
</div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><?php echo $this->_tpl_vars['data']['nayin3']; ?>
</div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><?php echo $this->_tpl_vars['data']['nayin4']; ?>
</div>
<div class="sm_clear"></div>

<div class="sm_kuang2 jiachu">节气：</div>

<div class="sm_kuang3"><?php echo $this->_tpl_vars['data']['jqstr']; ?>
</div>

<div class="sm_clear"></div>
<div class="sm_kuang2 jiachu">大运:</div>
<div class="fl">
<?php echo $this->_tpl_vars['data']['dayunhtml']; ?>

</div>
<div class="sm_clear"></div>
<div class="sm_kuang2 jiachu">岁次：</div>
<?php echo $this->_tpl_vars['data']['suicihtml']; ?>


<div class="sm_clear"></div>
<div class="sm_kuang2 jiachu">始于：</div>
<?php echo $this->_tpl_vars['data']['liunianhtml']; ?>

<div class="sm_clear"></div>
<div class="sm_kuang2 jiachu">流年：</div>
<div style="float:left">
<?php echo $this->_tpl_vars['data']['liunian2html']; ?>

</div>
<div class="sm_clear"></div>
<div class="sm_kuang2 jiachu">止于：</div>
<?php echo $this->_tpl_vars['data']['liunian3html']; ?>

<div class="sm_clear"></div>


</div>


</div>



</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="<?php echo $this->_tpl_vars['web_url']; ?>
paipan/bazi/">重新测算</a>
</div>
<div class="tips_area">
本算命系统来源于中国民俗学的一些测算方法，并非科学研究成果，仅供休闲娱乐，请勿迷信，按此操作一切后果自负！
</div>
</div>
<i class="flag_tl_t1"></i>
<i class="flag_tr_t1"></i>
<i class="flag_bl_t1"></i>
<i class="flag_br_t1"></i>
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
         <?php   include('templates/public/footer.tpl.php'); ?>  
 <script>
function xcopyf(){
		var str = '';
	    str = str.replace(/<[^>].*?>/g,"");
         var obj=document.getElementById("html");
          window.clipboardData.setData("text",obj.innerText)
    alert("复制成功，直接粘贴就可以了。^-^");
}
</script>  
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
