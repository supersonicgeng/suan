<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/xmfx.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
			<div class="col_left">
				<div class="fn_part fn_zxqm fn_zxqm_result mod_box_t1">
					<div class="hd">
						<h1>免费在线起名</h1>
					</div>
					<div class="bd">
						<div class="intro_area">
							<strong>「在线起名」</strong>起名是人类的文化行为之一。作为父母，随着孩子的降临人生，首先要给宝宝起一个好名字，开运网为你免费在线起名，以寄托美好愿望，希望孩子将来成就一番事业。古语云"宁可生错命，不可起错名"，一个好的名字，不仅给别人印象深刻，而且还关系到人一生的事业、婚姻、健康和人际关系。蛇宝宝起名大全名字笔画五行不要和命谱四柱五行相联系，它本身五格部象的五行相生相克是其本身独立一格的五行，与命谱五行没有联系的，无须考虑笔画五行来选名字，但名字的笔画五行在五格剖象中要五行相生，不能相克。
本站基于以上原则和自动生成算法，只需要输入你的姓氏可以免费为你推荐目前较为优秀的名字，并自动评为你的宝宝起名字测试打分及作出详细的命理、运程、吉凶解析。
                    </div>
 <div class="mod_box_t3 fn_box">
   <div class="box_con">

								<form action="<{$web_url}>index.php" method="post">
                                <input type="hidden" name="ac" value="qiming" />
                                <input type="hidden" name="ct" value="xingming" />

									<div class="mod_form">

										<div class="form_item">

                        您的姓氏:

											<input name="xing" id="xing"  type="text" class="ipt_text init" />

                        性别:

											<label><input checked="checked" class="sex" id="all" name="sex" type="radio" value="0"/>不限</label>

											<label><input class="sex" id="boy" name="sex" type="radio" value="1"/>男孩</label>

											<label><input class="sex" id="girl" name="sex" type="radio" value="2"/>女孩</label>

											<div class="remark clearAll">*注：暂时只支持简体字查询。</div>

										</div>


										<div class="form_item btn_item">

											<button class="btn_orange2" id="btn_begincs2" type="submit">起名</button>

										</div>

									</div>

								</form>
                            <div class="help_area">
                            <span class="help_tit"><i></i>相关帮助：</span>
                          		[<a target="_blank" href="<{$web_url}>xingming/xmpd/">姓名配对关系</a>]
                            </div>
							</div>
							<i class="flag_tl_t3"></i>
							<i class="flag_tr_t3"></i>
							<i class="flag_bl_t3"></i>
							<i class="flag_br_t3"></i>
						</div>

						
                        <{if $list==''}>
                        <div class="mod_box_t3 fn_noresult">
							<div class="box_con">
								<em class="scbg sltc"></em>
								<em class="scbg srtc"></em>
								<div class="fn_noresult">
									<p>
										真遗憾！您的姓氏暂时不在我们的起名推荐中，如想得到更多姓名大全，可向我们反馈，我们会适时添加。
									</p>
									<p>
										<a href="<{$web_url}>xingming/qiming/">重新测试</a>
										
									</p>
								</div>
							</div>
							<i class="flag_tl_t3"></i>
							<i class="flag_tr_t3"></i>
							<i class="flag_bl_t3"></i>
							<i class="flag_br_t3"></i>
						</div>
                        
                        <{else}>
						<div class="fn_result">
							<div class="fn_tab">
                    								<span>
								<!--<a href="/baijx/1.htm" target="_blank">赵姓起源</a>-->
								</span>
                                
                    			<ul class="clearfix">
									<li class="first">
                                  
									<a <{if $opt_Array.sex=='0'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-0-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓名字大全</a>
									</li>
									<li>
									<a <{if $opt_Array.sex=='1'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-1-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓男孩名字大全</a>
									</li>
									<li>
									<a <{if $opt_Array.sex=='2'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-2-<{$opt_Array.hs}>-<{$opt_Array.page}>.html"><{$opt_Array.xing}>姓女孩名字大全</a>
									</li>
								</ul>
							</div>
							<div class="fn_tab_cont">
								<div class="fn_subtab">
									<a <{if $opt_Array.hs=='0'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-0-<{$opt_Array.page}>.html">不限</a>
									<a <{if $opt_Array.hs=='2'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-2-<{$opt_Array.page}>.html">二字</a>
									<a <{if $opt_Array.hs=='3'}>class="current"<{/if}> href="<{$web_url}>xingming/qiming/list-<{$opt_Array.xid}>-<{$opt_Array.sex}>-3-<{$opt_Array.page}>.html">三字</a>
								</div>
                                <{foreach from=$list item=v key=k}>
                                    <{if $k==0}>
                                        <ul class="fn_result_list clearfix">
                                    <{/if}> 
                                      
                                    <li><a href="<{$web_url}>xingming/xmfx/<{$v.name}>" target="_blank"><{$v.name}></a></li>
                                    <{if $i%90==0 && $i!=0 && $i!=539}>
                                   </ul> <ul class="fn_result_list fn_result_list_bt clearfix">
                                   <{elseif $i==539}>
								</ul> 
                                <{/if}>                           
                                <{/foreach}>                								
								
								<ul class="fn_result_list fn_result_list_bt clearfix">
                                                								</ul>
								<ul class="fn_result_list fn_result_list_bt clearfix">
								</ul>
                                
								<div class="page">
									<{$pageStr}>
								</div>
							</div>
						</div>
                        <{/if}>
						<!-- 热词 end-->
					</div>
					<i class="flag_tl_t1"></i>
					<i class="flag_tr_t1"></i>
					<i class="flag_bl_t1"></i>
					<i class="flag_br_t1"></i>
				</div>
                <{include file='./index/public/left_sx.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<{include file='./index/footer.tpl'}>

