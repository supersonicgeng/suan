<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/xmfx.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
<div class="fn_part fn_xms fn_xm_result mod_box_t1">
<div class="hd">
<h1>姓名配对</h1>
</div>
<div class="bd">
<div class="mod_box_t3">
<div>
<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col3" width="100%">
<tbody>
<tr>
<th class="sort_1st">
<ul class="clearfix">
<li>&nbsp;</li>
<li class="cGrey">繁体</li>
<li class="cGrey">拼音</li>
<li class="cGrey">康熙笔画</li>
<li class="cGrey">字意五行</li>

<li><strong><{$x1arr.nxing1}></strong></li>
<li><{$x1arr.n1gb}></li>
<li><{$x1arr.n1py}></li>
<li><{$x1arr.bihua1}></li>
<li><{$x1arr.n1wh}></li>

<{if $x2arr.nxing2!=''}>
<li><strong><{$x2arr.nxing2}></strong></li>
<li><{$x2arr.n2gb}></li>
<li><{$x2arr.n2py}></li>
<li><{$x2arr.bihua2}></li>
<li><{$x2arr.n2wh}></li>
<{/if}>

<{if $m1arr.nming1!=''}>
<li><strong><{$m1arr.nming1}></strong></li>
<li><{$m1arr.m1gb}></li>
<li><{$m1arr.m1py}></li>
<li><{$m1arr.bihua3}></li>
<li><{$m1arr.m1wh}></li>
<{/if}>

<{if $m2arr.nming2!=''}>
<li><strong><{$m2arr.nming2}></strong></li>
<li><{$m2arr.m2gb}></li>
<li><{$m2arr.m2py}></li>
<li><{$m2arr.bihua4}></li>
<li><{$m2arr.m2wh}></li>
<{/if}>

</ul>
</th>
<td class="sort_2nd">天格 >> <{$tdrh_ge_arr.tiange1}> (<{$tdrh_ge_arr.tgsancai}>)<br />
人格 >> <{$tdrh_ge_arr.renge1}> (<{$tdrh_ge_arr.renge1_sancai133}>)<br />
地格 >><{$tdrh_ge_arr.dige1}> (<{$tdrh_ge_arr.dige1_sancai133}>)</td>
<td class="sort_3rd">外格 >><{$tdrh_ge_arr.waige1}> (<{$tdrh_ge_arr.waige1_sancai133}>)<br />总格 >> <{$tdrh_ge_arr.zhongge1}> (<{$tdrh_ge_arr.zhongge1_sancai133}>)</td>
</tr>
</tbody>
</table>
</div>

</div>


<div class="mod_box_t3 summary">
<div class="box_con">
<!---->
<h4 class="cut_tit">性格分析</h4>
<h3><strong>姓名：<{$one_arr.name1}>  性别：<{$one_arr.sex1}></strong></h3>
<{$one_arr.xg1}>

</div>

</div>

<div class="mod_box_t3">
<div>
<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col3" width="100%">
<tbody>
<tr>
<th class="sort_1st">
<ul class="clearfix">
<li>&nbsp;</li>
<li class="cGrey">繁体</li>
<li class="cGrey">拼音</li>
<li class="cGrey">康熙笔画</li>
<li class="cGrey">字意五行</li>

<li><strong><{$n2x1arr.n2xing1}></strong></li>
<li><{$n2x1arr.n2x1gb}></li>
<li><{$n2x1arr.n2x1py}></li>
<li><{$n2x1arr.nbihua1}></li>
<li><{$n2x1arr.n2x1wh}></li>

<{if $n2x2arr.n2xing2!=''}>
<li><strong><{$n2x2arr.n2xing2}></strong></li>
<li><{$n2x2arr.n2x2gb}></li>
<li><{$n2x2arr.n2x2py}></li>
<li><{$n2x2arr.nbihua2}></li>
<li><{$n2x2arr.n2x2wh}></li>
<{/if}>



