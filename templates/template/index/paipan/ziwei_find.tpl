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

<div class="fn_bz3 fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1>紫薇斗数</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>紫微排盘结果</h6>
</div>

<div class="box_con ret_con">
<style type="text/css">
 .zw_table td {
         border: 1px solid #ebebeb;
             padding: 10px;
 }
 .qmdj_table .table1, .zw_table td {
         background-color: #fff;
 }
 </style>
<div class="zw_box" id="Layerurl">

<table width="100%"  border="0" align="center" bgcolor="" class="zw_table">
  <tr>
    <td width="25%" class="zw_pantdsz"><{$data.pan.5}></td>
    <td width="25%" class="zw_pantdsz"><{$data.pan.6}></td>
    <td width="25%" class="zw_pantdsz"><{$data.pan.7}></td>
    <td width="25%" class="zw_pantdsz"><{$data.pan.8}></td>
  </tr>
  <tr>
    <td class="zw_pantdsz"><{$data.pan.4}></td>
    <td colspan="2" rowspan="2" class="zw_pantdsz">
	<div style="color:#3399FF; padding-left:8px">免费在线排盘：http://zb.03ky.com/</div>
    
	<div style="padding:8px;line-height:18px"><b>姓名：</b><{$info.name}><b>性别：</b><{if $info.sex==1}>男<{else}>女<{/if}><b>年龄：</b><?php echo date("Y")-$y+1;?><br>
流年斗君在<{$data.dz_a1}>&nbsp;&nbsp;子斗在<{$data.dz_a2}><br>命主：<{$data.mingzhum}>&nbsp;&nbsp;身主：<{$data.shenzhum}><br />盘类：天盘　<font color="red"><{$data.wxju}></font>　　<br><b>阳历：</b><{$data.yangdate}><br><b>农历：</b><{$data.NongLi}><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　<{$data.nayinarr}><br><b><{if $info.sex==1}>乾造<{else}>坤造<{/if}>：<font color=red><{$data.quanzao}></font></b></div></td>
    <td class="zw_pantdsz"><{$data.pan.9}></td>
  </tr>
  <tr>
    <td class="zw_pantdsz"><{$data.pan.3}></td>
    <td class="zw_pantdsz"><{$data.pan.10}></td>
  </tr>
  <tr>
    <td class="zw_pantdsz"><{$data.pan.2}></td>
    <td class="zw_pantdsz"><{$data.pan.1}></td>
    <td class="zw_pantdsz"><{$data.pan.0}></td>
    <td class="zw_pantdsz"><{$data.pan.11}></td>
  </tr>
</table>

</div>

<?php include('templates/public/morenav.php');?>

</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="/paipan/ziwei/">重新测算</a>
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

