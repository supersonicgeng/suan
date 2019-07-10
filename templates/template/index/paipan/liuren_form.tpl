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
			<div class="fn_bz6 fn_part mod_box_t1">
              <div class="hd">
                <h1>六壬排盘</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「六壬排盘」</strong>六壬是用阴阳五行占卜吉凶的一种术数。六壬与遁甲、太乙合称三式。五行以水为首，十天干中，壬、癸分别为阳水、阴水。舍阴取阳，六十甲子中壬有六个（壬申、壬午、壬辰、壬寅、壬子、壬戌），称为六壬。六壬有六十四课，以刻有干支的天盘、地盘相叠，转动天盘后得出所值的干支及时辰，判明吉凶。 　　六壬是我国古典数术之一，与奇门、太乙并称为三式，因土为万物之母，水为万物之源，五行以水为一，且六十花甲子中六个壬故称为六壬。 其法以月将加时辰，立四课，排三传，观阴阳，辩生克，以决吉凶成败。</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<{$web_url}>index.php" name="login" method="post" onSubmit="return checkForm();">
                            <input type="hidden" name="ac" value="liuren" />
                            <input type="hidden" name="ct" value="paipan" />
								<div class="mod_form">
									<div class="form_item">
										姓名：<input type="text" name="name" id="xing" value="" class="ipt_text" />
                                        出生时间： 
                                        <select name=birthyear>
                                        <?
                                        for($i=1922;$i<=date("Y");$i++)
                                        {
                                        echo "<option value=".$i;
                                        if ($i==1980)
                                        {
                                        echo " selected";
                                        }
                                        echo ">".$i."</option>";
                                        }
                                        ?>
                                        </select> 
										&nbsp;<input type="radio" checked="checked" value="1" id="male" class="ipt_radio" name="sex"><label for="male">男</label>
										&nbsp;<input type="radio" value="0" id="female" class="ipt_radio" name="sex"><label for="female">女</label>
                                        <input type=hidden name=cm value=8> 
                                        占事： <input type="text" name="zhanshi" class="ipt_text" maxlength="12" size="12">
                                    	</div>
									
									<div class="form_item">
										公历时间&nbsp;
										<select class="select" name="y" id="gl_year" onChange="chage_day('gl');">
										<?php for($i=1930;$i<2014;$i++){ ?>
                                        <?php $nowy=date('Y',time())-25; if($i==$nowy){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>年
                                        
										<select class="select" name="m" id="gl_month">
										<?php for($i=1;$i<13;$i++){ ?>
                                        <?php if($i==date('m',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select> 月
                                        
										<select class="select" name="d" id="gl_day">
										<?php for($i=1;$i<32;$i++){ ?>
                                        <?php if($i==date('d',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>日
										
										<select class="select" name="h" id="hour">
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
                                                    
												 <select class="select" name="min" id="minute">
												 <option value="0">未知</option>
												<?php for($i=0;$i<60;$i++){ ?>
                                                <?php if($i==date('H',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                                <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                                                <?php } ?>
                           						</select>分 &nbsp;&nbsp;<input name=pai type=checkbox value=1 checked="checked"/> 排行年 
									</div>
                                    <div class="form_item">
                                  <input id=gs1 name="guishen" type="radio" value="1" checked="" />
                                    <label for="gs1" style="cursor:hand;" >甲戊庚牛羊</label>　　　　　
                                    <input id=gs2 type="radio" name="guishen" value="0" >
                                    <label for="gs2" style="cursor:hand;" >甲羊戊庚牛</label>
                                    </div>
                                     <div class="form_item">
                                    贵人运行：<input 
                                    checked name=zhouye type=radio value=2>
                                    自动
                                    <input name=zhouye type=radio value=1>
                                    昼
                                    <input name=zhouye type=radio value=0>
                                    夜
                                    <input name="scpf" type="radio" value="1">
                                    时旬遁干
                                    <input name="scpf" type="radio" value="0" checked>
                                    日旬遁干
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

