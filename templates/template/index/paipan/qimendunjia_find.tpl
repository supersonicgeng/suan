<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">

<div class="fn_bz5 fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1>奇门遁甲</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>奇门遁甲在线排盘系统</h6>
</div>

<div class="box_con ret_con">


<div class="qm_box" id="Layerurl">

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1 qm_table" id="paipanTable">
    <tbody>
      
      <tr>
        <td class="new"><strong>姓名：</strong><{$info.name}> <strong>出生年:</strong><{$info.birthyear}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> 性别：</strong>
          <{if $info.sex==1}>男<{else}>女<{/if}>
          <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;占事：</strong><{$info.zhanshi}></td>
        </tr>
      <tr>
        <td class="new"><strong>
        <{if $info.jutang==0}>
		公历时间</strong>：<{$data.timed}>　　<strong>农历时间：</strong><{$data.nongn}>
        <br><strong>节气</strong><{$data.jieqq}><{$data.yuan}><br>
        <{/if}>
        
<strong>干支：</strong><{$data.ygz}><{$data.mgz}><{$data.dgz}><{$data.tgz}>
<br><strong>当日旬空</strong>：<{$data.yxunk}></strong>(年)&nbsp;<{$data.mxunk}>(月)&nbsp;<{$data.rxunk}>(日)&nbsp;<{$data.txunk}>(时)
<br>&nbsp;
<br>此局为<font color="#999933"><{$data.dunju}></font>&nbsp;&nbsp;直符<font color="#999933">:<{$data.zhifu}></font>&nbsp;&nbsp;直使<font color="#999933">:<{$data.zhishi}></font>
</td>      </tr>
      <tr>
        <td align="center" class="new">
        
<{if $data.zhuanf=='zp'}>
 <table width="318" border="1" cellspacing="0" cellpadding="0" align="center" class="qm_table2" bordercolor="#e8e8e8">
  <tr>
    <td height="96" width="106"><{$data.qmdj.3}></td>
    <td width="106"><{$data.qmdj.4}></td>
    <td width="106"><{$data.qmdj.5}></td>
  </tr>
  <tr>
    <td height="96"><{$data.qmdj.2}></td>
    <td align="center" valign="middle" bgcolor="#ffd9b3">[中宫]<{$data.sqly.4}></td>
    <td><{$data.qmdj.6}></td>
  </tr>
  <tr>
    <td height="96"><{$data.qmdj.1}></td>
    <td><{$data.qmdj.0}></td>
    <td><{$data.qmdj.7}></td>
  </tr>
</table>
<{else}>
 
  
 <table width="300" border="0" cellspacing="2" cellpadding="0" align="center" bgcolor="#FFDF55">
  <tr>
    <td height="96"><{$data.qmdj.3}></td>
    <td><{$data.qmdj.8}></td>
    <td><{$data.qmdj.1}></td>
  </tr>
  <tr>
    <td height="96"><{$data.qmdj.2}></td>
    <td align="center" valign="middle" bgcolor="#D4BF55"><{$data.qmdj.4}></td>
    <td><{$data.qmdj.6}></td>
  </tr>
  <tr>
    <td height="96"><{$data.qmdj.7}></td>
    <td><{$data.qmdj.0}></td>
    <td><{$data.qmdj.5}></td>
  </tr>
</table>   
  <{/if}>
  </td>

      </tr>
	  
    </table>

</div>

<?php include('templates/public/morenav.php');?>

</div>
<div class="btn_tool_retest">
<a class="btn_orange_1" href="<{$web_url}>paipan/qimendunjia/">重新测算</a>
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
                <{include file='./index/public/left_sx.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<{include file='./index/footer.tpl'}>

