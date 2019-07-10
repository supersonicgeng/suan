<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/divine.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
			  <div class="mod_box_t1 fn_part fn_gy">
					<div class="hd">
						<h1><img src="<{$web_url}>static/bazi/images/suanming/tit/chouqian.png">车公灵签</h1>
					</div>
					<div class="bd">
                    <div class="divine_special result-con clearfix">
                    
                    <{if $qid!=''}>
                     	<img src="<{$web_url}><{$qian.img}>" class="img-gyq" />
                        <div class="result-detail">
								<p class="title">您抽中了【第<span><{$qian.qid}></span>签】<{$qian.qianming}></p>
								<table>
									<colgroup>
										<col width="77">
										<col width="375">
									</colgroup>
									<tbody><tr>
										<td class="col-1">吉凶</td>
										<td><strong><{$qian.jx}>签</strong></td>
									</tr>
									<tr>
										<td class="col-1">解曰</td>
										<td><{$qian.jie}></td>
									</tr>
									<tr>
										<td class="col-1">签语</td>
										<td><{$qian.qy}></td>
									</tr>
									<tr>
										<td class="col-1">释义</td>
										<td><{$qian.shiyi}></td>
									</tr>
									<tr>
										<td class="col-1">详解</td>
										<td><{$qian.xiangjie}></td>
									</tr>
								</tbody></table>
							</div>
                            
                        <div style="display:block; float:left; margin-top:30px;">
                        	<a href="<{$web_url}>chouqian/chegong/" class="btn_orange_1">重新抽签</a>
                        </div>
					<{/if}>
					
                   
              <{if $rand!=''}>
              
                  <{if $gysmile!='4' && $clicknum<3}>
                        
                        <p class="first">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签</p>
                        <{if $clicknum==2}>
                        <h5><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></h5>
                        <{else}>
                        <h5><a href="<{$web_url}>chouqian/chegong/<{$clicknum+2}>/<{$rand}>"></a><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></h5>
                        <{/if}>
                        <p class="last"><span class="cRed">您掷出<{$clicknum+1}>次圣杯，请点击上图再次掷出！</span></p>
                        
                        <{if $clicknum==2}>
                        	<p class="last"><span class="cRed">恭喜，您连续掷出了三次圣杯，<a href="<{$web_url}>chouqian/chegong/4/<{$rand}>">请点这里察看签词！</a></span></p>
                        <{else}>
                        	<p class="last">需连续掷出三次圣杯，才是灵签！目前，您已经掷出<strong class="cRed"><{$clicknum+1}></strong>次</p>    
                  		<{/if}>
                  <{else}>
                  
                        <p class="first">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签</p>
                        <h5><img src="<{$web_url}>static/bazi/img/suanming/bad_cup.gif" /></h5>
                        <p class="last"><span class="cRed">您掷出笑杯了，此签不准。<a href="<{$web_url}>chouqian/chegong/">请点这里重新抽签！</a></span></p>
                  
                  <{/if}>
                  
              <{/if}>
                    
              <{if $qid=='' && $rand==''}>
                    <h6><a href="<{$web_url}>chouqian/chegong/1" title="首先请您心无杂念，然后点这里开始抽签"><img src="<{$web_url}>static/bazi/img/suanming/v2/qian.gif" alt="灵签"></a></h6>
 <p>车公原名车卫（公元960年至1279年），籍贯江西南昌五福，南宋末年一员猛将，因勘平江南之乱有功，被封为大元帅。当时广东一带瘟疫蔓延，不少居民染上恶疾，由于车公精通医术，协助村民消灾解困，令瘟疫尽除。所到之处，疫症亦立刻停止，因此村民请人塑了车大元帅的塑像，并建车公庙供奉，以镇压疫症。。</p>
                    <ul>
                        <li>1. 抽签须虔诚认真，秉除杂念，不可玩笑试之。不可随意抽签，要遵守“无事不占卜”的规则，心诚则灵。</li>
                        <li>2. 净身（就是洗澡），如无条件洗澡的，也必须把双手洗干净。</li>
                        <li>3. 签的时间：中午十二点左右和晚上十一点前或者后，晚上十一点是阴阳相接之时，最适宜抽签，抽签的信息也最准确；房事后和打雷下大雨时不要抽签，因为此时信息不准。</li>
                        <li>4. 事先确定要占的事情，如婚姻、事业、运程、流年、工作、财运......等。</li>
                        <li>5. 默念自己姓名、出生时辰、年龄、现在居住地址。</li>
                        <li>6. 点击上面的签筒开始抽签。抽签完毕，需要掷出三次圣杯才算灵签，否则需要重新抽签。</li>
                        <li>7. 每天只能针对某一件事情进行一次抽签占卜，请勿多求，否则不灵。</li>
                    </ul>
                <{/if}>
                
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

<{include file='./index/footer.tpl'}>

