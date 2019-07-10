<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/match.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
  <div class="col_left">
                        <div class="mod_box_t1 fn_part fn_xingming">
                            <div class="hd">
                                <h1>姓名配对关系</h1>
                            </div>
                            <div class="bd">	
                                 <{if $xm1}>
                                  <div class="match_result">
                                    <dl class="clearfix">
                                        <dt>双方姓名：<strong class="cRed"><{$xm1}>：<strong class="cRed"><{$xm2}></strong></dt>																													
                                    </dl>
                                    <ul>
                                        <li>关系揭密：<{$xxxy.intro}></li>
                                    </ul>
                                </div>
                                <{/if}>
                                <div class="mod_box_t3 fn_box">
                                    <div class="box_con">
                                        <div class="mod_form">
                                            <form method="post" action="<{$web_url}>index.php">
                                            <input type="hidden" name="ac" value="mingzi" />
                                            <input type="hidden" name="ct" value="peidui" />
                                            <input type="hidden" name="tid" value="387" />
                                                <div class="form_item">
                                                    <input name="xm1" id="pd_num1" value="" class="txt" type="text">
                                                    <span class="vs">VS</span>
                                                    <input name="xm2" id="pd_num2" value="" class="txt" type="text">
                                                </div>	
                                                <div class="form_item btn_item">
                                                    <button class="btn_orange2" type="submit" id="btn_begincs2">姓名配对</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            <div class="intro_area">
                                    <p>姓名配对是根据姓名天格、地格、人格、总格、外格等五格数理关系，开运网爱情测试姓名配对是依据《易经》的姓名三才五格理论爱情测试姓名配对关系高达80%准确，输入双方的姓名通过缘分测试打分并运用阴阳五行相生相克理论，来测试您和对方的爱情测试指数、姓名配对缘分测试、\通过姓名笔划数看看你和爱人的关系究竟怎样</p>
                                </div>
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