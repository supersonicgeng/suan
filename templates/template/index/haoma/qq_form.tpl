<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/number.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
 <{include file='./index/public/path.tpl'}>        
<div class="cont">
	<div class="col_left">
				<div class="fn_part fn_qq mod_box_t1">
					<div class="hd">
						<h1>QQ号码吉凶</h1>
					</div>
					<div class="bd">
                    <{if $word!=''}>
                    <div class="result_area">
						<p><strong>所查号码：</strong><span><{$word}></span></p>
						<p><strong>吉凶分析：</strong><span><{$haomajx.title}><em class="bad">(<{$haomajx.jx}>)</em></span></p>
						<p><strong>主人个性：</strong><span><{$haomajx.content}></span></p>
					</div>
                    <{/if}>					
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                 <form action="<{$web_url}>index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                    <input type="hidden" name="ac" value="qq" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="392" />
                                    <input type="text" name="word" id="qq_haoma_num" value="" onKeyUp="value=value.replace(/[^\d]/g,'') " class="ipt_text"/>
                                    <button class="btn_orange_1" onClick="get2Cha('shouji');" type="submit">查询</button>
                                </form>	
								</div>
							</div>
						</div>
					</div>
					<div class="intro_area">                    
                    <p>QQ号码吉凶：QQ已经成为网民们必不可少的通讯工具，号码测吉凶，查看你的QQ号给你带来的性格暗示和影响，对你的QQ号码评估！</p>
                    <p>人们经常随身携带的符号则具有特定的吉凶暗示力。我们的生活几乎不离号码，QQ号码、Q号码凶吉预测其实包含有一定的吉凶数理，电话号码测吉凶看结果就像姓名会影响运势命运的意义是一样的</p>
                    </div>
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

