<div class="mod_box_t2">
    <div class="hd">
        <h3>最新梦境</h3>
        <i class="flag_l_t2"></i>
        <i class="flag_r_t2"></i>
    </div>
    <div class="bd indexlist">
       <ul class="clearfix">
       		<{foreach from=$zgjm_new_data item=v}>
            	<li><a href="/zgjm/show-<{$v.id}>.html" target="_blank"><{$v.title}></a></li>	
            <{/foreach}>
        </ul>
    </div>
</div>