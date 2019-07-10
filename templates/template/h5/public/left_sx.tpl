<div class="mod_box_t2 box_knowledge clearAll mt10">
                    <div class="hd">
                        <h3>百科小知识</h3>
                        <i class="flag_l_t2"></i>
                        <i class="flag_r_t2"></i>
                    </div>
                    <div class="bd">
                            <div class="knowledge_list clearfix">
                            <div class="know_row">
                                <div class="block_left">
                                    <div class="k_left">
                                        <{if $public_hand_data.left_news.img.0.title!=''}>
                                            <a href="<{$public_hand_data.left_news.img.0.url}>" target="_blank">
                                                <img src="<{$public_hand_data.left_news.img.0.img}>">
                                                <div class="black_gb">
                                                    <span class="white_font"><{$public_hand_data.left_news.img.0.title}></span>
                                                </div>
                                            </a>
                                        <{/if}>    
                                    </div>
                                    <div class="k_right">
                                        <ul>
                                        <{section loop=$public_hand_data.left_news.data_list name=news start=0 max=4}>
                                            <li><i class="i-point"></i><a href="<{$public_hand_data.left_news.data_list[news].url}>" target="_blank"><{$public_hand_data.left_news.data_list[news].title}></a></li>
                                        <{/section}>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="block_right">
                                    <div class="k_left">
                                        <{if $public_hand_data.left_news.img.1.title!=''}>
                                            <a href="<{$public_hand_data.left_news.img.1.url}>" target="_blank">
                                                <img src="<{$public_hand_data.left_news.img.1.img}>">
                                                <div class="black_gb">
                                                    <span class="white_font"><{$public_hand_data.left_news.img.1.title}></span>
                                                </div>
                                            </a>
                                        <{/if}>  
                                    </div>
                                    <div class="k_right">
                                        <ul>
                                            <{section loop=$public_hand_data.left_news.data_list name=news start=4 max=4}>
                                                <li><i class="i-point"></i><a href="<{$public_hand_data.left_news.data_list[news].url}>" target="_blank"><{$public_hand_data.left_news.data_list[news].title}></a></li>
                                            <{/section}>  
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                            <div class="know_row top_dash">
                                <div class="block_left">
                                    <div class="k_left">
                                        <{if $public_hand_data.left_news.img.2.title!=''}>
                                            <a href="<{$public_hand_data.left_news.img.2.url}>" target="_blank">
                                                <img src="<{$public_hand_data.left_news.img.2.img}>">
                                                <div class="black_gb">
                                                    <span class="white_font"><{$public_hand_data.left_news.img.2.title}></span>
                                                </div>
                                            </a>
                                        <{/if}> 
                                    </div>
                                    <div class="k_right">
                                        <ul>
                                            <{section loop=$public_hand_data.left_news.data_list name=news start=8 max=4}>
                                                <li><i class="i-point"></i><a href="<{$public_hand_data.left_news.data_list[news].url}>" target="_blank"><{$public_hand_data.left_news.data_list[news].title}></a></li>
                                            <{/section}>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="block_right">
                                    <div class="k_left">
                                        <{if $public_hand_data.left_news.img.3.title!=''}>
                                            <a href="<{$public_hand_data.left_news.img.3.url}>" target="_blank">
                                                <img src="<{$public_hand_data.left_news.img.3.img}>">
                                                <div class="black_gb">
                                                    <span class="white_font"><{$public_hand_data.left_news.img.3.title}></span>
                                                </div>
                                            </a>
                                        <{/if}> 
                                    </div>
                                    <div class="k_right">
                                        <ul>
                                            <{section loop=$public_hand_data.left_news.data_list name=news start=12 max=4}>
                                                <li><i class="i-point"></i><a href="<{$public_hand_data.left_news.data_list[news].url}>" target="_blank"><{$public_hand_data.left_news.data_list[news].title}></a></li>
                                            <{/section}>  
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>               

<div class="mod_box_t2 suanming-tools mt10">
	<div class="hd hd_s1">
		<h3>实用工具大全</h3>
		<i class="flag_l_t2"></i>
		<i class="flag_r_t2"></i>
	</div>
	<div class="morenav">
    <{foreach from=$public_hand_data.class_array item=v key=k}>
    		<div class="<{if $k!=11}>bor_bom<{/if}> more_d">
			<h4><a href="<{$web_url}><{$vs.extra}>"><{$v.name}></a></h4>
            <{foreach from=$v.son item=vs}>
				<a href="<{$web_url}><{$vs.extra}>" title="<{$vs.name}>"><{if $vs.shownames!=''}><{$vs.shownames}><{else}><{$vs.name}><{/if}></a>
			<{/foreach}>
            </div>
     <{/foreach}>  
		<!-- ad start-->

		<!-- ad end-->
	</div>
</div>