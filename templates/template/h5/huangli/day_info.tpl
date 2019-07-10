<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>

<div class="detail">
	<h2><{$data.title}></h2>

	<div class="remark center">&nbsp; 来源：开运网 &nbsp; 关键词：<{$data.keyword}></div>
	<div class="h2_content">
		<{$data.content|replace:"/upload/":"http://www.ss230.com/up_img/lishi/upload/"}>
	</div>

</div>


<div class="detail">
	<h3>《开运网》历史上的今天 — <span class="cYellow" id="date_select"><?php echo date('m月-d日',time());?></span>：</h3>
	<dl>
		<dd class="form">以史为鉴,可以知兴衰。回顾历史的今天，了解历史的这一天发生的事件。</dd>
		<form name="sm" action="/index.php" method="post">
			<input type="hidden" value="h5_hdjr" name="ct" />
			<input type="hidden" value="lishi" name="ac" />

			<dd class="form">
				<select name="m" id="nian" class="select">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>月

				<select name="d" id="ri" class="select">
					<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
				</select>日

			</dd>

			<div align="center"><input type="submit" name="submit" class="button" value="历史上的今天"/></div>
		</form>
	</dl>
</div>


<div class="detail">
	<h2>历史上的今天</h2>
	<dl>
		<ul>
			<{foreach from=$lishidata item=v key=k}>
			<li><a class="inlink" href="/hdjr/lishi/<{$v.id}>"><{$k+1}>.<{$v.title}></a></li>
			<{/foreach}>
		</ul>
	</dl>
</div>


<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>

<div class="detail">
	<h3>生肖血型配对简介：</h3>
	<dl>
		<dd>星座于生肖，相信大家一定不会陌生。每个星座、每个生肖都有属于自己的特性，所以我们并不是与所有的星座生肖组合般配，星座与生肖之间又有着怎么样的关系呢？</dd>
	</dl>
</div>
<{include file='./h5/public/news.tpl'}>
<div id="navi">
	<{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>
