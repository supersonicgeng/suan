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
<?php 
 include('cache/gg/12sx_top_730x15.php');
?>
<div class="fn_bz1 fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1>六爻占卜</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>六爻起卦（六爻排盘）系统</h6>
</div>


<div class="box_con ret_con">


<div class="sm_box" id="Layerurl" style="width:600px">

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1" id="paipanTable">
    <tbody>
     
      <tr>
        <td class="new"><strong>姓名：</strong><{$info.name}> <strong>出生年:</strong><{$info.birthyear}><strong> 性别：</strong><{$info.sex}><strong>&nbsp;占事：</strong><{$info.reason}></td>
        </tr>
      <tr>
        <td class="new"><strong>起卦方式：</strong><{$info.qiguafangfa}></b>
        <{if $info.auto==5}>
        <{$info.bsnums_up}>,<{$info.bsnums_down}>
        <{elseif $info.addhour==1}>
        动爻加时辰
        <{else}>
        动爻不加时辰
        <{/if}>
</td>
      </tr>
      <tr>
        <td class="new"><b>公历时间：</B><font color="#ff0000"><{$data.gongli}></font> 
        <{if $info.taiyang==1}>
        真太阳时:$Truedate
        <{/if}>
&nbsp;&nbsp;&nbsp;<b>农历时间：</B><font color="#0000ff"><{$data.nonglistr}> </font>
      <BR>
      <b>干　　支：</B><{$data.ygz}>年<{$data.mgz}>月<{$data.dgz}>日<{$data.tgz}>时
	  　<br>
 <B>旬　　空：</B><{$data.xunkong}>&nbsp;&nbsp;　<br>
 <B>神　　煞：</B>驿马─<{$yuma}>　桃花─<{$taohua}>　日禄─<{$rilu}>　贵人─<{$guiren}><BR>
<br><br>
<{$data.tplhtml}>
<{$data.top2html}>
  <br>
<{$data.top3html}> 
<{$data.top4html}>  
<br>
<{$data.last}>
</td>
      </tr>
     
    </table>


</div>

<?php include('templates/public/morenav.php');?>


</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="/paipan/liuyao/">重新测算</a>
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

