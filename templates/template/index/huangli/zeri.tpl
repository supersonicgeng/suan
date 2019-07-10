<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/huangli.css"/>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/base_hl.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="mod_2b">
				<h1>
					<img src="/static/bazi/img/life/icon_laohuangli.png">
					黄道吉日查询
				</h1>
				<p class="description">为您提供权威可靠的黄道吉日查询，包括结婚吉日、搬家吉日、开业吉日等。</p>
				<div class="life clearfix">
					<div class="col_b">
                    <form action="<{$web_url}>index.php" method="post">
                    <input type="hidden" value="hdjr" name="ct" />
                    <input type="hidden" value="zeri" name="ac" />
						<div class="data_search laohuangli_search">
							<div class="lbox"> <strong class="fl">从</strong>
								<div class="select_outer select_outer62">
									<div class="select_inner">
										<select id="s_year" name="s_year" onchange="changeMonthDay(0)">
											<option value="2010">2010</option>
											<option value="2011">2011</option>
											<option value="2012">2012</option>
											<option value="2013">2013</option>
											<option value="2014">2014</option>
											<option value="2015">2015</option>
											<option value="2016" selected="selected">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
										</select>
									</div>
								</div>
								<span class="fl">年</span>
								<div class="select_outer select_outer50">
									<div class="select_inner">
										<select id="s_month" name="s_month" onchange="changeMonthDay(0)">
											<?php for($i=1;$i<13;$i++){ ?>
                                            <?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
                                            <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                            <?php }?>
										</select>
									</div>
								</div>
								<span class="fl">月</span>
								<div class="select_outer select_outer50">
									<div class="select_inner">
                                    <select id="s_day" name="s_day">
										<?php for($i=1;$i<32;$i++){ ?>
                                        <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                                        <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                        <?php }?>
                                    </select>    
									</div>
								</div>
								<span class="fl">日</span>
								<div class="clear"></div>
								<div class="mt15">
									<strong class="fl">到</strong>
									<div class="select_outer select_outer62">
										<div class="select_inner">
											<select id="e_year" name="e_year" onchange="changeMonthDay(1)">
												<option value="2010">2010</option>
												<option value="2011">2011</option>
												<option value="2012">2012</option>
												<option value="2013">2013</option>
												<option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016" selected="selected">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
											</select>
										</div>
									</div>
									<span class="fl">年</span>
									<div class="select_outer select_outer50">
										<div class="select_inner">
											<select id="e_month" name="e_month" onchange="changeMonthDay(1)">
												<?php for($i=1;$i<13;$i++){ ?>
                                                <?php if($i==(date('m',time())+1)){$se='selected';}else{$se='';} ?>
                                                <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                                <?php }?>
											</select>
										</div>
									</div>
									<span class="fl">月</span>
									<div class="select_outer select_outer50">
										<div class="select_inner">
                                        <select id="e_day" name="e_day">
											<?php for($i=1;$i<32;$i++){ ?>
                                            <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                                            <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                            <?php }?>
                                        </select>      
										</div>
									</div>
									<span class="fl">日</span>
								</div>
							</div>
							<div class="md fl" style="zoom:1">
								<input checked="" class="radio" id="lmanacLuck" name="lmanacType" value="1" type="radio"><label for="lmanacLuck">宜</label>
                                <input class="radio" id="lmanacBad" name="lmanacType" value="2" type="radio"><label for="lmanacBad">忌</label>
								<div class="select_outer select_outer84">
									<div class="select_inner">
										<select id="lmanacCond" name="lmanacCond">
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
									</div>
								</div>
                                <input type="submit" class="selt_btn" id="query" style="cursor: pointer;" value="" />
                                
							</div>
							<div class="list fl">
								<a target="_blank" href="/hdjr/zeri/嫁娶/"> <i></i>
									一年内 <em>结婚</em>
									黄道吉日
								</a>
								<a target="_blank" href="/hdjr/zeri/求嗣/"> <i></i>
									一年内 <em>求子</em>
									黄道吉日
								</a>
								<a target="_blank" href="/hdjr/zeri/开市/">
									<i></i>
									一年内
									<em>开业</em>
									黄道吉日
								</a>
								<a target="_blank" href="/hdjr/zeri/入宅/">
									<i></i>
									一年内
									<em>搬家</em>
									黄道吉日
								</a>
							</div>
						</div>
                        </form>
						<!-- 百度推广 begin-->
     
<!-- 百度热词 end -->
						<div class="data_result mt10" id="search_result" style="">
                        
                        <{if $nums}>
							<div id="result_header"><p class="total_p">宜<strong><{$lmanacCond}></strong>的日子一共有<span><{$nums}></span>天<a class="total_p_back" href="/hdjr/">返回今日黄历</a></p></div>
                            <{/if}>
							<div id="result_content">

<{foreach from=$datalist item=v key=k}>  

<table class="data_table mt10" id="table_<{$k}>"><thead><tr><th colspan="5"><div class="thead_th <{if $k==0}>thead_th_deep<{else}>thead_th_light<{/if}>"><div class="thead_th_rt"></div><div class="thead_th_lt"></div><strong><{$v.gongli}>  <{$v.nongli}></strong><a class="slide_dn" id="slide_1" href="<{$web_url}>hdjr/<{$v.date}>" target="_blank" onclick="showTable('table_1')"></a></div></th></tr></thead>

<{if $k==0}>
<tbody>
<tr>
    <th class="bg_light" width="98"><em class="c_light">节日</em></th>
    <td class="bg_light" width="224"><{$v.jieri}></td>
    <th width="110">彭祖百忌</th>
    <td width="224"><{$v.baiji}></td>
    <td class="td_thour" width="108"><a class="tday_time_s" href="/hdjr/zeri" target="_blank">吉时查询&gt;&gt;</a></td>
