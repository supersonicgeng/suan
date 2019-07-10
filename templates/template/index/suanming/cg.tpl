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

<div class="fn_cg fn_cg_result fn_part mod_box_t1">
<div class="hd">
<h1><{$cookies.xingming.xing}><{$cookies.xingming.ming}>称骨论命</h1>
</div>
<div class="bd">
<div class="cur_info">
<h6>当前称骨信息</h6>
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

<div class="box_con ret_con">

<p class="bone_weight">

亲爱的<b>&nbsp;<{$cookies.xingming.xing}><{$cookies.xingming.ming}>,&nbsp;</b>根据您的生辰八字,经过测算，您的骨重为：<b><{$gu.all10}>&nbsp;两</b>

</p>

<p class="bone_book">

命书如下(仅供参考)：

</p>

<p class="bone_book_list">

<{$gu.info.content}>

</p>

<h4 class="cut_tit">命书分析</h4>

<p class="bone_analysis">

<{$gu.info.intro}>

</p>

</div>



</div>

<div class="btn_tool_retest">

<a class="btn_orange_1" href="<{$web_url}>suanming/clear/">重新测算</a>

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

