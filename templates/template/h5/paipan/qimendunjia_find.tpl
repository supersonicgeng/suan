<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$info.name}>的奇门遁甲排盘</h1>

<div class="detail">

    <h2>奇门遁甲分析：</h2>

    <div class="h2_content">

        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1 qm_table" id="paipanTable">
            <tbody>

            <tr>
                <td class="new"><strong>姓名：</strong><{$info.name}> <strong>出生年:</strong><{$info.birthyear}><br><strong> 性别：</strong>
                    <{if $info.sex==1}>男<{else}>女<{/if}>
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;占事：</strong><{$info.zhanshi}></td>
            </tr>
            <tr>
                <td class="new"><strong>
                        <{if $info.jutang==0}>
                        公历时间</strong>：<{$data.timed}>　　<br><strong>农历时间：</strong><{$data.nongn}>
                    <br><strong>节气</strong><{$data.jieqq}><{$data.yuan}><br>
                    <{/if}>

                    <strong>干支：</strong><{$data.ygz}><{$data.mgz}><{$data.dgz}><{$data.tgz}>
                    <br><strong>当日旬空</strong>：<{$data.yxunk}></strong>(年)&nbsp;<{$data.mxunk}>(月)&nbsp;<{$data.rxunk}>(日)&nbsp;<{$data.txunk}>(时)
                    <br>&nbsp;
                    <br>此局为<font color="#999933"><{$data.dunju}></font>&nbsp;&nbsp;直符<font color="#999933">:<{$data.zhifu}></font>&nbsp;&nbsp;直使<font color="#999933">:<{$data.zhishi}></font>
                </td>      </tr>
            <tr>
                <td align="center" class="new">

                    <{if $data.zhuanf=='zp'}>
                    <table width="318" border="1" cellspacing="0" cellpadding="0" align="center" class="qm_table2" bordercolor="#e8e8e8">
                        <tr>
                            <td height="96" width="106"><{$data.qmdj.3}></td>
                            <td width="106"><{$data.qmdj.4}></td>
                            <td width="106"><{$data.qmdj.5}></td>
                        </tr>
                        <tr>
                            <td height="96"><{$data.qmdj.2}></td>
                            <td align="center" valign="middle" bgcolor="#ffd9b3">[中宫]<{$data.sqly.4}></td>
                            <td><{$data.qmdj.6}></td>
                        </tr>
                        <tr>
                            <td height="96"><{$data.qmdj.1}></td>
                            <td><{$data.qmdj.0}></td>
                            <td><{$data.qmdj.7}></td>
                        </tr>
                    </table>
                    <{else}>


                    <table width="300" border="0" cellspacing="2" cellpadding="0" align="center" bgcolor="#FFDF55">
                        <tr>
                            <td height="96"><{$data.qmdj.3}></td>
                            <td><{$data.qmdj.8}></td>
                            <td><{$data.qmdj.1}></td>
                        </tr>
                        <tr>
                            <td height="96"><{$data.qmdj.2}></td>
                            <td align="center" valign="middle" bgcolor="#D4BF55"><{$data.qmdj.4}></td>
                            <td><{$data.qmdj.6}></td>
                        </tr>
                        <tr>
                            <td height="96"><{$data.qmdj.7}></td>
                            <td><{$data.qmdj.0}></td>
                            <td><{$data.qmdj.5}></td>
                        </tr>
                    </table>
                    <{/if}>
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