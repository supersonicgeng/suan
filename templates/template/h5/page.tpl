<{include file='./h5/header.tpl'}>
<style>
.detailList li{float:left; width:7.6%; margin:0;}
</style>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
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
<h1 class="title"><{$data.t}></h1>
<div class="detail">

    <div class="h2_content detailList">
        <{$data.content}>
    </div>

</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<div id="navi">
    <{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>
