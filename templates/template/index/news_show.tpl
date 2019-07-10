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

					<div class="hd">
                    
                    <h1><{$data.title}></h1>
                    
                    </div>
                    
						<div class="bd dream_result">
                        
							<div class="newsinfo mb10">时间：<{$data.uptime}> &nbsp; 来源：开运网 &nbsp; 关键词：<{$data.contentKeyword}></div>	
                        
                        
							<div class="dream_detail mb10">
									<{$data.content}>
                                    
                                    
                                    <div class="page">
                                    <{$pageStr}>
                                    </div>
							</div>	
                            

							<div class="dream_other">

								<p>你可能感兴趣的</p>
                                
								<div class="dream_other_a mt10 adbox_con" id="astro_re">
                               <ul class="astro_re">
                               <{foreach from=$hot_data item=v}>
                                   <li>
                                   <a href="show-<{$v.id}>.html" target="_blank"><{$v.title}></a>
                                   </li>
                               <{/foreach}>    
                               </ul>
							   
									<div class="adbox2">
									</div>
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

