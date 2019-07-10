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
			  <div class="mod_box_t1 fn_part fn_yl">
					<div class="hd">
						<h1><img src="<{$web_url}>static/bazi/images/suanming/tit/chouqian.png">月老灵签</h1>
					</div>
					<div class="bd">
                    <div class="divine_special result-con clearfix">
                    
                    <{if $qid!=''}>
                     	<img src="<{$web_url}><{$qian.img}>" class="img-gyq" />
                        <div class="result-detail">
								<p class="title">您抽中了【第<span><{$qian.qid}></span>签】</p>
								<table>
									<colgroup>
										<col width="77">
										<col width="375">
									</colgroup>
									<tbody><tr>
										<td class="col-1">吉凶</td>
										<td><strong><{$qian.jx}></strong></td>
									</tr>
									<tr>
										<td class="col-1">解曰</td>
										<td><{$qian.jie}></td>
									</tr>
									<tr>
										<td class="col-1">签语</td>
										<td><{$qian.qy}></td>
									</tr>
								</tbody></table>
							</div>
                            
                        <div style="display:block; float:left; margin-top:30px;">
                        	<a href="<{$web_url}>chouqian/yuelao/" class="btn_orange_1">重新抽签</a>
                        </div>
					<{/if}>
					
                   
              <{if $rand!=''}>
              
                  <{if $gysmile!='4' && $clicknum<3}>
                        
                        <p class="first">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签</p>
                        <{if $clicknum==2}>
                        <h5><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></h5>
                        <{else}>
                        <h5><a href="<{$web_url}>chouqian/yuelao/<{$clicknum+2}>/<{$rand}>"></a><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></h5>
                        <{/if}>
                        <p class="last"><span class="cRed">您掷出<{$clicknum+1}>次圣杯，请点击上图再次掷出！</span></p>
                        
                        <{if $clicknum==2}>
                        	<p class="last"><span class="cRed">恭喜，您连续掷出了三次圣杯，<a href="<{$web_url}>chouqian/yuelao/4/<{$rand}>">请点这里察看签词！</a></span></p>
                        <{else}>
                        	<p class="last">需连续掷出三次圣杯，才是灵签！目前，您已经掷出<strong class="cRed"><{$clicknum+1}></strong>次</p>    
                  		<{/if}>
                  <{else}>
                  
                        <p class="first">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签</p>
                        <h5><img src="<{$web_url}>static/bazi/img/suanming/bad_cup.gif" /></h5>
                        <p class="last"><span class="cRed">您掷出笑杯了，此签不准。<a href="<{$web_url}>chouqian/yuelao/">请点这里重新抽签！</a></span></p>
                  
                  <{/if}>
                  
              <{/if}>
                    
              <{if $qid=='' && $rand==''}>
                    <h6><a href="<{$web_url}>chouqian/yuelao/1" title="首先请您心无杂念，然后点这里开始抽签"><img src="<{$web_url}>static/bazi/img/suanming/v2/qian.gif" alt="灵签"></a></h6>
 <p>专业版月老灵签有100签，月老灵签为您提供解签，三种签的签文自古至今流传久远，各地观音灵签抽签略有不同。也有少数佛寺院使用这种签种观音灵签解签，首先要有一棵真诚的心态，闭上眼睛请求指点的爱情。如婚姻......所谓的心诚则灵啊，之后才开始。</p>
                   <ul>
                        <li>1. 抽签前先合手默念“月老灵签，指点迷经”三遍。</li>
                        <li>2. 默念自己姓名、出生日期，年龄、现在居住地址。</li>
                        <li>3. 请求指点事情，如：婚姻、爱情，恋人，流年，婚配，桃花运势……等。</li>
                        <li>4. 点上面的签筒开始月老在线抽签！</li>
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

