<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/hehun.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
 <div class="cont">
			<div class="col_left">
				<div class="mod_box_t1 fn_part fn_hehun">
					<div class="hd">
						<h1>八字合婚</h1>
					</div>
					<div class="bd">
<form   action="<{$web_url}>index.php" class="J_ajaxForm J_testFixedTop" id="submit1" name="login" method="post" onSubmit="return checkForm_hehun()">
<div class="sm_box hehun_info">
	<div class="input_style">
		<div class="name">男方姓名 <span>(必填)</span>：</div>
		<input type="text" placeholder=" 请输入姓名" name="user" id="name2" value="">
	</div>
	<div class="input_style" id="datbox1">
		<div class="name">出生日期 <span>(必填)</span>：</div>
		<input id="birthday" class="input" type="text" name="mdates" data-boxid="datbox1" data-toid-date="birthday" placeholder="请选择日期" data-type="0" value="">
		<input type="hidden" id="b_input2" name="mday" value="">
	</div>
	<div class="birthtime">
	  <span>出生时辰：  </span>
		<select size="1" name="t_ime" id="hour2">
			<option value="0" selected="selected">时辰不详</option>
			<option value="24">子 00:00-00:59</option>
			<option value="1">丑 01:00-01:59</option>
			<option value="2">丑 02:00-02:59</option>
			<option value="3">寅 03:00-03:59</option>
			<option value="4">寅 04:00-04:59</option>
			<option value="5">卯 05:00-05:59</option>
			<option value="6">卯 06:00-06:59</option>
			<option value="7">辰 07:00-07:59</option>
			<option value="8">辰 08:00-08:59</option>
			<option value="9">巳 09:00-09:59</option>
			<option value="10">巳 10:00-10:59</option>
			<option value="11">午 11:00-11:59</option>
			<option value="12">午 12:00-12:59</option>
			<option value="13">未 13:00-13:59</option>
			<option value="14">未 14:00-14:59</option>
			<option value="15">申 15:00-15:59</option>
			<option value="16">申 16:00-16:59</option>
			<option value="17">酉 17:00-17:59</option>
			<option value="18">酉 18:00-18:59</option>
			<option value="19">戌 19:00-19:59</option>
			<option value="20">戌 20:00-20:59</option>
			<option value="21">亥 21:00-21:59</option>
			<option value="22">亥 22:00-22:59</option>
			<option value="23">子 23:00-23:59</option>
		</select>
	</div>
	<!--女-->
	<div class="birthtime" style="top: 258px;">
		<span>出生时辰：  </span>
		<select size="1" name="t_ime_a" id="hour">
			<option value="0" selected="selected">时辰不详</option>
			<option value="24">子 00:00-00:59</option>
			<option value="1">丑 01:00-01:59</option>
			<option value="2">丑 02:00-02:59</option>
			<option value="3">寅 03:00-03:59</option>
			<option value="4">寅 04:00-04:59</option>
			<option value="5">卯 05:00-05:59</option>
			<option value="6">卯 06:00-06:59</option>
			<option value="7">辰 07:00-07:59</option>
			<option value="8">辰 08:00-08:59</option>
			<option value="9">巳 09:00-09:59</option>
			<option value="10">巳 10:00-10:59</option>
			<option value="11">午 11:00-11:59</option>
			<option value="12">午 12:00-12:59</option>
			<option value="13">未 13:00-13:59</option>
			<option value="14">未 14:00-14:59</option>
			<option value="15">申 15:00-15:59</option>
			<option value="16">申 16:00-16:59</option>
			<option value="17">酉 17:00-17:59</option>
			<option value="18">酉 18:00-18:59</option>
			<option value="19">戌 19:00-19:59</option>
			<option value="20">戌 20:00-20:59</option>
			<option value="21">亥 21:00-21:59</option>
			<option value="22">亥 22:00-22:59</option>
			<option value="23">子 23:00-23:59</option>
		</select>
	</div>
	<div class="line"></div>

	<div class="input_style">
		<div class="name">女方姓名 <span>(必填)</span>：</div>
		<input type="text" placeholder=" 请输入姓名"  name="user_a" id="name"value="">
	</div>
	<div class="input_style" id="datbox2">
		<div class="name">出生日期 <span>(必填)</span>：</div>
		<input id="birthday3" class="input " name="wdates" type="text" data-boxid="datbox2" data-toid-date="birthday3" placeholder="请选择日期" data-type="0" value="">
		<input type="hidden" id="b_input3" name="wday" value="">
	</div>
