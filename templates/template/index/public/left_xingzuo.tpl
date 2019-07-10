<{include file='./index/public/left_hotnav_shengxiao.tpl'}>
<{include file='./index/public/left_hotnav_xingzuoyunshi.tpl'}>
<div class="mod_box_t2 box_knowledge clearAll mt10">
                    <div class="hd">
                        <h3>百科小知识</h3>
                        <i class="flag_l_t2"></i>
                        <i class="flag_r_t2"></i>
                    </div>
                    <div class="bd">
                            <div class="knowledge_list clearfix">
                            <div class="know_row">
<script type="text/javascript" src="http://www.03ky.com/api.php?mod=js&bid=79"></script>
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