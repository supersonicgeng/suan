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
				<div class="fn_dh fn_part mod_box_t1">
					<div class="hd">
						<h1>电话号码吉凶</h1>
					</div>
					<div class="bd">
                    	<div class="intro_area">
							<p>人们经常随身携带的符号则具有特定的吉凶暗示力。我们的生活几乎不离号码，如电话号码、手机号码。手机号码吉凶预测其实包含有一定的吉凶数理，电话号码测吉凶看结果就像姓名会影响运势命运的意义是一样的。</p><p>电话号码吉凶：气有旺衰之气，数亦有吉凶之数。电话号码吉凶预测，是根据周易数理预测之原理，来测试电话号码对主人的运势影响。</p>
						</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                <form action="<{$web_url}>index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                    <input type="hidden" name="ac" value="dianhua" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="390" />                                   
  <input type="text" name="word" id="dianhua_haoma_num" style="color:#ccc;" onClick="this.value='';this.style.color='#000';" value="请直接输入电话号码，不需要加区号" class="ipt_text"/>
                                    <button class="btn_orange_1" onClick="get2Cha('dianhua');" type="submit">查询</button>
                                </form>
								</div>
							</div>
							<i class="flag_tl_t3"></i>
							<i class="flag_tr_t3"></i>
							<i class="flag_bl_t3"></i>
							<i class="flag_br_t3"></i>
						</div>
					</div>
                    <{if $word}>
                    
                    <div class="result_area">
						<p><strong>所查号码：</strong><span><{$word22}></span></p>
						<p><strong>吉凶分析：</strong><span><{$haomajx.title}><em class="bad">(<{$haomajx.jx}>)</em></span></p>
						<p><strong>主人个性：</strong><span><{$haomajx.content}></span></p>
					</div>
                    
                    <{/if}>
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

