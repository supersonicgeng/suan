<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$cookies.xingming.xing}><{$cookies.xingming.ming}>的八字测算结果</h1>
<div style="text-align:center;">
	<a href="http://m.zb.03ky.com/suanming/clear/"><span style="font-size: 17px;color: #FF5722;line-height: 36px;">返回重新测算</span></a> 
</div>
<div class="detail">

<dl>

	<h2>当前算命者信息：</h2>

	<div class="h2_content">
        <p><span>姓名：<strong><{$cookies.xingming.xing}><{$cookies.xingming.ming}></strong></span></p>
        
        <p><span>性别：<strong><{$cookies.sex}></strong></span></p>
        
        <p><span>出生时间：<strong><{$cookies.nianling.y}>年<{$cookies.nianling.m}>月<{$cookies.nianling.d}>日<{$cookies.nianling.h}>时<{$cookies.nianling.i}>分</strong></span></p>
        
        <p><span>今年：<strong><{$cookies.nianling.nl}>岁</strong></span></p>
        
        <p><span>属相：<strong><{$cookies.sx}></strong></span></p>
    </div>

	<h2>详解：</h2>

	<div class="h2_content">
    	<p><strong>乾造：</strong><{$sexqk}></p>
        <p><strong>大运：</strong><{$dayun}></p>
        <p><strong>性格分析：<{$xgfx}></strong></p>
        <p><strong>命造简批：<{$mzjp}></strong></p>
    </div>

	<div align="center">

		<div class="bdlikebutton"></div>

	</div>

</dd>

</dl>

</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>

<!-- 将此代码放在适当的位置，建议在body结束前 -->
<{include file='./h5/footer.tpl'}>

