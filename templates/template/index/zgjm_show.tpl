<{include file='./index/header.tpl'}>
<link href="<{$web_url}>static/bazi/css/suanming/v2/dream.css" rel="stylesheet" type="text/css">

<div class="wrapper">
<{include file='./index/public/top_nav.tpl'}>
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

				<div class="mod_box_t1 fn_part fn_zhgjm">
                
                	<div class="hd">
                    	<h1 class="art_title">梦见<{$data.title}></h1>
                	</div>

					<div class="bd">

						<div class="dream_result">
                        
                        	<div class="newsinfo mb10">时间：<{$data.uptime}> &nbsp; 来源：开运网</div>	

							<div class="dream_detail">
                                
								<div class="contents mb10">
									<{$data.content}>
                                    
                                    
                                    <div class="page">
                                    <{$pageStr}>
                                    </div>
								</div>

							</div>	

							<!-- 热词 begin-->
                            <style type="text/css">
                            .dream_detail{min-height:325px;}
                            </style>
							

							<!-- 热词 end-->

							<div class="dream_other">

								<p>你是否还梦见?</p>

								<div class="dream_other_a mt10">
								<{foreach from=$hot_data item=v}>
                        		<a href="show-<{$v.id}>.html" target="_blank"><{$v.title}></a>
								<{/foreach}>
								</div>
                                
                                <div class="dream_other_a mt10">
                                    <!-- Duoshuo Comment BEGIN -->
                                    <div class="ds-thread"></div>
                                    <script type="text/javascript">
                                    var duoshuoQuery = {short_name:"bazi5"};
                                    (function() {
                                    var ds = document.createElement('script');
                                    ds.type = 'text/javascript';ds.async = true;
                                    ds.src = 'http://static.duoshuo.com/embed.js';
                                    ds.charset = 'UTF-8';
                                    (document.getElementsByTagName('head')[0] 
                                    || document.getElementsByTagName('body')[0]).appendChild(ds);
                                    })();
                                    </script>
                                    <!-- Duoshuo Comment END -->
                                </div>

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

