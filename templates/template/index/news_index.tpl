<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link href="<{$web_url}>static/bazi/css/suanming/v2/dream.css" rel="stylesheet" type="text/css">
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}>         
        <div class="cont">
			<div class="col_left">
        <!---->
        <{foreach from=$self_tid item=v key=k}>
            <div class="mod_box_t2 box_knowledge clearAll <{if $k!=0}>mt10<{/if}>">
                <div class="hd clearfix">
                    <h3 class="titleLink"><{$v.name}>&nbsp;&nbsp;
                    <{if $v.id==345}>
                    <a href="/list-345-25.html">星座爱情</a><span>|</span><a href="/list-345-26.html">星座性格</a><span>|</span><a href="/list-345-27.html">星座时尚</a><span>|</span><a href="/list-345-28.html">星座开运</a><span>|</span><a href="/list-345-29.html">星座知识</a><span>|</span><a href="/list-345-30.html">星座情感</a><span>|</span><a href="/xingzuo/shangshengxingzuo/" class="cRed">上升星座</a>
                    
                    <{elseif $v.id==346}>
                    <a href="/list-346-31.html">爱情测试</a><span>|</span><a href="/list-346-32.html">性格测试</a><span>|</span><a href="/list-346-33.html">财富测试</a><span>|</span><a href="/list-346-34.html">智商测试</a>
                    
                    <{elseif $v.id==347}>
                    <a href="/list-347-35.html">家居</a><span>|</span><a href="/list-347-36.html">事业</a><span>|</span><a href="/list-347-37.html">爱情</a><span>|</span><a href="/list-347-38.html">灵异</a>
                    
                    <{elseif $v.id==471}>
                    <a href="/list-471-13.html">子鼠</a><span>|</span><a href="/list-471-14.html">丑牛</a><span>|</span><a href="/list-471-15.html">寅虎</a><span>|</span><a href="/list-471-16.html">卯兔</a><span>|</span><a href="/list-471-17.html">辰龙</a><span>|</span><a href="/list-471-18.html">巳蛇</a><span>|</span><a href="/list-471-19.html">午马</a><span>|</span><a href="/list-471-20.html">未羊</a><span>|</span><a href="/list-471-21.html">申猴</a><span>|</span><a href="/list-471-22.html">酉鸡</a><span>|</span><a href="/list-471-23.html">戌狗</a><span>|</span><a href="/list-471-24.html">亥猪</a>
                    <{/if}>
                    
                    </h3>
                    <a class="titleLink_more" href="/list-<{$v.id}>.html">更多&gt;&gt;</a>
                    <i class="flag_l_t2"></i>
                    <i class="flag_r_t2"></i>
                </div>
                <div class="bd">
                    <div class="knowledge_list clearfix">
                        <div class="know_row">
                            <div class="block_left">
                                <div class="k_left">
                                    <{if $v.data_list.img.0.title!=''}>
                                        <a href="<{$v.data_list.img.0.url}>" target="_blank">
                                            <img src="<{$v.data_list.img.0.img}>">
                                            <div class="black_gb">
                                                <span class="white_font"><{$v.data_list.img.0.title}></span>
                                            </div>
                                        </a>
                                    <{/if}>    
                                </div>
                                <div class="k_right">
                                    <ul>
                                    <{section loop=$v.data_list.list name=news start=0 max=4}>
                                        <li><i class="i-point"></i><a href="<{$v.data_list.list[news].url}>" target="_blank"><{$v.data_list.list[news].title}></a></li>
                                    <{/section}>  
                                    </ul>
                                </div>
                            </div>
                            <div class="block_right">
                                <div class="k_left">
                                    <{if $v.data_list.img.1.title!=''}>
                                        <a href="<{$v.data_list.img.1.url}>" target="_blank">
                                            <img src="<{$v.data_list.img.1.img}>">
                                            <div class="black_gb">
                                                <span class="white_font"><{$v.data_list.img.1.title}></span>
                                            </div>
                                        </a>
                                    <{/if}>  
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <{section loop=$v.data_list.list name=news start=4 max=4}>
                                        	<li><i class="i-point"></i><a href="<{$v.data_list.list[news].url}>" target="_blank"><{$v.data_list.list[news].title}></a></li>
                                    	<{/section}>  
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clear_both"></div>
                        <div class="know_row top_dash">
                            <div class="block_left">
                                <div class="k_left">
                                    <{if $v.data_list.img.2.title!=''}>
                                        <a href="<{$v.data_list.img.2.url}>" target="_blank">
                                            <img src="<{$v.data_list.img.2.img}>">
                                            <div class="black_gb">
                                                <span class="white_font"><{$v.data_list.img.2.title}></span>
                                            </div>
                                        </a>
                                    <{/if}> 
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <{section loop=$v.data_list.list name=news start=8 max=4}>
                                        	<li><i class="i-point"></i><a href="<{$v.data_list.list[news].url}>" target="_blank"><{$v.data_list.list[news].title}></a></li>
                                    	<{/section}>  
                                    </ul>
                                </div>
                            </div>
                            <div class="block_right">
                                <div class="k_left">
                                    <{if $v.data_list.img.3.title!=''}>
                                        <a href="<{$v.data_list.img.3.url}>" target="_blank">
                                            <img src="<{$v.data_list.img.3.img}>">
                                            <div class="black_gb">
                                                <span class="white_font"><{$v.data_list.img.3.title}></span>
                                            </div>
                                        </a>
                                    <{/if}> 
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <{section loop=$v.data_list.list name=news start=12 max=4}>
                                        	<li><i class="i-point"></i><a href="<{$v.data_list.list[news].url}>" target="_blank"><{$v.data_list.list[news].title}></a></li>
                                    	<{/section}>  
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         <{/foreach}>   
        <!---->
        


</div>

<div id="col_right" class="col_right">

<{include file='./index/public/right.tpl'}>  

</div>

</div>

</div>

</div>

<{include file='./index/footer.tpl'}>