<li><strong><{$n2m1arr.n2ming1}></strong></li>
<li><{$n2m1arr.n2m1gb}></li>
<li><{$n2m1arr.n2m1py}></li>
<li><{$n2m1arr.nbihua3}></li>
<li><{$n2m1arr.n2m1wh}></li>


<{if $n2m2arr.n2ming2!=''}>
<li><strong><{$n2m2arr.n2ming2}></strong></li>
<li><{$n2m2arr.n2m2gb}></li>
<li><{$n2m2arr.n2m2py}></li>
<li><{$n2m2arr.nbihua4}></li>
<li><{$n2m2arr.n2m2wh}></li>
<{/if}>
</ul>
</th>
<td class="sort_2nd">天格 >> <{$tdrh2_ge_arr.ntiange1}> (<{$tdrh2_ge_arr.tg2sancai}>)<br />
人格 >> <{$tdrh2_ge_arr.nrenge1}> (<{$tdrh2_ge_arr.nrenge1_sancai133}>)<br />
地格 >><{$tdrh2_ge_arr.ndige1}> (<{$tdrh2_ge_arr.ndige1_sancai133}>)</td>
<td class="sort_3rd">外格 >><{$tdrh2_ge_arr.nwaige1}> (<{$tdrh2_ge_arr.nwaige1_sancai133}>)<br />总格 >> <{$tdrh2_ge_arr.nzhongge1}> (<{$tdrh2_ge_arr.nzhongge1_sancai133}>)</td>
</tr>
</tbody>
</table>
</div>

</div>

<div class="mod_box_t3 summary">
<div class="box_con">
<!---->
<h4 class="cut_tit">性格分析</h4>
<h3><strong>姓名：<{$two_arr.name2}>  性别：<{$two_arr.sex2}></strong></h3>
<{$two_arr.xg1xx}>

</div>

</div>

<div class="mod_box_t3 summary">
<div class="box_con">


<h4 class="cut_tit">配对指数</h4>
<h3><strong>经过分析，[<{$one_arr.name1}>]和[<{$two_arr.name2}>]的姓名配对评分如下：</strong><span class="cRed"><{$two_arr.zf}>分</span></h3>

<{if $one_arr.sex1==$two.sex2}>

		<font color=red>本站是按中国民俗学的一些测算方法来计算的，暂时不支持同性缘份的测试</font>
		<{else}>
		<font color=green>
        	<{if $two_arr.zf<60}>
				你们的姓名五格可能不是太合，不过八字配合所起的作用更大，另外彼此的努力也会让你们改善关系，记住：事在人为！
			<{elseif $two_arr.zf>60 && $two_arr.zf<70}>
 				你们的姓名五格相合程度马马虎虎，不过八字配合所起的作用更大，继续努力改善关系，会对你们的关系有帮助的！
 			<{elseif $two_arr.zf>70 && $two_arr.zf<80}>
				你们的姓名五格相合程度还不错哟！
			<{elseif $two_arr.zf>80 && $two_arr.zf<90}>
				你们的姓名五格相合程度相当棒！
   			<{else}>
				你们的姓名五格相合程度太棒了！！恭喜！
            <{/if}>
            </font>
			<{if $one_arr.name1==$two_arr.name2}> 
 				<br /><font color=#0000ff>^_^ 你们俩同名同姓嘛，真巧哟！</font>
        	<{/if}>
<{/if}>
<p><a href="/xingming/qiming/" style="color:red;">若想改名,查看起名大全>></a></p>
</div>

</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="/xingming/xmpd/">重新测算</a>
</div>
<div class="tips_area">本算命系统来源于中国民俗学的一些测算方法，并非科学研究成果，仅供休闲娱乐，请勿迷信，按此操作一切后果自负！</div>
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
         <?php   include('templates/public/footer.tpl.php'); ?>  

<{include file='./index/footer.tpl'}>

