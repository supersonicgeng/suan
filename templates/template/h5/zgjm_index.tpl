<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<style>
.detail li a{font-size: 14px;line-height: 24px;margin-left: 10px;text-align: center;}
.h4_content a{display: initial !important;}
</style>
<form name=form1 action="/index.php" method="post">
    <input type="hidden" name="ct" value="h5_zgjm">
    <input type="hidden" name="ac" value="search">

    <div id="se_wrap">

        <div id="se_inner">

            <input type="text" name="q" maxLength=32 class="se-input" onBlur="if (value==''){value='请输入梦见了什么'}" onFocus="if (value=='请输入梦见了什么') {value=''}" value="请输入梦见了什么">

            <div id="cross"></div>

        </div>

        <input id="se_bn" type="submit" name="submit1" value="解梦">

    </div>

</form>

<!--head end-->

<div class="detail">

    <h3>最多人查询的解梦：</h3>

    <dl>

        <li><{foreach from=$m.zgjm_hot_tag item=v}><a <{if $v.blank==1}>target="_blank"<{/if}> href="<{$v.url}>" <{if $v.color==1}>class="cRed"<{elseif $v.color==2}>class="cGreen"<{elseif $v.color==3}>class="cBlue"<{/if}> title="<{$v.title}>"><{$v.name}></a><{/foreach}></li> </dl>

</div>

<div class="detail">

    <h3>周公解梦大全查询按分类找：</h3>

    <dl>


        <{foreach from=$listdata item=v key=k}>

            <h4>【<{$v.topic}>】<div class="fright"><a href="/zgjm/list-<{$v.topic_id}>.html">更多&gt;&gt;</a></div></h4>
            <div class="h4_content">
                <{foreach from=$v.data item=vs}>
                    <a href="/zgjm/show-<{$vs.id}>.html" target="_blank"><{$vs.title}></a>
                <{/foreach}>

            </div>

            <{if $k!=7}>
                <div class="line"></div>
            <{/if}>
        <{/foreach}>


    </dl>

</div>



<div class="detail">

    <h3>24小时最受欢迎梦境：</h3>

    <dl>
<{foreach from=$zgjm_new_data item=v}>
        <li><a href="/zgjm/show-<{$v.id}>.html" class="inlink"><{$v.title}></a></li>
<{/foreach}>


    </dl>

</div>

<{include file='./h5/footer.tpl'}>