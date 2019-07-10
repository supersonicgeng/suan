<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link href="<{$web_url}>static/bazi/css/suanming/v2/dream.css" rel="stylesheet" type="text/css">
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
        
<{include file='./index/public/path.tpl'}> 

    <div class="mod_box_t1 fn_box fn_zgjm_search">
    
        <div class="dream_search">
            <div class="dream_sc clearfix">
    
                <form id="fm" method="post" action="<{$web_url}>index.php">
                    <input type="hidden" name="ct" value="zgjm">
                    <input type="hidden" name="ac" value="search">
                    <div class="search-text">
    
                        <span>梦见</span>
    
                        <input type="text" class="dream_txt" autocomplete="off" name="q" id="word" value="女人">
    
                    </div>
    
                    <input type="submit" class="btn_search" onmouseout="this.className='btn_search'" onmouseover="this.className='btn_search btn_search_hover'" name="search_submit" value="开始解梦" />
    
                </form>
    
            </div>
    
            <p>
                常见的梦：<{foreach from=$m.zgjm_hot_tag item=v}><a <{if $v.blank==1}>target="_blank"<{/if}> href="<{$v.url}>" <{if $v.color==1}>class="cRed"<{elseif $v.color==2}>class="cGreen"<{elseif $v.color==3}>class="cBlue"<{/if}> title="<{$v.title}>"><{$v.name}></a><{/foreach}>
            </p>
    
        </div>
    
        <i class="flag_tl_t1"></i><i class="flag_tr_t1"></i><i class="flag_bl_t1"></i><i class="flag_br_t1"></i>
    
    </div>
        
        <div class="cont">

			<div class="col_left">

				<!--周公解梦 begin-->

				<div class="mod_box_t1 nomt">
                
                	<div class="hd">
                		<h3 class="art_title">【 <{$seo.name}> - 解梦 】</h3>
					</div>
					<div class="bd">			

						
                        
						<div class="intro_tab_cont">

                            <ul class="clearfix mt10 nobt">
                            
                            <{foreach from=$list item=v key=k}>
									<li><a href="show-<{$v.id}>.html" target="_blank"><{$v.title}></a></li>
							<{/foreach}>

                            </ul>

                            <div class="page"><{$pageStr}></div>

						</div>

					</div>

					<i class="flag_tl_t1"></i><i class="flag_tr_t1"></i><i class="flag_bl_t1"></i><i class="flag_br_t1"></i>

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

