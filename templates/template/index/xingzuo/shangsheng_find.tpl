<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/style.css">
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/dream.css"/>
<style>
	.cut_tit{font-size: 14px; padding: 10px 0; color: #a4672e; font-weight: bold;}
	.ss_xz_txt{line-height:26px;}
	.ss_xz_txt table td{padding:2px 8px; border:1px solid #d0ad9a}
</style>
<div class="wrapper">
    <div class="main">
<{include file='./index/public/path.tpl'}>         
        
        <div class="star_con">
	<a href="<{$web_url}>xingzuo/baiyang/" class="star_icon star1 <{if $seo.id==401}>star_current<{/if}>">
		<span class="star_name">白羊座</span>
		<span class="star_date">(3.21-4.19)</span>
	</a>
	<a href="<{$web_url}>xingzuo/jinniu/" class="star_icon star2 <{if $seo.id==402}>star_current<{/if}>">
		<span class="star_name">金牛座</span>
		<span class="star_date">(4.20-5.20)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuangzi/" class="star_icon star3 <{if $seo.id==403}>star_current<{/if}>">
		<span class="star_name">双子座</span>
		<span class="star_date">(5.21-6.21)</span>
	</a>
	<a href="<{$web_url}>xingzuo/juxie/" class="star_icon star4 <{if $seo.id==404}>star_current<{/if}>">
		<span class="star_name">巨蟹座</span>
		<span class="star_date">(6.22-7.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shizi/" class="star_icon star5 <{if $seo.id==405}>star_current<{/if}>">
		<span class="star_name">狮子座</span>
		<span class="star_date">(7.23-8.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/chunv/" class="star_icon star6 <{if $seo.id==406}>star_current<{/if}>">
		<span class="star_name">处女座</span>
		<span class="star_date">(8.23-9.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/tiancheng/" class="star_icon star7 <{if $seo.id==407}>star_current<{/if}>">
		<span class="star_name">天秤座</span>
		<span class="star_date">(9.23-10.23)</span>
	</a>
	<a href="<{$web_url}>xingzuo/tianxie/" class="star_icon star8 <{if $seo.id==408}>star_current<{/if}>">
		<span class="star_name">天蝎座</span>
		<span class="star_date">(10.24-11.22)</span>
	</a>
	<a href="<{$web_url}>xingzuo/sheshou/" class="star_icon star9 <{if $seo.id==409}>star_current<{/if}>">
		<span class="star_name">射手座</span>
		<span class="star_date">(11.23-12.21)</span>
	</a>
	<a href="<{$web_url}>xingzuo/mojie/" class="star_icon star10 <{if $seo.id==410}>star_current<{/if}>">
		<span class="star_name">摩羯座</span>
		<span class="star_date">(12.22-1.19)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuiping/" class="star_icon star11 <{if $seo.id==411}>star_current<{/if}>">
		<span class="star_name">水瓶座</span>
		<span class="star_date">(1.20-2.18)</span>
	</a>
	<a href="<{$web_url}>xingzuo/shuangyu/" class="star_icon star12 <{if $seo.id==412}>star_current<{/if}>">
		<span class="star_name">双鱼座</span>
		<span class="star_date">(2.19-3.20)</span>
	</a>
</div>

<div class="cont">

			<div class="col_left">

				<div class="fn_part fn_sj mod_box_t1">
					<div class="hd">
						<h1><{$seo.name}></h1>
					</div>
					<div class="bd">
                    	<div class="intro_area">
							<h4>关于上升星座</h4><p>
什么是上升星座?
在西洋占星学中上升星座，又称生辰星位。出生的时候，在东方地平线上第一个升起的星座，就是上升星座。正因为如此，出生图上第一宫的位置(第一宫定义着你的自我印象、外观、精神层面上的意识、早期的生长环境、生活中的最原始状态)，一定在上升星座里。因此，上升星座与星体无关，而是与你的出生时间、出生地点有关系。
上升星座的起源
在个人命盘中上升星座的标志是“Asc”。其概念起源于中世纪，因为那时诞生了一个新的要素，便是天宫的划分，即根据出生时间和地点对生时的天宫进行区位性划分，从而可以出生天宫图完全个人化，使预测精度明显提高。
上升星座代表什么?
上升星座会影响一个人的外貌、气质、给人的第一印象，以及与他人互动的方式，因此上升星座代表一个人的外在表现。上升星座对个人影响很大，一个人基本的个性也会受到它的影响，还有长相也是，尤其是三十岁以后，它会主宰着个人的价值观及生活态度。
怎么算上升星座?
上升星座查询：如果你知道自己的阳历生日就可以在本软件中输入你的出生日期，即可查看出你的上升星座，或者通过上升星座查询表，对照出生时间看出上升星座。</p>
						</div>
						<div class="mod_box_t3 fn_box_xingzuo">
							<div class="box_con">
								<div class="mod_form">
                                
                                <form action="<{$web_url}>index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                    <input type="hidden" name="ac" value="ssxz" />
                                    <input type="hidden" name="ct" value="xingzuo" />
                                    <input type="hidden" name="tid" value="472" />
                                    
                                    <select class="select" name="y" id="gl_year" onChange="chage_day('gl');">
                                                <?php for($i=1910;$i<2015;$i++){ ?>
                                                <?php if($i==1988){$se='selected';}else{$se='';} ?>
                                                <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                                <?php }?>
                                            </select> 年
                                            
                                    <select class="select" name="m" id="gl_month">
                                                <?php for($i=1;$i<13;$i++){ ?>
                                                <?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
                                                <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                                <?php }?>
                                            </select> 月
                                            
                                    <select class="select" name="d" id="gl_day">
                                                <?php for($i=1;$i<32;$i++){ ?>
                                                <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                                                <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                                <?php }?>
                                            </select> 日
                                            
                                    <select class="select" name="h" id="hour">
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
                                            
                                    <select class="select" name="i" id="minute">
                                        <?php for($i=0;$i<60;$i++){ ?>
                                        <option value="<?=$i?>"><?=$i?></option>
                                        <?php }?>
                                    </select> 分 
                                    
                                    <button class="btn_orange_1" onClick="get2Cha('shouji');" type="submit">查询</button>
                                </form>
								</div>
							</div>
							
						</div>
					</div>
                    

				</div>
                
                
                
                
                <div class="fn_part fn_sj mod_box_t1">
					<div class="hd">
						<h1>上升星座结果</h1>
					</div>
					<div class="bd">
                    	<div class="intro_area">
                        
                        
                        <div class="ss_xz_txt">
                        
                        	<h4 class="cut_tit">您的上升星座是：<{$data.title}></h4>
                            
                        	<{$data.jianjie}>
                        </div>
                        
                        <div class="ss_xz_txt mt10">
                        
                        	<h4 class="cut_tit">上升星座<{$data.title}>的特质</h4>
                        
                            <{$data.tezhi}>
                        </div>
                        
                        
                        <div class="ss_xz_txt mt10">
                        
                        	<h4 class="cut_tit">上升星座<{$data.title}>的行事风格</h4>
                        
                            <{$data.fgmd}>
                        </div>
                        
                        <div class="ss_xz_txt mt10">
                        
                        	<h4 class="cut_tit">上升星座<{$data.title}>的性格特点</h4>
                        
                            <{$data.xingge}>
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

<{include file='./index/footer.tpl'}>


