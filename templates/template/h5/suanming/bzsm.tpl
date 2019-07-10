<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
<{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title"><{$cookies.xingming.xing}><{$cookies.xingming.ming}>的算命结果</h1>
<div style="text-align:center;">
	<a href="http://m.zb.03ky.com/suanming/clear/"><span style="font-size: 17px;color: #FF5722;line-height: 36px;">返回重新测算</span></a> 
</div>
<div class="detail">

    <dl>

        <dd></dd>

        <h2>当前算命者信息</h2>

        <div class="h2_content">

            <p><span>姓名：<strong><{$cookies.xingming.xing}><{$cookies.xingming.ming}></strong> 年龄：<strong><{$cookies.nianling.nl}>岁</strong> 出生时间：<strong><{$cookies.nianling.y}>年<{$cookies.nianling.m}>月<{$cookies.nianling.d}>日<{$cookies.nianling.h}>时<{$cookies.nianling.i}>分</strong> 生肖：<strong><{$cookies.sx}></strong></span></p>

        </div>

        <div class="detail">
        
            <h3>三世书算命结果：</h3>
            
            <dl>
            
            <dd><strong>你的大运：</strong></dd>
            
            <dd><{$dayundate}></dd>
            
            <dd>大运十神：<{$dr_ss}></dd>
            
            <dd>大运干支：<{$dr_gz}></dd>
            
            <dd>交运年份：<{$dr_y}>>><{$dr_y+10}>>><{$dr_y+20}>>><{$dr_y+30}>>><{$dr_y+40}>>><{$dr_y+50}>>><{$dr_y+60}>>><{$dr_y+70}></dd>
            
            <dd>交运年龄：<{$nnnn+1}>>>><{$nnnn+11}>>>><{$nnnn+21}>>>><{$nnnn+31}>>>><{$nnnn+41}>>><{$nnnn+51}>>>><{$nnnn+61}>>>><{$nnnn+71}></dd>
            
            <dd><strong>近12月运气：</strong></dd>
            
            <dd><{$myq_text}></dd>
            
            <dd>对你的忠言：喜神是<font color=#0033FF><b><?=$wh[$whh]?></b></font> <font color="#FF0000"><b><{$wh123}></b></font>  趋吉避凶的忠言</dd>
            
            <div align="center">
            
                <div class="bdlikebutton"></div>
            
            </div>
            
            </dd>
            
            </dl>
        
        </div>

</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>

<!-- 将此代码放在适当的位置，建议在body结束前 -->
<{include file='./h5/footer.tpl'}>

