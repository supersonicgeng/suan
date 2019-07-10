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
				<div class="fn_part fn_zxqm mod_box_t1">
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

                                         <?php include('cache/gg/sm_bottom_586x30.php'); ?>

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

						<div class="fn_list">

							<table border="0" cellpadding="0" cellspacing="0" width="100%">

							<tbody>

                            

                           <{foreach from=$xinglist item=v key=k}>
                           
                               <{if $k%13==0}>
                                    <{if $k%2==0}>
                                    <tr class="even">
                                    <{else}>
                                    <tr>
                                    <{/if}>
                               <{/if}>     
                                <td>
									<a href="<{$web_url}>xingming/qiming/list-<{$v.id}>-0-0-1.html"><{$v.xing}></a>

								</td>
                                
                           <{/foreach}>

                                  <tr></tr>                     		

								</tbody>

								</table>

							</div>

							<div class="related_site">
							</div>

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

