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
                        <div class="mod_box_t1 fn_part fn_shengxiao">
                            <div class="hd">
                                <h1>生肖配对</h1>
                            </div>
                            <div class="bd">
                                <{if $sx1}>
                                 <div class="match_result">
                                    <dl class="clearfix">
                                        <dt>双方生肖：<strong><{$sx1}></strong>：<strong><{$sx2}></strong></dt>
                                    </dl>
                                    <ul>
                                        <li>男鼠＋女鼠：<{$sx.shorttxt}></li>
                                        <li></li>
                                        <li>女鼠＋男鼠：<{$sx.content}></li>
                                        <li></li>
                                    </ul>
                                </div>
                                <{/if}>
                                <div class="mod_box_t3 fn_box">
                                    <div class="box_con">
                                        <div class="mod_form">
                                            <form method="post" action="<{$web_url}>index.php">
                                            <input type="hidden" name="ac" value="shengxiao" />
                                            <input type="hidden" name="ct" value="peidui" />
                                            <input type="hidden" name="tid" value="386" />
                                                <div class="form_item">
                                                    <span class="st_outer"><span class="st_inner"><select name="sx1">
                                                                <option selected="" value="鼠">鼠</option>
                                                                <option value="牛">牛</option>
                                                                <option value="虎">虎</option>
                                                                <option value="兔">兔</option>
                                                                <option value="龙">龙</option>
                                                                <option value="蛇">蛇</option>
                                                                <option value="马">马</option>
                                                                <option value="羊">羊</option>
                                                                <option value="猴">猴</option>
                                                                <option value="鸡">鸡</option>
                                                                <option value="狗">狗</option>
                                                                <option value="猪">猪</option>
                                                            </select></span></span>
                                                    <span class="vs">VS</span>
                                                    <span class="st_outer"><span class="st_inner"><select name="sx2">
                                                                <option selected="" value="鼠">鼠</option>
                                                                <option value="牛">牛</option>
                                                                <option value="虎">虎</option>
                                                                <option value="兔">兔</option>
                                                                <option value="龙">龙</option>
                                                                <option value="蛇">蛇</option>
                                                                <option value="马">马</option>
                                                                <option value="羊">羊</option>
                                                                <option value="猴">猴</option>
                                                                <option value="鸡">鸡</option>
                                                                <option value="狗">狗</option>
                                                                <option value="猪">猪</option>
                                                            </select></span></span>
                                                </div>	
                                                <div class="form_item btn_item">
                                                    <button class="btn_orange2" type="submit" id="btn_begincs2">生肖配对</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            <div class="intro_area">
                                    <p>生肖配对是依据古籍中的生肖五行理论衍生而来，属相有鼠、牛、虎、兔、龙、蛇、马、羊、猴、鸡、狗、猪十二种生肖，属相又都是由五行来区分的，生肖五行之间相生相克是如何分配属相配对的呢。生肖配对查询生肖相生的属相配对自然一路花好月圆，属相相克的配对组合就需要披荆斩棘结伴而行。希望了解一下你们的爱情姻缘路？输入你们的生肖属相信息在线速配一下吧。</p>
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