</div>
<input name="type" type="hidden" value="6" />
			<input type="hidden" name='year'  value="">
			<input type="hidden" name='month'  value="">
			<input type="hidden" name='day'  value="">
			<input type="hidden" name='year_a'  value="">
			<input type="hidden" name='month_a'  value="">
			<input type="hidden" name='day_a'  value="">
			<input type="hidden" name="ac" value="hehun" />
			<input type="hidden" name="ct" value="peidui" />
			<input type="hidden" name="tid" value="383" />
			<input type="hidden" name="h"  value="">
			<input type="hidden" name="i"  value="">
			<input type="hidden" name=cY  value="">
			<input type="hidden" name=cM  value="">
			<input type="hidden" name=cD  value="">
			<input type="hidden" name=cH  value="">
			<input type="hidden" name=term1  value="">
			<input type="hidden" name=term2  value="">
			<input type="hidden" name=start_term  value="">
			<input type="hidden" name=end_term  value="">
			<input type="hidden" name=start_term1  value="">
			<input type="hidden" name=end_term1  value="">
			<input type="hidden" name=lDate  value="">
			<input type="hidden" name=lDate1  value="">
<input type="button" class="btn_submit btn_orange2 J_ajax_submit_btnsub" id="btn_begincs2" value="八字合婚">
</form>
					</div>
<div class="M2_item">
<a href="/peidui/hehun/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/bzhh.png" alt=""></div>
	<div class="name">八字合婚</div>
	<div class="miaoshu">八字合婚是非常古老的配對方法，在古代，婚前男女雙方交換庚帖，以蔔八字是否相配，謂之“八字合婚”。 所謂合婚，就是把男女雙方八字配在壹起，看雙方八字之間的五行是否和諧從而得出合婚結果。</div>
	<div class="btn"><p>立即查询</p></div>
</a>
<a href="/peidui/xingzuo/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/xzpd.png" alt=""></div>
	<div class="name">星座配對</div>
	<div class="miaoshu">每個星座都有不同的性格，在壹起也會産生不同的化學反應，妳和他（她）之間的緣分到底是什麽樣的？妳們的愛情指數是多少呢？星座配對讓您輕松了解彼此的緣分。</div>
	<div class="btn"><p>立即查询</p></div>
</a>
<a href="/peidui/shengxiao/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/sxpd.png" alt=""></div>
	<div class="name">生肖配對</div>
	<div class="miaoshu">在中國的傳統文化中，不同的生肖代表不同的命運和性格，生肖配對就成了很多人預測緣分的工具，我們提供的十二生肖配對查詢能讓您了解自己和其他生肖之間的緣分，希望對您選擇人生伴侶有所幫助。</div>
	<div class="btn"><p>立即查询</p></div>
</a>

<a href="/peidui/xuexing/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/xxpd.png" alt=""></div>
	<div class="name">血型配對</div>
	<div class="miaoshu">血型配對是衆多配對方法中的壹種，我們根據不同血型進行分析對比，從而得出非常詳細的配對結果，可以幫助您在擇偶過程中更快的了解對方，清楚自己和對方的緣分情況。</div>
	<div class="btn"><p>立即查询</p></div>
</a>
</div>
<script>

$('.J_ajax_submit_btnsub').click(function(){
      
            setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
                    checkForm_hehun();
                            document.getElementById("submit1").submit();
                                },2000);
});
</script>
				</div>
                <{include file='./index/public/left_sx.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
		<script src="/static/js/hehun.js"></script>
         <?php   include('templates/public/footer.tpl.php'); ?>  
<{include file='./index/footer.tpl'}>