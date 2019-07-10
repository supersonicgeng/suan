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
			<div class="fn_bz1 fn_part mod_box_t1">
              <div class="hd">
                <h1>六爻占卜</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「六爻占卜」</strong>⒈ 周易六十四卦，每一卦有六爻，通过分析六爻之间的生克关系，来判断所求测之事的吉凶，称为六爻预测。
⒉ 公历即是阳历，农历即是阴历。请按日期类型选择起卦的时间是阳历还是阴历。
⒊ 六爻起卦，最好用三枚铜钱自己摇卦，然后手工指定卦象，最为准确。电脑摇卦次之。自动起卦最次之。
⒋ 若电脑摇卦，请静心默想所测之事一分钟，然后专心摇卦六次，得出卦象，可贴到各算命论坛求测。
⒌ 如起终身卦，请选[时间起卦-以地支起终身卦]。起卦时间选择不必精确到分钟，对应以下时辰输入即可。</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<{$web_url}>index.php" name="form1" method="post" onSubmit="return checkForm();">
                            <input type="hidden" name="ac" value="liuyao" />
                            <input type="hidden" name="ct" value="paipan" />
                            <input type="hidden" name="tid" value="379" />
								<div class="mod_form">
									<div class="form_item">
										姓名：<input type="text" name="name" id="xing" value="" class="ipt_text" />
                                        出生时间： 
                                        <select name="birthyear">
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
                                        占事： <input type="text" name="reason" class="ipt_text" maxlength="12" size="12">
                                    	</div>
									
									<div class="form_item">
                                        地区经度： 
                                        <input name=jd1 type="text" value="120" size="10" maxlength="4" /> 
                                        度 
                                        <input name=jd2 type="text" value="0" size="10" maxlength="4" /> 
                                        分  &nbsp;&nbsp;<input name="taiyang" type="checkbox" value="1" unchecked>考虑真太阳时
										</div>
                                        <div class="form_item">
                                        
                                        公历时间&nbsp;
										<select class="select" name="sely" id="gl_year" onChange="chage_day('gl');">
										<?php for($i=1930;$i<2014;$i++){ ?>
                                        <?php $nowy=date('Y',time())-25; if($i==$nowy){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>年
                                        
										<select class="select" name="selmo" id="gl_month">
										<?php for($i=1;$i<13;$i++){ ?>
                                        <?php if($i==date('m',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select> 月
                                        
										<select class="select" name="seld" id="gl_day">
										<?php for($i=1;$i<32;$i++){ ?>
                                        <?php if($i==date('d',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                        <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                     					<?php } ?>
										</select>日
										
										<select class="select" name="selh" id="hour">
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
                                                    
												 <select class="select" name="selm" id="minute">
												 <option value="0">未知</option>
												<?php for($i=0;$i<60;$i++){ ?>
                                                <?php if($i==date('H',time())){$cat='selected="selected"';}else{$cat='';} ?>
                                                <option value="<?=$i?>" <?=$cat?>><?=$i?></option>
                                                <?php } ?>
                           						</select>分 &nbsp;
									</div>
                                    <div class="form_item">
                                    起卦方式： <INPUT onClick="javacript:yg1.style.display='block';yg2.style.display='block';yg3.style.display='none';yg4.style.display='none';yg5.style.display='block';fangfa=4;" 
      type=radio value="4" name="auto" checked>
            手动摇卦
<INPUT onClick="javacript:yg1.style.display='none';yg2.style.display='none';yg3.style.display='none';yg4.style.display='block';yg5.style.display='block';fangfa=2;" type='radio' value="2" name="auto">
            手工指定 
<INPUT onClick="javacript:yg1.style.display='none';yg2.style.display='none';yg3.style.display='block';yg4.style.display='none';yg5.style.display='none';fangfa=5;" type="radio" value="5" name="auto">
            报数起卦
            <INPUT 
      onclick="javacript:yg1.style.display='none';yg2.style.display='none';yg3.style.display='none';yg4.style.display='none';yg5.style.display='none';fangfa=3;" type="radio" value="3" name="auto">
            时间起卦
<INPUT onClick="javacript:yg1.style.display='none';yg2.style.display='none';yg3.style.display='none';yg4.style.display='none';yg5.style.display='none';fangfa=1;" 
      type=radio  value="1" name=auto>
            电脑自动&nbsp;
	
                                    </div>
                                    
                                     <div class="form_item" id="yg3" style="display: none; text-align:center;">
                                    上卦数： <INPUT maxLength="8" size="10" name="bsnums_up">
                                    下卦数： <INPUT maxLength="8" size="10" name="bsnums_down">
                                    <INPUT type="checkbox" CHECKED value="1" name="addhour">动爻加时辰
                                    </div>
                                    
                                    <div class="form_item" id="yg1" style="display: block; text-align:center;">
                                    <IMG height="87" src="<{$web_url}>static/bazi/images/qltb.gif" width="83" border="0"  name="q1">　　
                                    <IMG height=87 src="<{$web_url}>static/bazi/images/qltb.gif" width="83" border="0" name="q2">　　
                                    <IMG height="87" src="<{$web_url}>static/bazi/images/qltb.gif" width="83" border="0" name="q3">
                                    </div>
                                     
                                     <div class="form_item" id="yg2" style="display: block; text-align:center;">
                                  <INPUT onClick="yaogua(1)" type="button" value="第一次" name="b1"> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT onClick="yaogua(0)" type="button" value="确 定" name="b2" style="display:none">
                                    </div>
                                    
                                    <div class="form_item" id="yg4" style="display: none; text-align:center;">
                            	   <FONT color="#0000ff">请在下面任意选择每个爻的阴阳属性</FONT>
                                    </div>
                                    
                                    <div class="form_item" id="yg5" style="display: block; text-align:center;">
                                    <TABLE width="600" border="0" align="center" cellPadding="3" cellSpacing="1"  bgcolor="#CCCCCC" >
                                    <TBODY>
                                    <TR bgcolor="#F5F5F5">
                                      <TD width="34%" height="30" align="center">
                                        <P>第六爻</P></TD>
                                      <TD width="66%" height="30" valign="middle"><SELECT size="1" name="Y6"> 
                                      <OPTION value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 ─　─</OPTION> 
                                          <OPTION value="3">老阳─── ○</OPTION> <OPTION value="4">老阴─　─ 
                                        Ｘ</OPTION></SELECT> </TD></TR>
                                    <TR bgcolor="eeeeee">
                                      <TD width="34%" height="30" align="center">第五爻</TD>
                                      <TD width="66%" height="30" valign="middle" bgcolor="eeeeee" ><SELECT size="1" name="Y5"> 
                                          <OPTION value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 
                                          ─　─</OPTION> <OPTION value="3">老阳─── ○</OPTION> <OPTION 
                                          value="4">老阴─　─ Ｘ</OPTION></SELECT> </TD></TR>
                                    <TR bgcolor="#F5F5F5">
                                      <TD width="34%" height="30" align="center">第四爻</TD>
                                      <TD width="66%" height="30" valign="middle"><SELECT size="1" name="Y4"> <OPTION 
                                          value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 ─　─</OPTION> 
                                          <OPTION value="3">老阳─── ○</OPTION> <OPTION value="4">老阴─　─ 
                                        Ｘ</OPTION></SELECT> </TD></TR>
                                    <TR bgcolor="eeeeee">
                                      <TD width="34%" height="30" align="center">第三爻</TD>
                                      <TD width="66%" height="30" valign="middle" bgcolor="eeeeee"><SELECT size="1" name="Y3"> 
                                          <OPTION value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 
                                          ─　─</OPTION> <OPTION value="3">老阳─── ○</OPTION> <OPTION 
                                          value="4">老阴─　─ Ｘ</OPTION></SELECT> </TD></TR>
                                    <TR bgcolor="#F5F5F5">
                                      <TD width="34%" height="30" align="center">第二爻</TD>
                                      <TD width="66%" height="30" valign="middle"><SELECT size="1" name="Y2"> <OPTION 
                                          value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 ─　─</OPTION> 
                                          <OPTION value="3">老阳─── ○</OPTION> <OPTION value="4">老阴─　─ 
                                        Ｘ</OPTION></SELECT> </TD></TR>
                                    <TR bgcolor="eeeeee">
                                      <TD width="34%" height="30" align="center">第一爻</TD>
                                      <TD width="66%" height="30" valign="middle" bgcolor="eeeeee"><SELECT size="1" name="Y1"> <OPTION 
                                          value="1" selected>少阳 ───</OPTION> <OPTION value="2">少阴 ─　─</OPTION> 
                                          <OPTION value="3">老阳─── ○</OPTION> <OPTION value="4">老阴─　─ 
                                        Ｘ</OPTION></SELECT>
                                    </TD></TR></TBODY></TABLE>
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
<SCRIPT language=javascript>         
var times=0;    
var yao=0;    
function yaogua(ok)
         
{  if(form1.b1.value=='停 止')
   ok=0;
   if(times==0)
   form1.b1.value="第一次";
   if(ok!=0)
    form1.b1.value='停 止';
	if(times==6)
	{form1.b1.value='第一次';
	}
	if (ok==1)			    
	{     
		times++;     
		document.q1.src="<{$web_url}>static/bazi/images/qltb2.gif"     
		document.q2.src="<{$web_url}>static/bazi/images/qltb2.gif"     
		document.q3.src="<{$web_url}>static/bazi/images/qltb2.gif"	     
	}	     
	else					    
	{     
		document.q1.src="<{$web_url}>static/bazi/images/qltb.gif"     
		document.q2.src="<{$web_url}>static/bazi/images/qltb.gif"     
		document.q3.src="<{$web_url}>static/bazi/images/qltb.gif"     
		yao1 = Math.round(Math.random());   
		yao2 = Math.round(Math.random());   
		yao3 = Math.round(Math.random());		   
		if (yao1+yao2+yao3==0)   
			yao=3;   
		else if (yao1+yao2+yao3==1)   
			yao=0;   
		else if (yao1+yao2+yao3==2)   
			yao=1;   
		else if (yao1+yao2+yao3==3)   
			yao=2;				   
		switch(times)     
		{     
			case 1:     
				document.form1.Y1.options[yao].selected=true;    
				document.form1.b1.value="第二次"    
				break;     
			case 2:     
				document.form1.Y2.options[yao].selected=true;     
				document.form1.b1.value="第三次"				   
				break;     
			case 3:     
				document.form1.Y3.options[yao].selected=true;     
				document.form1.b1.value="第四次"				   
				break;     
			case 4:     
				document.form1.Y4.options[yao].selected=true;     
				document.form1.b1.value="第五次"				   
				break;     
			case 5:     
				document.form1.Y5.options[yao].selected=true;     
				document.form1.b1.value="第六次"   
				break;     
			case 6:     
				document.form1.Y6.options[yao].selected=true;     
				yg2.style.display='none';    
				break;			     
		}    
		if (times>=6) times=0;     
	}	     
	return true;     
} 

function getBlock(){
document.getElementById('yg2').style.display='block';
form1.b1.value="第一次";
times=0;
}           
</SCRIPT>    
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

