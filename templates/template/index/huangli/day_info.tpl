<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/hdjr.css"/>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/lishi.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="mod_2b">
					<h2><img src="/static/bazi/img/life/icon_date.png">《开运网》历史上的今天 — <span class="cYellow" id="date_select"><{if $data.ad==1}>公元前 - <{/if}><{$data.year}>-<{$data.day}></span></h2>
                    <p class="description">以史为鉴,可以知兴衰。回顾历史的今天，了解历史的这一天发生的事件。</p>
					<div class="life clearfix">
						
						<div class="col_b">
							<div class="date clearfix">
								<div class="date_a mod_1b">
                                	<form action="<{$web_url}>index.php" method="post">
                                    <input type="hidden" value="hdjr" name="ct" />
                                    <input type="hidden" value="lishi" name="ac" />
									<span>查看</span>
									<div class="st_outer">
										<div class="st_inner">
											<select id="month" onchange="changeMonthDay(_get('month'),_get('day'))" name="m">
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
											</select>
										</div>
									</div>
									<span>月</span>
									<div class="st_outer">
										<div class="st_inner">
											<select id="day" name="d"><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
										</div>
									</div>
									<span>日历史事件</span>
									<input type="submit" value="" class="btn" onclick="goDay(_get('month').value,_get('day').value)" onmouseover="this.className='btn btn_hover';" onmouseout="this.className='btn'">
									<a href="javascript:void(0);" id="prevDay">前一天</a>
									<a href="javascript:void(0);" id="nextDay">后一天</a>
                                    </form>
								</div>
								<div class="date_b mod_1b">
									<div class="date_bt" onmouseover="this.className='date_bt date_b_hover'" onmouseout="this.className='date_bt'">
										<span id="xingzuo_box">
											<strong id="xingzuo_title">星座运势</strong>
											<em id="xingzuo_his" class="">今日未查</em>
										</span>
										
									</div>
									<div class="date_bm" onmouseover="this.className='date_bm date_b_hover'" onmouseout="this.className='date_bm'">
										<span id="zhanbu_box" onclick="if($('#zhanbu_list')[0].style.display=='none'){$('#zhanbu_list').show();}else{$('#zhanbu_list').hide();}">
											<strong>每日一卦</strong>
											<em id="zhanbu_his" class="">今日未算</em>
										</span>
										<ul id="zhanbu_list" class="clearfix" style="display: none;">
											<li><a href="/zhanbu/guanyin" target="blank" onclick="search_zb()">观音灵签</a></li>
											<li><a href="/zhanbu/lvzu" target="blank" onclick="search_zb()">吕祖灵签</a></li>
											<li><a href="/zhanbu/daxian" target="blank" onclick="search_zb()">大仙灵签</a></li>
											<li><a href="/zhanbu/guanshengdi" target="blank" onclick="search_zb()">关圣帝灵签</a></li>
											<li><a href="/zhanbu/tianhou" target="blank" onclick="search_zb()">天后灵签</a></li>
											<li><a href="/zhanbu/zhuge" target="blank" onclick="search_zb()">诸葛测字</a></li>
											<li class="last"><a href="/zhanbu/" target="blank" onclick="search_zb()">更多算命工具</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- 百度推广 begin-->
     
<!-- 百度热词 end -->
							
							<ul class="date_list" id="date_his_list">
                            
                                
                                    <li class="clearfix">
                                        <a id="1889" name="1889" style="display:block;"></a>
                                        <div class="date_list_title">
                                        <a class="" id="date_li_1889" onclick="expand(1889);" href="<{$web_url}>hdjr/lishi/<{$v.id}>"><{$data.title}></a>
                                        </div>
                                            <div class="date_list_cont clearfix" id="date_1795" style="display:;">
                                            <{$data.content|replace:"/upload/":"/up_img/lishi/upload/"}>
                                            <p class="keyword">关键词：<{$data.keyword}>&nbsp;</p></div>
                                    </li>
                                
                            
                            </ul>
                            
                            <div class="relatedTool">
                              <h3>相关工具</h3>
                              <table class="relatedTool_table">
                                <tbody>
                                  <{foreach from=$hand.hdjr_bot_link item=v key=k}>
                                      <{if $k==0}>
                                         <tr>
                                      <{/if}>
                                    <th width="20%">
                                      <a <{if $v.blank==1}>target="_blank"<{/if}> href="<{$v.url}>" <{if $v.color==1}>class="cRed"<{elseif $v.color==2}>class="cGreen"<{elseif $v.color==3}>class="cBlue"<{/if}> title="<{$v.title}>"><{$v.title}></a>
                                    </th>
                                      <{if $k==4}>
                                      </tr>
                                      <tr>
                                      <{/if}> 
                                      
                                      <{if $k==9}>
                                      </tr>
                                      <{/if}>
                                   
                                  <{/foreach}>  
                                  
                                </tbody>
                              </table>
                            </div>
                        
                           
                            
						</div>
					</div>
				</div>

<{include file='./index/footer.tpl'}>

