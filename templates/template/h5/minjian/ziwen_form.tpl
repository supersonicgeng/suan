<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">指纹算命</h1>
<div class="detail">
	<{if $data.jiexi==''}>
	<dl>

		<form action="/index.php" method="post">
			<input type="hidden" name="ct" value="h5_minjian">
			<input type="hidden" name="ac" value="zhiwen">

			<p class="form">

				簸箕是流纹，斗是涡纹，请按照下列手指顺序选择！注意一点哦，男士看左手，女士看右手。

			</p>

			<div align="center"><img src="/static/img/zhiwen.png" border="0"></div>

			<dd class="form">

				拇指:

				<input type="radio" checked="checked" id="f1_1" name="a" value="o">

				<label for="f1_1">涡纹（斗）</label>

				<input type="radio" id="f1_2" name="a" value="x">

				<label for="f1_2">流纹（簸箕）</label>

			</dd>

			<dd class="form">

				食指:

				<input type="radio" checked="checked" id="f2_1" name="b" value="o">

				<label for="f2_1">涡纹（斗）</label>

				<input type="radio" id="f2_2" name="b" value="x">

				<label for="f2_2">流纹（簸箕）</label>

			</dd>

			<dd class="form">

				中指:

				<input type="radio" checked="checked" id="f3_1" name="c" value="o">

				<label for="f3_1">涡纹（斗）</label>

				<input type="radio" id="f3_2" name="c" value="x">

				<label for="f3_2">流纹（簸箕）</label>

			</dd>

			<dd class="form">

				无名:

				<input type="radio" checked="checked" id="f4_1" name="d" value="o">

				<label for="f4_1">涡纹（斗）</label>

				<input type="radio" id="f4_2" name="d" value="x">

				<label for="f4_2">流纹（簸箕）</label>

			</dd>

			<dd class="form">

				小指:

				<input type="radio" checked="checked" id="f5_1" name="e" value="o">

				<label for="f5_1">涡纹（斗）</label>

				<input type="radio" id="f5_2" name="e" value="x">

				<label for="f5_2">流纹（簸箕）</label>

			</dd>

			<div align="center"><input type="submit" name="submit" class="button" value="开始算命"></div>

		</form>

	</dl>
	<{else}>
		<div class="h2_content">
			<p class="first">性格解析：<strong class="red"><{$data.jiexi}></strong></p>
		</div>
	<{/if}>

</div>

<script language="javascript">

	function showzhiwen(){

		var page = '';

		for(var i=1;i<6;i++){

			if(document.getElementById('f'+i+'_1').checked == true){

				page += document.getElementById('f'+i+'_1').value;

			}else{

				page += document.getElementById('f'+i+'_2').value;

			}

		}

		location.href='/progress/zhiwen/'+page+'.html';

		return false;

	}

</SCRIPT>

<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>