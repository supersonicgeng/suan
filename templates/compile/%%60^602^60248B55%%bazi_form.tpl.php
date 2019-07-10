<?php /* Smarty version 2.6.25, created on 2019-07-01 18:29:04
         compiled from index/paipan/bazi_form.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/top_nav.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/daohang.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        </div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/path.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
 <div class="cont">
			<div class="col_left">
                
			<div class="fn_bz2 fn_part mod_box_t1">
              <div class="hd">
                <h1>八字在线排盘</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「八字在线排盘」</strong>谁都想知道自己一生中的事业、财运、婚姻、功名、健康、性格、流年运程将是怎样,通过八字排盘，四柱八字排盘会有你想知道的答案。一个人出生的年月时天干地支的排列组合（即八字）就是命。不过仅凭干干巴巴的八个干支，没法推算贵 贱吉凶。 于是和阴阳五行纳配，使天干地支具有了阴阳五行的属性，具备了相生、相克的关系，生克关系又代称为正印、偏印，伤官、食神，正官、偏官，正财、偏财，比肩、劫财十种，统称"十神"八字算命术的另一个重要概念是运。命侧重于论贫富贵*之类相对稳定的人生内容，运则侧重于讲吉凶福祸之类动态的人生问题，即通常所说的命运。运包括大运、小运和流年。... ...</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" name="login" method="post" onSubmit="return checkForm();">
                            <input type="hidden" name="ac" value="bazi" />
                            <input type="hidden" name="ct" value="paipan" />
                            <input type="hidden" name="tid" value="376" />
								<div class="mod_form" style="margin-left:0;">
									<div class="form_item">
										姓名：<input type="text" name="name" id="xing" value="" class="ipt_text" />
										出生地：<input type="text" name="area" id="area" value="" class="ipt_text" />
										&nbsp;<input type="radio" checked="checked" value="1" id="male" class="ipt_radio" name="sex"><label for="male">男</label>
										&nbsp;<input type="radio" value="0" id="female" class="ipt_radio" name="sex"><label for="female">女</label>
                                    	</div>
                                        
              							<input type="hidden" name="DateType" value="0" />
									<div class="form_item">出生日期(公历) <select class="select" name="year" id="gl_year" onChange="chage_day('gl');">
										<?php for($i=1930;$i<2014;$i++){ ?>
                                        <?php $nowy=date('Y',time())-25; if($i==$nowy){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select> 年
                                        
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
										</select> 日
										
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
												</select> 时
                                                    
												 <select class="select" name="minute" id="minute">
												 <option value="0">未知</option>
												<?php for($i=0;$i<60;$i++){ ?>
                                                <?php if($i==date('H',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                                <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                                                <?php } ?>
                           						</select> 分
									</div>
                    夜子时处理:<input name="yezis" type="radio" value="1" checked> 夜子时日干向前遁一天算第二天
                    <input type="radio" name="yezis" value="0">  日干保持不变<br>                 
                    <input type="hidden" name="cgp" value="1">
                    <input type="hidden" name="lnp" value="1">
                    <input type="hidden" name="qyp" value="1">
                    <input type="hidden" name="ssp" value="1">
                    <input type="hidden" name="nyp" value="1">
                     <input type="hidden" name="shenshap" value="1">
                     <input type="hidden" name="mgp" value="1">
                     <input type="hidden" name="csp" value="1">
                     <input type="hidden" name="xyp" value="1">
                     
                     
									<div class="form_item btn_item">
										<button class="btn_orange2" type="submit" id="btn_begincs2">排盘</button>
										
									</div>
								</div>
								</form>
								<div class="help_area">
									<span class="help_tit"><i></i>本程序仅支持公历（阳历）生日，如果您只知道阴历生日，请使用『<a href="<?php echo $this->_tpl_vars['web_url']; ?>
hdjr/yinyangli/" target="_blank">阳(公)历查询</a>』工具进行查询。</span>
									
								</div>
							</div>
							
						</div>
                           
					</div>
					
				</div>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/left_sx.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
                </div>
                <div id="col_right" class="col_right">
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/right.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
