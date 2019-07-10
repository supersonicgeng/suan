<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/fortune.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
        
<{include file='./index/public/path.tpl'}>         
        <div class="cont">
<div class="col_left">

<div class="mod_box_t1 fn_part fn_caiyun">
<div class="hd">
<h1><{$cookies.xingming.xing}><{$cookies.xingming.ming}>近一年运气</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>当前算命者信息</h6>
<p class="info_prop">
<span>姓名：<strong><{$cookies.xingming.xing}><{$cookies.xingming.ming}></strong></span>

<span>性别：<strong><{$cookies.sex}></strong></span>

<span>出生时间：<strong><{$cookies.nianling.y}>年<{$cookies.nianling.m}>月<{$cookies.nianling.d}>日<{$cookies.nianling.h}>时<{$cookies.nianling.i}>分</strong></span>

<span>今年：<strong><{$cookies.nianling.nl}>岁</strong></span>

<span>属相：<strong><{$cookies.sx}></strong></span>

</p>

<a class="a_retest" href="<{$web_url}>suanming/clear/">重新测算</a>

</div>

<div class="relateLinks">

<{foreach from=$topic_arr item=v}>
    <a <{if $tid==$v.id}>class="current"<{/if}> title="<{$v.name}>" href="<{$web_url}><{$v.extra}>"><{$v.name}></a>
<{/foreach}>                      

</div>


<div class="mod_box_t3 fn_box">

<div class="box_con ret_con"><br />

<span class="sTit">你的大运：</span><br />

<span class="sDes"><em><{$dayundate}></em></span><br />

<p>

大运十神:<{$dr_ss}><br />

大运干支:<{$dr_gz}><br />

交运年份:<{$dr_y}>>><{$dr_y+10}>>><{$dr_y+20}>>><{$dr_y+30}>>><{$dr_y+40}>>><{$dr_y+50}>>><{$dr_y+60}>>><{$dr_y+70}><br>

交运年龄:><{$nnnn+1}>>>><{$nnnn+11}>>>><{$nnnn+21}>>>><{$nnnn+31}>>>><{$nnnn+41}>>><{$nnnn+51}>>>><{$nnnn+61}>>>><{$nnnn+71}><br /><br />

</p>

<p>近12月运气:<{$myq_text}></p>

<p>对你的忠言:喜神是<font color=#0033FF><b><?=$wh[$whh]?></b></font> <font color="#FF0000"><b><{$wh123}></b></font>  趋吉避凶的忠言<br><br style=line-height=70%></p>


</div>



</div>

<div class="btn_tool_retest">

<a class="btn_orange_1" href="<{$web_url}>suanming/clear/" onClick="recesuan();return false;">重新测算</a>

</div>

<div class="tips_area">

本算命系统来源于中国民俗学的一些测算方法，并非科学研究成果，仅供休闲娱乐，请勿迷信，按此操作一切后果自负！

</div>

</div>




</div>

<{include file='./index/public/left_sx.tpl'}>


</div>

<div id="col_right" class="col_right">

<{include file='./index/public/right.tpl'}>  

</div>

</div>

</div>

</div>

<{include file='./index/footer.tpl'}>

