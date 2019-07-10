<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/paipan/smcss.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
<?php 
 include('cache/gg/12sx_top_730x15.php');
?>
<div class="fn_bz8 fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1>星盘测试（开运网）系统</h1>
</div>
<div class="bd">

<div class="box_con ret_con">

<div class="sm_box" id="Layerurl" style="width:600px">

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1" id="paipanTable">
    <tbody>
     
      <tr>
        <td class="new" style="text-align:center;"><strong>姓名：</strong><{$name}> <strong>出生年:</strong><{$birthyear}><strong> 性别：</strong><{$sex}> </td>
        </tr>
     
      <tr>
        <td class="new"><b style="text-align:center;"><{$data.title}>：</b>
      <BR>
    	<{$data.content}>  
<br>
</td>
      </tr>
     
    </table>


</div>


<?php include('templates/public/morenav.php');?>


</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="<{$web_url}>paipan/xingpan/">重新测算</a>
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

