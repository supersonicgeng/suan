<div id="navi">
    <{foreach from=$public_hand_data.class_array item=v key=k}>
    <dl class="mod_dl">
        <dt><a href="http://m.zb.03ky.com/<{$v.extra}>"><{$v.name}></a></dt>
        <dd>
            <ul class="clearfix">
                <{foreach from=$v.son item=vs}>
                <li><a href="/<{$vs.extra}>" title="<{$vs.name}>"><{if $vs.shownames!=''}><{$vs.shownames}><{else}><{$vs.name}><{/if}></a></li>
                <{/foreach}>
            </ul>
        </dd>
    </dl>
    <{/foreach}>
</div>