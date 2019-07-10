<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
<{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$cookies.xingming.xing}><{$cookies.xingming.ming}>的<{$sseo.name}>称骨算命结果</h1>
<div style="text-align:center;">
	<a href="http://m.zb.03ky.com/suanming/clear/"><span style="font-size: 17px;color: #FF5722;line-height: 36px;">返回重新测算</span></a> 
</div>
<div class="detail">

<dl>

	<dd>以下是您的生辰八字称骨算命的结果：</dd>

	<h2>您的生日：</h2>

	<div class="h2_content">公历生日为：<{$cookies.nianling.y}>年<{$cookies.nianling.m}>月<{$cookies.nianling.d}>日<{$cookies.nianling.h}>时<{$cookies.nianling.i}>分 &nbsp; 今年<{$cookies.nianling.nl}>岁</div>

	<h2>您的骨重：</h2>

	<div class="h2_content">经测算，您的骨重为：<strong><{$gu.all10}>&nbsp;两</strong></div>

	<h2>称骨歌：</h2> 

	<div class="h2_content"><{$gu.info.content}></div>

	<h2>称骨歌释义：</h2> 

	<div class="h2_content"><{$gu.info.intro}></div>

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

