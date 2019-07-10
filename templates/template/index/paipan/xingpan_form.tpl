<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/paipan/smcss.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
			<div class="col_left">
                
			<div class="fn_bz8 fn_part mod_box_t1">
              <div class="hd">
                <h1>星盘查询测试</h1>
              </div>
              <div class="bd">
                <div class="intro_area"><strong>「星盘测试」</strong>专业的在线星盘分析,详细的在线个人星盘解说.你知道什么是星盘吗?你知道你的星盘蕴藏什么吗?你知道你的星盘是否注定了你的一生?快来获取你的星盘,让我们为你解读你的星盘人生-开运网星盘测试。</div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
                            <form action="<{$web_url}>index.php" name="login" method="post" onSubmit="return submitchecken();">
                            <input type="hidden" name="ac" value="xingpan" />
                            <input type="hidden" name="ct" value="paipan" />
								<div class="mod_form">
									<div class="form_item">
										姓名：<input type="text" name="name" id="xing" value="" class="ipt_text" />
                                        出生时间： 
                                        <select name=birthyear>
                                        <?php
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
                                        
                                    	</div>
												
                                                <div class="form_item">
                                                星盘：
                                <select name="t1" class="pl4">
                                    <option value="1">当太阳</option>
                                    <option value="2">当月亮</option>
                                    <option value="3">当水星</option>
                                    <option value="4">当金星</option>
                                    <option value="5">当火星</option>
                                    <option value="6">当木星</option>
                                    <option value="7">当土星</option>
                                    <option value="8">当天王星</option>
                                    <option value="9">当海王星</option>
                                    <option value="10">当冥王星</option>
                                </select>
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                
                                星座：  <select name="t2" class="pl28">
                                   	<option value="1">落入白羊座</option>
                                    <option value="2">落入金牛座</option>
                                    <option value="3">落入双子座</option>
                                    <option value="4">落入巨蟹座</option>
                                    <option value="5">落入狮子座</option>
                                    <option value="6">落入处女座</option>
                                    <option value="7">落入天秤座</option>
                                    <option value="8">落入天蝎座</option>
                                    <option value="9">落入射手座</option>
                                    <option value="10">落入摩羯座</option>
                                    <option value="11">落入水瓶座</option>
                                    <option value="12">落入双鱼座</option>
                                </select>
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

