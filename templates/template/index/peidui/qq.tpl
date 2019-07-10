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
                        <div class="mod_box_t1 fn_part fn_qq">
                            <div class="hd">
                                <h1>QQ缘分配对</h1>
                            </div>
                            <div class="bd">
                            <{if $qq.qq1}>
                            <div class="match_result">
                            <dl class="clearfix">
                            <dt>双方QQ：<strong><{$qq.qq1}></strong>：<strong><{$qq.qq2}></strong></dt>
                            </dl>
                            <ul>
                            <li>关系揭密：<{$qqqy.intro}></li>
                            </ul>
                            </div>
                            <{/if}>
                                <div class="mod_box_t3 fn_box">
                                    <div class="box_con">
                                        <div class="mod_form">
                                            <form action="<{$web_url}>index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                            <input type="hidden" name="ac" value="qq" />
                                            <input type="hidden" name="ct" value="peidui" />
                                            <input type="hidden" name="tid" value="384" />
                                                <div class="form_item">
                                                    <input type="text" name="qq1" id="pd_num1" onKeyUp="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" class="txt" />
                                                    <span class="vs">VS</span>
                                                    <input type="text" name="qq2" id="pd_num2"  onKeyUp="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" class="txt" />
                                                </div>	
                                                <div class="form_item btn_item">
                                                    <button class="btn_orange2" type="submit" id="btn_begincs2">缘分配对</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
								<?php include('cache/gg/haoma_674x60.php'); ?>
                            </div>
                             <div class="intro_area">
                                    <p>QQ号码究竟赋予了我们不一样样的命运，输入QQ号码测试缘分，QQ号码缘分配对两个人又会擦出什么样的火花呢？想知道QQ好友跟我的关系？马上进行这个趣味小测试吧提前揭晓....QQ配对查询，可测算出两人的关系哦。准得有点儿邪哦，快来试试吧。传说中最准的爱情测试，准确率最高达98%，不信您可以试试！</p>
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