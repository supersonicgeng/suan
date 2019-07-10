<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div class="detail">

    <h3>八字百科按分类：</h3>

    <dl>

        <{foreach from=$self_tid item=v key=k}>

        <h4>【<{$v.name}>】<div class="fright"><a href="/list-<{$v.id}>.html">更多&gt;&gt;</a></div></h4>
        <div class="h4_content">
            <{section loop=$v.data_list.list name=news start=0 max=10}>
                <a href="<{$v.data_list.list[news].url}>" target="_blank"><{$v.data_list.list[news].title}></a>
            <{/section}>
        </div>
        <div class="line"></div>

        <{/foreach}>


    </dl>

</div>
<{include file='./h5/footer.tpl'}>