<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
	<{include file='./h5/public/path.tpl'}>
</div>


<{if $nums}>

	<h1 class="title">宜<strong><{$lmanacCond}></strong>的日子一共有<span><{$nums}></span>天</h1>

	<div class="detail">
		<dl>
			<ul>
				<{foreach from=$datalist item=v key=k}>
				<li><a class="inlink" href="/hdjr/<{$v.date}>"><span class="blue"><{$v.gongli}> </span> <{$v.nongli}></a></li>
				<{/foreach}>
			</ul>
		</dl>
	</div>

	<{/if}>
<h1 class="title">吉日查询</h1>
<div class="detail">
	<dl>
		<p class="form">为您提供权威可靠的黄道吉日查询，包括结婚吉日、搬家吉日、开业吉日等。</p>
		<form name="sm" action="/index.php" method="post">
			<input type="hidden" value="h5_hdjr" name="ct" />
			<input type="hidden" value="zeri" name="ac" />

			<dd class="form zhongjian">
				<select name="s_year" id="nian" class="select1">
					<option value="2010">2010</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018" selected="selected">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
				</select>年

				<select name="s_month" id="yue" class="select1">
					<?php for($i=1;$i<13;$i++){ ?>
					<?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
					<option value="<?=$i?>" <?=$se?>><?=$i?></option>
					<?php }?>
				</select>月

				<select name="s_day" id="ri" class="select1">
					<?php for($i=1;$i<32;$i++){ ?>
					<?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
					<option value="<?=$i?>" <?=$se?>><?=$i?></option>
					<?php }?>
				</select>日

			</dd>
<div style="text-align:center;">
<strong class="fl">到</strong>
</div>
			<dd class="form zhongjian">
				<select name="e_year" id="nian" class="select1">
					<option value="2010">2010</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018" selected>2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
				</select>年

				<select name="e_month" id="yue" class="select1">
					<?php for($i=1;$i<13;$i++){ ?>
					<?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
					<option value="<?=$i?>" <?=$se?>><?=$i?></option>
					<?php }?>
				</select>月

				<select name="e_day" id="ri" class="select1">
					<?php for($i=1;$i<32;$i++){ ?>
					<?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
					<option value="<?=$i?>" <?=$se?>><?=$i?></option>
					<?php }?>
				</select>日

			</dd></br>
			<dd class="form zhongjian">
				<input checked="" class="radio" id="lmanacLuck" name="lmanacType" value="1" type="radio"><label for="lmanacLuck">宜</label>
				<input class="radio" id="lmanacBad" name="lmanacType" value="2" type="radio"><label for="lmanacBad">忌</label>
				<select id="lmanacCond" name="lmanacCond" class="select1">
					<option value="嫁娶" selected="selected">嫁娶</option>
					<option value="祭祀">祭祀</option>
					<option value="动土">动土</option>
					<option value="开市">开市</option>
					<option value="开光">开光</option>
					<option value="祈福">祈福</option>
					<option value="求嗣">求嗣</option>
					<option value="出行">出行</option>
					<option value="移徙">移徙</option>
					<option value="安床">安床</option>
					<option value="拆卸">拆卸</option>
					<option value="修造">修造</option>
					<option value="安门">安门</option>
					<option value="挂匾">挂匾</option>
					<option value="纳财">纳财</option>
					<option value="扫舍">扫舍</option>
					<option value="入宅">入宅</option>
					<option value="安葬">安葬</option>
				</select>

			</dd>
</br>
			<div align="center"><input type="submit" name="submit" class="button" value="查询吉日"/></div>
		</form>
	</dl>
</div>
<div>
	<{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>