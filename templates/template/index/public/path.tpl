<div class="main">
<div class="path clearfix">
<div class="path_l">
当前位置：<a href="<{$web_url}>">开运算命网</a> &gt; 
<{if $path.baba.name!=''}><a href="<{$web_url}><{$path.baba.extra}>" title="<{$path.baba.name}>"><{$path.baba.name}></a> &gt; <{/if}> 
<{if $path.parent_arr.name!=''}><a href="<{$web_url}><{$path.parent_arr.extra}>" title="<{$path.parent_arr.name}>"><{$path.parent_arr.name}></a> &gt; <{/if}>
<{if $path.name!=''}><a href="<{$web_url}><{$path.extra}>" title="<{$path.name}>"><{$path.name}></a><{/if}>
<{if $path.show_info!=''}> &gt; <{$path.show_info}><{/if}>
<{if $q!=''}> &gt; <{$q}><{/if}>
</div>
<div class="path_r">
<{$topic}>
</div>
</div>
