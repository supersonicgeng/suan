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

<div class="fn_bz fn_bz_result fn_part mod_box_t1">
<div class="hd">
<h1><{$cookies.xingming.xing}><{$cookies.xingming.ming}>生辰八字</h1>
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

<a title="生辰八字" href="/suanming/scbz/" class="current">生辰八字</a>

<a title="日干论命" href="/suanming/rglm/">日干论命</a>

<a title="称骨论命" href="/suanming/cglm/">称骨论命</a>

<a title="三世财运" href="/suanming/sscy/">三世财运</a>   

<a title="八字测算" href="/suanming/bzcs/">八字测算</a>                        

</div>


<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col8" width="100%">

<tbody>

<tr>

<th class="sort_1st" rowspan="5">

<{$cookies.xingming.xing}><{$cookies.xingming.ming}>

</th>

<td class="sort_2nd" rowspan="2">

出生时间:

</td>

<td class="sort_3rd">

(公历)

</td>

<td class="sort_4th">

<{$cookies.nianling.y}>年

</td>

<td class="sort_5th">

<{$cookies.nianling.m}>月

</td>

<td class="sort_6th">

<{$cookies.nianling.d}>日

</td>

<td class="sort_7th">

<{$cookies.nianling.h}>点

</td>

<td class="sort_8th" rowspan="5">

<p>

本命属<{$cookies.sx}>，<{$nayin.0.layin}>命。<{$wang.wang}><{$wang.que}>；日主天干为<{$nayin.0.layin}><{$wang.wang}><{$wang.que}><{$cookies.bazi.4}>，生于<{$cookies.siji}>季。

</p>

<p class="tc">

（同类<{$tywh.tnwh}>；异类<{$tywh.ynwh}>。）

</p>

<p>

<em>重要说明：本结果为系统自动分析，仅供参考，八字缺什么与补什么无关，具体应由专业老师分析！　</em>

</p>

</td>

</tr>

<tr>

<td class="sort_3rd">

(阴历)

</td>

<td>

<{$cookies.jiuli.y}>年

</td>

<td>

<{$cookies.jiuli.m}>月

</td>

<td>

<{$cookies.jiuli.d}>日

</td>

<td>

<{$cookies.jiuli.h}>时

</td>

</tr>

<tr>

<td colspan="2">

八 字:

</td>

<td>
<{$cookies.bazi.0}>
<{$cookies.bazi.1}>
</td>

<td>
<{$cookies.bazi.2}>
<{$cookies.bazi.3}>
</td>

<td>
<{$cookies.bazi.4}>
<{$cookies.bazi.5}>
</td>

<td>
<{$cookies.bazi.6}>
<{$cookies.bazi.7}>
</td>

</tr>

<tr>

<td colspan="2">

五 行:

</td>

<td>
<{$cookies.wh.0}>
<{$cookies.wh.1}>

</td>

<td>

<{$cookies.wh.2}>
<{$cookies.wh.3}>

</td>

<td>

<{$cookies.wh.4}>
<{$cookies.wh.5}>

</td>

<td>

<{$cookies.wh.6}>
<{$cookies.wh.7}>

</td>

</tr>

<tr>

<td colspan="2">

纳 音:

</td>

<td>

<{$nayin.0.layin}>

</td>

<td>
<{$nayin.1.layin}>

</td>

<td>

<{$nayin.2.layin}>

</td>

<td>

<{$nayin.3.layin}>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<ul class="sum">

<li>

<em class="cGrey">八字五行个数：</em>

<div class="ml104">
<{$jmsh.jin}>个金，<{$jmsh.mu}>个木，<{$jmsh.shui}>个水，<{$jmsh.huo}>个火，<{$jmsh.tu}>个土

</div>

</li>

</ul>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<ul class="sum">

<li>

<em class="cGrey">四季用神参考：</em>

<div class="ml104">

日主天干<{$cookies.wh.4}>生于<{$cookies.siji}>季,<{$sjrs.sjrs}>

</div>

</li>

<li>

<em class="cGrey">穷通宝鉴调候用神参考：</em>

<div class="ml160">
<{$cookies.bazi.4}><{$cookies.wh.4}>生于<{$cookies.bazi.3}>月，<{$qtbj.content}>

</div>

</li>

</ul>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>生肖个性</span>

</th>

<td>

<ul class="info_table_list">

<li>根据分析，您的生肖为"<{$cookies.sx}>"<br/>

<{$sxgx.sxgx}>

</li>



</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>日干心性</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$rgxx.rgxx}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>日干支层次</span>

</th>

<td>

<ul class="info_table_list">


<li><{$rgxx.rgcz}></li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>日干支分析</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$rgxx.rgzfx}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>五行生克<br/>制化宜忌</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$tywh.skzhyj}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>五行之性</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$tywh.whzx}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>四柱五行生克中对应需补的脏腑和部位</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$tywh.szwh}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th>

<span>宜从事行业与方位</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$tywh.hyhw}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th width="74">

<span>

&nbsp;三

<br/>命<br/>通<br/>会

</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$sxth.tf1}>

</li>

<li>

<{$sxth.tf2}>

</li>

</ul>

</td>

</tr>

</tbody>

</table>

</div>



</div>

<div class="mod_box_t3 fn_box">

<div class="box_con ret_con">

<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col2" width="100%">

<tbody>

<tr>

<th rowspan="3" width="74">

<span>月<br>

<br>

日<br>

<br>

时<br>

<br>

命<br>

<br>

理</span>

</th>

<td>

<ul class="info_table_list">

<li>

<{$ml.yml.mingmi}>

</li>

</ul>

</td>

</tr>

<tr>

<td>

<ul class="info_table_list">

<li><{$ml.rml.mingmi}></li>

</ul>

</td>

</tr>

<tr>

<td>


<ul class="info_table_list">

<li><{$ml.sml.mingmi}></li>

</ul>

</td>

</tr>

</tbody>

</table>

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

