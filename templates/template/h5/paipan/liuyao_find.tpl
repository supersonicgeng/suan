<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title">六爻排盘</h1>

<div class="detail">

    <h2>六爻起卦（六爻排盘）系统</h2>

    <div class="h2_content">

        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1" id="paipanTable">
            <tbody>

            <tr>
                <td class="new"><strong>姓名：</strong><{$info.name}> <strong>出生年:</strong><{$info.birthyear}><strong> 性别：</strong><{$info.sex}><strong>&nbsp;占事：</strong><{$info.reason}></td>
            </tr>
            <tr>
                <td class="new"><strong>起卦方式：</strong><{$info.qiguafangfa}></b>
                    <{if $info.auto==5}>
                    <{$info.bsnums_up}>,<{$info.bsnums_down}>
                    <{elseif $info.addhour==1}>
                    动爻加时辰
                    <{else}>
                    动爻不加时辰
                    <{/if}>
                </td>
            </tr>
            <tr>
                <td class="new"><b>公历时间：</B><font color="#ff0000"><{$data.gongli}></font>
                    <{if $info.taiyang==1}>
                    真太阳时:$Truedate
                    <{/if}>
                    &nbsp;&nbsp;&nbsp;<b>农历时间：</B><font color="#0000ff"><{$data.nonglistr}> </font>
                    <BR>
                    <b>干　　支：</B><{$data.ygz}>年<{$data.mgz}>月<{$data.dgz}>日<{$data.tgz}>时
                    　<br>
                    <B>旬　　空：</B><{$data.xunkong}>&nbsp;&nbsp;　<br>
                    <B>神　　煞：</B>驿马─<{$yuma}>桃花─<{$taohua}>日禄─<{$rilu}>贵人─<{$guiren}><{$data.tplhtml}>
					<{$data.top2html}>
                    <{$data.top3html}>
                    <{$data.top4html}>
                    <{$data.last}>
                </td>
            </tr>

        </table>


    </div>

</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>

<{include file='./h5/footer.tpl'}>