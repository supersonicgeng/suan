<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>
<div class="detail">

	<h3>上升星座查询：</h3>

	<h2>测算结果：</h2>

	<div class="h2_content">经测算，您的上升星座：<strong><{$data.title}></strong></div>

	<h2>上升为<{$data.title}>概述：</h2>

	<div class="h2_content">

		<{$data.jianjie}>

	</div>

	<h2>上升星座<{$data.title}>的特质：</h2>

	<div class="h2_content">

		<{$data.tezhi}>

	</div>

	<h2>上升星座<{$data.title}>的行事风格：</h2>

	<div class="h2_content">

		<{$data.fgmd}>

	</div>

	<h2>上升星座<{$data.title}>的性格特点：</h2>

	<div class="h2_content">

		<{$data.xingge}>

	</div>



	<dl>
		<dd>上升星座是我们的外在表现，是外界所觉知到的你，也即你的“人格面具”。快来看看你的上升星座是什么吧！</dd>
		<form name="s" action="/index.php" method="post">
			<input type="hidden" name="ac" value="ssxz" />
			<input type="hidden" name="ct" value="h5_xingzuo" />
			<input type="hidden" name="tid" value="472" />

			<dd class="form"><strong>出生年份</strong>： <select name="y" id="y" class="select">
					<option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012" selected>2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option>
				</SELECT> 年</dd>
			<dd class="form"><strong>出生日期</strong>：
				<SELECT name="m" id="m" class="select">
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11" selected>11</option><option value="12">12</option>
				</SELECT> 月
				<SELECT name="d" id="d" class="select">
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20" selected>20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
				</SELECT> 日
			</dd>
			<dd class="form"><strong>出生时辰</strong>： <select size="1" name="h" class="select"><option value="24" selected="selected"> 00点 子时 </option><option value="1"> 01点 丑时 </option><option value="2"> 02点 丑时 </option><option value="3"> 03点 寅时 </option><option value="4"> 04点 寅时 </option><option value="5"> 05点 卯时 </option><option value="6"> 06点 卯时 </option><option value="7"> 07点 辰时 </option><option value="8"> 08点 辰时 </option><option value="9"> 09点 巳时 </option><option value="10"> 10点 巳时 </option><option value="11"> 11点 午时 </option><option value="12"> 12点 午时 </option><option value="13"> 13点 未时 </option><option value="14"> 14点 未时 </option><option value="15"> 15点 申时 </option><option value="16"> 16点 申时 </option><option value="17"> 17点 酉时 </option><option value="18"> 18点 酉时 </option><option value="19"> 19点 戌时 </option><option value="20"> 20点 戌时 </option><option value="21"> 21点 亥时 </option><option value="22"> 22点 亥时 </option><option value="23"> 23点 子时 </option></select> <select name="i" class="select"><option value="0" selected="selected"> 00分 </option><option value="1"> 01分 </option><option value="2"> 02分 </option><option value="3"> 03分 </option><option value="4"> 04分 </option><option value="5"> 05分 </option><option value="6"> 06分 </option><option value="7"> 07分 </option><option value="8"> 08分 </option><option value="9"> 09分 </option><option value="10"> 10分 </option><option value="11"> 11分 </option><option value="12"> 12分 </option><option value="13"> 13分 </option><option value="14"> 14分 </option><option value="15"> 15分 </option><option value="16"> 16分 </option><option value="17"> 17分 </option><option value="18"> 18分 </option><option value="19"> 19分 </option><option value="20"> 20分 </option><option value="21"> 21分 </option><option value="22"> 22分 </option><option value="23"> 23分 </option><option value="24"> 24分 </option><option value="25"> 25分 </option><option value="26"> 26分 </option><option value="27"> 27分 </option><option value="28"> 28分 </option><option value="29"> 29分 </option><option value="30"> 30分 </option><option value="31"> 31分 </option><option value="32"> 32分 </option><option value="33"> 33分 </option><option value="34"> 34分 </option><option value="35"> 35分 </option><option value="36"> 36分 </option><option value="37"> 37分 </option><option value="38"> 38分 </option><option value="39"> 39分 </option><option value="40"> 40分 </option><option value="41"> 41分 </option><option value="42"> 42分 </option><option value="43"> 43分 </option><option value="44"> 44分 </option><option value="45"> 45分 </option><option value="46"> 46分 </option><option value="47"> 47分 </option><option value="48"> 48分 </option><option value="49"> 49分 </option><option value="50"> 50分 </option><option value="51"> 51分 </option><option value="52"> 52分 </option><option value="53"> 53分 </option><option value="54"> 54分 </option><option value="55"> 55分 </option><option value="56"> 56分 </option><option value="57"> 57分 </option><option value="58"> 58分 </option><option value="59"> 59分 </option></select>
				<div align="center">
					<input type="submit" name="submit" class="button" value="查询" /> <input type="hidden" value="test" name="action">
				</div>
		</form>
	</dl>
</div>
<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<div class="detail">
	<h3>什么是上升星座?</h3>
	<dl>
		<dd>何谓“上升星座”，就是你出生的那一刻，根据你所处的经纬度，在东方地平线的天上，正在上升的星座区块，各位，把先前的粗体字再看一遍，你可以发现三个重点：一是上升星座只是一个星座，不是一个像太阳、月亮一样实际存在的星体；二是上升星座是当时正要浮出地平线，准备昭告世人、大展身手的星座；三是上升星座是在不同时间、不同地点都会改变的星座。</dd>
		<dd>上升星座会影响一个人的外貌、气质、给人的第一印象，以及与他人互动的方式，因此上升星座代表一个人的外在表现。上升星座对个人影响很大，一个人基本的个性也会受到它的影响，还有长相也是，尤其是三十岁以后，它会主宰着个人的价值观及生活态度。</dd>
	</dl>
</div>
<{include file='./h5/public/news.tpl'}>
<div id="navi">
	<{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>