</tr>
<tr>
    <th><div class="luck_th"></div></th>
    <td colspan="4">
    <div class="luck_td">
    
        <{if $v.yi!='-'}><{$v.yi}><{else}>诸事不宜<{/if}>
    </div>
    </td>
</tr>

<tr>
    <th><div class="bad_th"></div></th>
    <td colspan="4">
    <div class="bad_td">
        <{if $v.ji!='-'}><{$v.ji}><{else}>诸事不宜<{/if}>
    </div>
    </td>
</tr>

<tr>
    <th><div class="nowell_th"></div></th>
    <td><div class="nowell_td"><em><{$v.chong}></em></div></td>
    <th>凶神宜忌</th>
    <td colspan="2"><{$v.jishen}></td>
</tr>
<tr>
    <th>吉神宜趋</th>
    <td colspan="4"><{$v.xiongshen}></td>
</tr>
</tbody>

<tfoot>
    <tr>
        <td colspan="5">
        <dl>
            <dt>岁次</dt><dd><{$v.suici}></dd>
            <dt>五行</dt><dd><{$v.wuxing}></dd>
            <dt class="god_child"><i></i>胎神</dt>
            <dd class="last"><{$v.taishen}></dd>
        </dl></td>
    </tr>
    <tr>
        <td colspan="5"><dl><dt class="god_money"><i></i>财神</dt><dd><{$v.caishen}></dd><dt class="god_happy"><i></i>喜神</dt><dd><{$v.xishen}></dd><dt class="god_luck"><i></i>福神</dt><dd class="last"><{$v.fushen}></dd></dl></td>
    </tr>
</tfoot>
<{/if}>

</table>

<{/foreach}>


							</div>


						</div>
						<div class="data_result" id="1" name="1">
							<table class="data_table mt10">
								<thead>
									<tr>
										<th>
											<div class="thead_th thead_th_deep" id="jiritext" name="jiritext">
												<div class="thead_th_rt"></div>
												<div class="thead_th_lt"></div>
												<strong>择吉日宜忌简便方法</strong>
											</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div class="method_tips">
												<p>
													选择吉日用事应该 以事为经以神为纬，以神为目以事为纲。黄历之中白虎，天刑，朱雀，天牢，玄武，勾陈--为六黑道凶日；黄历之中青龙，天德，玉堂，司命，明堂，金匮--为六黄道吉日。黄历之中除日、危日、定日、执日、成日、开日为吉；黄历之中建日、满日、平日、破日、收日、闭日为凶。以下乃以事择日简明对照表，希望能为您选择黄道吉日提供方便。
												</p>
												<h3>
													<i></i>
													嫁娶结婚择吉日
												</h3>
												<p>嫁娶结婚择日宜：天德、月德、天德合、月德合、天赦、天愿、三合、天喜、六合、不将日。</p>
												<p>
													嫁娶结婚择日忌：月破、平日、收日、闭日、劫煞、灾煞、月煞、月刑、月厌、五墓、月害、大时、天吏、四废、四忌、四穷、五离、八专、厌对、亥日、往亡。
												</p>
												<h3>
													<i></i>
													祈福择日
												</h3>
												<p>祈福择日宜：天德、月德、天德合、月德合、天赦、天愿、月恩、四相、时德、天巫、开 日、普护、福生、圣心、益后、续世日。</p>
												<p>祈福择日忌：月建、月破、平日、收日、劫煞、月煞、月刑、月害、月厌、大时、游祸、天吏、四废日。（又忌禄空、上朔等日。）</p>
												<h3>
													<i></i>
													开市、新张、开业择日
												</h3>
												<p>开市择日宜：天愿、民日、满日、成日、开日、五富日。</p>
												<p>开市择日忌：月破、平日、收日、劫煞、灾煞、月煞、月刑、月厌、五墓、大时、天吏、小耗、天贼、四耗、四穷、五离、四废、九空。</p>
												<h3>
													<i></i>
													求嗣(祈求生男生女)择日
												</h3>
												<p>求嗣择日宜：天德、月德、天德合、月德合、天赦、天愿、月恩、四相、时德、开日、益后、续世日。</p>
												<p>求嗣择日忌：月建、月破、平日、收日、劫煞、灾煞、月煞、月刑、月害、月厌、大时、游祸、天吏、四废日。</p>
												<h3>
													<i></i>
													宴会择日
												</h3>
												<p>宴会择日宜：天德、月德、天德合、月德合、天赦、天愿、月恩、四相、时德、王日、福德、三合、开日、天喜、民日、六合、五合日。</p>
												<p>宴会择日忌：月破、平日、收日、闭日、月害、劫煞、灾煞、月煞、月刑、月厌、五离、酉日、四废日。</p>
												<h3>
													<i></i>
													祭祀择日
												</h3>
												<p>祭祀择日宜：天德、月德、天德合、月德合、天赦、天愿、月恩、四相、时德、天巫、开日、普护、福生、圣心、益后、续世日。</p>
												<p>祭祀择日忌：天狗寅日。</p>
												<h3>
													<i></i>
													立券交易择日
												</h3>
												<p>立券交易择日宜：天愿、民日、满日、成日、开日、五富、五合、六合日。</p>
												<p>
													立券交易择日忌：月破、平日、收日、劫煞、灾煞、月煞、月刑、月厌、五墓、大时、天吏、小耗、天贼、四耗、四穷、五离、四废、九空。
												</p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						

					</div>
    
				</div>
			</div>

<{include file='./index/footer.tpl'}>

