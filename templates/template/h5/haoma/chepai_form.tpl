<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>
<{if $word==''}>
	<h1 class="title">车牌号码吉凶</h1>
	<{/if}>

<{if $word!=''}>

	<h1 class="title">车牌<{$word}>的测试结果</h1>

	<div class="detail">

		<dl>

			<h2>所查号码：</h2>

			<div class="h2_content"><{$word}></div>

			<div class="h2_content">

				<p>吉凶分析：<{$haomajx.title}> <span class="red"><strong>(<{$haomajx.jx}>)</strong></span></p>

			</div>

			<div align="center">

				<div class="bdlikebutton"></div>

			</div>

			<h2>主人个性：</h2>

			<div class="h2_content"><{$haomajx.content}> </div>

		</dl>

	</div>
	<{/if}>


<div class="detail">
	<dl>
		<form name="form1" action="/index.php"  method="post">
			<input type="hidden" name="ac" value="qq">
			<input type="hidden" name="ct" value="h5_haoma">
			</br>
			<dd class="form">
				所属地:
				<select id="cp_dq" class="select" name="dq">
					<option value='京' selected>京</option>
					<option value='津'>津</option>
					<option value='沪'>沪</option>
					<option value='渝'>渝</option>
					<option value='冀'>冀</option>
					<option value='豫'>豫</option>
					<option value='云'>云</option>
					<option value='辽'>辽</option>
					<option value='黑'>黑</option>
					<option value='湘'>湘</option>
					<option value='皖'>皖</option>
					<option value='鲁'>鲁</option>
					<option value='新'>新</option>
					<option value='苏'>苏</option>
					<option value='浙'>浙</option>
					<option value='赣'>赣</option>
					<option value='鄂'>鄂</option>
					<option value='桂'>桂</option>
					<option value='甘'>甘</option>
					<option value='晋'>晋</option>
					<option value='蒙'>蒙</option>
					<option value='陕'>陕</option>
					<option value='吉'>吉</option>
					<option value='闽'>闽</option>
					<option value='贵'>贵</option>
					<option value='粤'>粤</option>
					<option value='青'>青</option>
					<option value='藏'>藏</option>
					<option value='川'>川</option>
					<option value='宁'>宁</option>
					<option value='琼'>琼</option>
				</select>


				<select id="cp_zm" class="select" name="zm">
					<option value='A' selected>A</option>
					<option value='B'>B</option>
					<option value='C'>C</option>
					<option value='D'>D</option>
					<option value='E'>E</option>
					<option value='F'>F</option>
					<option value='G'>G</option>
					<option value='H'>H</option>
					<option value='I'>I</option>
					<option value='J'>J</option>
					<option value='K'>K</option>
					<option value='L'>L</option>
					<option value='M'>M</option>
					<option value='N'>N</option>
					<option value='O'>O</option>
					<option value='P'>P</option>
					<option value='Q'>Q</option>
					<option value='R'>R</option>
					<option value='S'>S</option>
					<option value='T'>T</option>
					<option value='U'>U</option>
					<option value='V'>V</option>
					<option value='W'>W</option>
					<option value='X'>X</option>
					<option value='Y'>Y</option>
					<option value='Z'>Z</option>
				</select>


			</dd>
			</br>
			<dd class="form">
				请输入: <input type="text" name="word" maxLength=32 class="ipt1" onBlur="if (value==''){value='车牌号码'}" onFocus="if (value=='车牌号码') {value=''}" value="车牌号码">
			</dd>
			</br>
			<dd><center><input type="submit" name="submit" class="button" value="马上测试" />
					<input type="hidden" value="test" name="action">  </center></dd>
		</form>
	</dl>
</div>
<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<script type="text/javascript">
	function che2Cha(t)
	{
		var num = document.getElementById(t+'_haoma_num').value;
		var diqu = document.getElementById('cp_dq').value;
		var zimu = document.getElementById('cp_zm').value;
		var flag = chkNum['chkchepai'](num);
		if(false == flag)
		{
			alert('请输入正确的号码');
			return false;
		}
		location.href="/haoma/"+t+"/"+diqu+"-"+zimu+"-"+num;
	}
	var chkNum = {
		chkqq:function(num)
		{
			if(num.search(/^[1-9]\d{4,12}$/) == -1)
			{
				return false;
			}
			return true;
		},
		chkshouji:function(num)
		{
			if(num.search(/^[1-9]\d{10}$/) == -1)
			{
				return false;
			}
			return true;
		},
		chkdianhua:function(num)
		{
			if(num.search(/^[1-9]\d{6,7}$/) == -1)
			{
				return false;
			}
			return true;
		},

		chkchepai:function(num)
		{
			if(num.search(/^[0-9a-zA-Z]{5}$/) == -1)
			{
				return false;
			}
			return true;
		},

		chkshenfenzheng:function(num)
		{
			if(num.search(/^[1-9](\d{14}|\d{16}[\d|x|X])$/) == -1)
			{
				return false;
			}
			return true;
		}
	}
</script>
<{include file='./h5/footer.tpl'}>