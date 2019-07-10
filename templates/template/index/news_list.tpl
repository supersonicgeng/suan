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
				
				<div class="mod_box_t1 fn_part fn_zhgjm">
                
                <div class="hd"><h1><{$seo.name}></h1></div>
                
                <div class="bd">	
                        
						<div class="intro_tab_content">
                           
							<div class="intro_tab_list">
								<ul class="clearfix mt10 nobt">
                                
                                <{foreach from=$list item=v}>
                        			<li><span><{$v.uptime}></span><a href="show-<{$v.id}>.html"><{$v.title}></a></li>
                                <{/foreach}>
                                    
								</ul>
							</div>
							<div class="clear"></div>
                            <div class="page">
                            	<{$pageStr}>
                            </div>
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

