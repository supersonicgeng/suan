<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$info.bzname}>的八字排盘结果</h1>

<div class="detail">

    <dl>

        <dd></dd>

        <h2>当前算命者信息</h2>

        <div class="h2_content">

            <p>
                <span>姓名：<strong><{$info.bzname}></strong></span>
                <span>性别：<strong><{if $info.sex==1}>男<{else}>女<{/if}></strong></span>
                <span>出生地：<strong><{$info.area}><{if $info.taiyang==1}>(经度：<?php echo $jd1?>度<?php echo $jd2?>分)<{/if}></strong></span><br/>
                <span>排盘方式：<strong>公历排盘</strong></span><br/>
                <span>公历：<strong><{$data.bzdate}></strong></span><br/>
                <span>农历：<strong><{$data.nongdate}></strong></span>
            </p>

        </div>

        <h2><{$info.bzname}>的五行八字分析：</h2>

        <div class="h2_content">

            <div class="pp_box" id="Layerurl">

                <{if $data.taiyang==1}>
                &nbsp;&nbsp;&nbsp;&nbsp;出生钟点时：".date("Y年m月d日H时i分",$notydate)."<br>";
            &nbsp;&nbsp;&nbsp;&nbsp;实际太阳时：".date("Y年m月d日H时i分",$bzdate)."<br>";
                <{/if}>

                <span class='jiachu'>胎元： &nbsp;&nbsp;&nbsp;</span><{$data.taiyuan}><span class=sm_lv>[<{$data.nayintaiyuan}>]</span>  &nbsp;&nbsp;<span class='jiachu'>命宫：</span><{$data.minggong}><span class=sm_lv>[<{$data.nayinminggong}>]</span><br>


                <span class="jiachu">起运： &nbsp;&nbsp;&nbsp;</span>命主于出生后<span class="sm_lv"><{$data.qysj}></span>开始起运<br>
                <span class="jiachu">交运： &nbsp;&nbsp;&nbsp;</span>命主于公历<span class="sm_hong"><{$data.zysj}></span>交运，以后每逢尾数带<span class="sm_hong"><{$data.sub_zysj}></span>的年份交脱运<br>
                <span class="jiachu">八字： &nbsp;&nbsp;&nbsp;</span><{$info.sex==1}>乾造<{else]>坤造<{/if}><br />

<div class="sm_kuang2 jiachu">十神:</div>
<div class="sm_kuang2"><{$data.shishen1}></div>
<div class="sm_kuang2"><{$data.shishen2}></div>
<div class="sm_kuang2">日元</div>
<div class="sm_kuang2"><{$data.riyuan}></div>
<div class="clear"></div>

<div class="sm_kuang2 jiachu">四柱:</div>
<div class="sm_kuang2 sm_hong"><{$data.ygz}></div>
<div class="sm_kuang2 sm_hong"><{$data.mgz}></div>
<div class="sm_kuang2 sm_hong"><{$data.rgz}></div>
<div class="sm_kuang2 sm_hong"><{$data.hgz}></div>
<div class="sm_kuang2">空(<{$data.xkrgz}>)</div>
<div class="clear"></div>

<div class="sm_kuang2 jiachu">藏干:</div>
<div class="sm_kuang4 sm_lan"><{$data.zanggan1}></div>
<div class="sm_kuang4 sm_lan"><{$data.zanggan2}></div>
<div class="sm_kuang4 sm_lan"><{$data.zanggan3}></div>
<div class="sm_kuang4 sm_lan"><{$data.zanggan4}></div>
<div class="clear"></div>

<div class="sm_kuang2 jiachu">纳音:</div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><{$data.nayin1}></div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><{$data.nayin2}></div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><{$data.nayin3}></div>
<div class="sm_kuang2 sm_kuang5 sm_lv"><{$data.nayin4}></div>
<div class="clear"></div>

<div class="sm_kuang2 jiachu">节气：</div>

<div class="sm_kuang3"><{$data.jqstr}></div>

<div class="clear"></div>
<div class="sm_kuang2 jiachu">大运:</div>
<div class="fl">
<{$data.dayunhtml}>
</div>
<div class="clear" style="float:left;"></div>
<div class="sm_kuang2 jiachu">岁次：</div>
<{$data.suicihtml}>

<div class="clear"></div>
<div class="sm_kuang2 jiachu">始于：</div>
<{$data.liunianhtml}>
<div class="clear"></div>
<div class="sm_kuang2 jiachu">流年：</div>
<div style="float:left">
<{$data.liunian2html}>
</div>
<div class="clear"></div>
<div class="sm_kuang2 jiachu">止于：</div>
<{$data.liunian3html}>
<div class="clear"></div>


</div>


        </div>

</div>
<div>
<{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>