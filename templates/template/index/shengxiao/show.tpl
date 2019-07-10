<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/fortune.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
 <div class="cont">

<div class="col_left">
				<!-- 生肖运程 begin -->
				<div class="fn_part fn_sxxg fn_sxyc fn_sxyc2016 mod_box_t1">
					<div class="hd">
						<h1><{$data.title}></h1>
					</div>
					<!---->
                    <div class="bd">
                        <div class="mod_zodiac_txt">
                          <div class="list">
                          
                          	<{foreach from=$s_tid item=v}>
                            	<a href="<{$web_url}><{$v.extra}>" class="<{if $v.id==$seo.id}>current<{/if}>"><{$v.name}></a>
                            <{/foreach}>
                            
                          </div>
                        </div>
                        
                        <{$data.content}>
                    </div>
                    <!---->
                    
					<i class="flag_tl_t1"></i>
					<i class="flag_tr_t1"></i>
					<i class="flag_bl_t1"></i>
					<i class="flag_br_t1"></i>
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

