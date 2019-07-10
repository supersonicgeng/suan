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
                
			<div class="fn_bz5 fn_part mod_box_t1">
              <div class="hd">
                <h1>奇门遁甲在线排盘</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「奇门遁甲」</strong>奇门遁甲，原来是中国古老的一本书，但它往往被认为是一本占卜用的书，但有的说法是说《奇门遁甲》是我国古代人民在同大自然作斗争中，经过长期观察、反复验证，总结出来的一门传统珍贵文化遗产。还有的说"奇门遁甲"是修真的功法。
"奇门遁甲"的含义是什么呢？就是由"奇"，"门"，"遁甲"三个概组成。"奇"就是乙，丙，丁三奇；"门"就是休，生，伤，杜，景，死，惊，开八门；"遁"是隐藏的意思，"甲"指六甲，即甲子，甲戌，甲申，甲午，甲辰，甲寅，"遁甲"是在十干中最为尊贵，它藏而不现，隐遁于六仪之下。"六仪"就是戊，己，庚，辛，壬，癸。隐遁原则是甲子同六戊，甲戌同六己，甲申同六庚，甲午同六辛，甲辰同六壬，甲寅同六癸。另外还配合蓬，任，冲，辅，英，芮，柱，心，禽九星。奇门遁的占测主要分为天，门，地三盘，象征三才。天盘的九宫有九星，中盘的八宫（中宫寄二宫）布八门，地盘的八宫代表八个方位，静止不动，同时天盘地盘上，每宫都分配着特定的奇（乙，丙，丁）仪（戊，己，庚，辛，壬，癸六仪）。这样，根据具体时日，以六仪，三奇，八门，九星排局，以占测事物关系，性状，动向，选择吉时吉方，就构成了中国神秘文化中一个特有的门类----奇门遁甲。</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<{$web_url}>index.php" name="login" method="post" onSubmit="return submitchecken();">
                            <input type="hidden" name="ac" value="qimendunjia" />
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
                                        if($i=="1980")
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
                                        占事： <input name="zhanshi" type="text" id="zhanshi" class="ipt_text"  size="12" maxlength="12">
                                    	</div>
									
									<div class="form_item">
										出生日期（公历）&nbsp;
										<select class="select" name="yea" id="gl_year" onChange="chage_day('gl');">
										<?php for($i=1930;$i<2014;$i++){ ?>
                                        <?php $nowy=date('Y',time())-25; if($i==$nowy){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>年
                                        
										<select class="select" name="mont" id="gl_month">
										<?php for($i=1;$i<13;$i++){ ?>
                                        <?php if($i==date('m',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select> 月
                                        
										<select class="select" name="dat" id="gl_day">
										<?php for($i=1;$i<32;$i++){ ?>
                                        <?php if($i==date('d',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>日
										
										<select class="select" name="hou" id="hour">
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
                                                    
												 <select class="select" name="minut" id="minute">
												 <option value="0">未知</option>
												<?php for($i=0;$i<60;$i++){ ?>
                                                <?php if($i==date('H',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                                <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                                                <?php } ?>
                           						</select>分</div>
												
                                                <div class="form_item">
                                                <input type="hidden" name="jutag" value="0" />
                                                <input id=zp type="radio" name="R1" value="zp" checked="" onClick="javacript:fs4.style.display='none';" //>
                                                <label for="zp"style="cursor:hand;" >转盘奇门</label>　　　　
                                                <input id=fg type="radio" name="R1" value="fg" onClick="javacript:fs4.style.display='block';" />
                                                <label for="fg"style="cursor:hand;" >飞盘奇门</label>
                                                    <div id="fs4" style="display:none"> 
                                                    <input name="order" id=yx type="radio" value="1" checked="" />
                                                    <label for="yx"style="cursor:hand;" > 阳顺阴逆</label>　　　　
                                                    <input type="radio" id=qbx name="order" value="0" />
                                                    <label for="qbx"style="cursor:hand;" >全部顺排</label>
                                                    </div>
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

