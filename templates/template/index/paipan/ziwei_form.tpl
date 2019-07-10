<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
			<div class="col_left">
			<div class="fn_bz3 fn_part mod_box_t1">
              <div class="hd">
                <h1>紫微斗数</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「紫微斗数」</strong>紫微斗数就是和生肖星座一样，主星有十四颗，代表自己的有一个或两个主星，副星和小星加起来有上百颗，把人的生辰分为十二个宫，就像正方形的命盘一样，顺时针或逆时针的围绕这个盘转，当天当月当年走到哪个宫位，里面的星星就代表不同的含义！</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<{$web_url}>index.php" name="login" method="post" onSubmit="return checkForm();">
                            <input type="hidden" name="ac" value="ziwei" />
                            <input type="hidden" name="ct" value="paipan" />
                            <input type="hidden" name="tid" value="381" />
								<div class="mod_form">
									<div class="form_item">
										姓名：<input type="text" name="name" id="xing" value="" class="ipt_text" />
										&nbsp;<input type="radio" checked="checked" value="1" id="male" class="ipt_radio" name="sex"><label for="male">男</label>
										&nbsp;<input type="radio" value="0" id="female" class="ipt_radio" name="sex"><label for="female">女</label>
                                         <input name="DateType" type="hidden" value="1" >
                                    	</div>
									
									<div class="form_item">
										出生日期（公历）&nbsp;
										<select class="select" name="year" id="gl_year" onChange="chage_day('gl');">
										<?php for($i=1930;$i<2014;$i++){ ?>
                                        <?php $nowy=date('Y',time())-25; if($i==$nowy){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>年
                                        
										<select class="select" name="month" id="gl_month">
										<?php for($i=1;$i<13;$i++){ ?>
                                        <?php if($i==date('m',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select> 月
                                        
										<select class="select" name="date" id="gl_day">
										<?php for($i=1;$i<32;$i++){ ?>
                                        <?php if($i==date('d',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>日
										<select class="select" name="hour" id="hour">
                                                 <option value="0">0&nbsp;子</option>
                                                <option value="1">1&nbsp;丑</option>
                                                <option value="2">2&nbsp;丑</option>
                                                <option value="3">3&nbsp;寅</option>
                                                <option value="4">4&nbsp;寅</option>
                                                <option value="5">5&nbsp;卯</option>
                                                <option value="6">6&nbsp;卯</option>
                                                <option value="7">7&nbsp;辰</option>
                                                <option value="8">8&nbsp;辰</option>
                                                <option value="9">9&nbsp;巳</option>
                                                <option value="10">10&nbsp;巳</option>
                                                <option value="11">11&nbsp;午</option>
                                                <option value="12">12&nbsp;午</option>
                                                <option value="13">13&nbsp;未</option>
                                                <option value="14">14&nbsp;未</option>
                                                <option value="15">15&nbsp;申</option>
                                                <option value="16">16&nbsp;申</option>
                                                <option value="17">17&nbsp;酉</option>
                                                <option value="18">18&nbsp;酉</option>
                                                <option value="19">19&nbsp;戌</option>
                                                <option value="20">20&nbsp;戌</option>
                                                <option value="21">21&nbsp;亥</option>
                                                <option value="22">22&nbsp;亥</option>
                                                <option value="23">23&nbsp;子</option>
												</select>时
												 <select class="select" name="minute" id="minute">
												 <option value="0">未知</option>
												<?php for($i=0;$i<60;$i++){ ?>
                                                <?php if($i==date('H',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                                <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                                                <?php } ?>
                           						</select>分
									</div>
                    <div class="form_item">
                    阴历闰月否:<input name="other" type="radio" value="0" checked="">&nbsp;&nbsp;&nbsp;&nbsp;是<input name="other" type="radio" value="1"><br><br>
                    闰月分界:作下月<input name="runfen" type="radio" value="1" checked>&nbsp;&nbsp;&nbsp;&nbsp;月中分界<input name="runfen" type="radio" value="0" >
                   </div>
									<div class="form_item btn_item">
										<button class="btn_orange2" type="submit" id="btn_begincs2">排盘</button>
									</div>
								</div>
								</form>
								<div class="help_area">
									<span class="help_tit"><i></i>本程序仅支持公历（阳历）生日，如果您只知道阴历生日，请使用『<a href="<{$web_url}>hdjr/yinyangli/" target="_blank">阳(公)历查询</a>』工具进行查询。</span>
									
								</div>
							</div>
							
						</div>
                           
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

