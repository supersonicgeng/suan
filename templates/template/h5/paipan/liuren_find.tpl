<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$info.name}>六壬排盘信息</h1>

<div class="detail">

        <h2><{$info.name}>的六壬排盘分析：</h2>

        <div class="h2_content">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1" id="paipanTable">
                <tbody>
                <tr>
                    <td class="new"><strong>姓名：</strong><{$info.name}> <strong>出生年:</strong><{$info.birthyear}><strong> 性别：</strong>
                        <{if $info.sex==1}>男<{else}>女<{/if}>

                        <strong>占事：</strong><{$info.zhanshi}></td>
                </tr>
                <tr>
                    <td class="new"><strong>公历：</strong><font color="#ff0000"><{$data.Nyangli}></font> <strong>农历：</strong><font color="#ff0000"><{$data.ntime}></font></td>
                </tr>
                <tr>
                    <td class="new"><strong>节气：</strong><font color="#0000ff"><{$data.nextjq}></font></td>
                </tr>
                <tr>
                    <td class="new"><strong>干支：</strong><{$data.ygz}>&nbsp;&nbsp;<{$data.mgz}>&nbsp;&nbsp;<{$data.dgz}>&nbsp;&nbsp;<{$data.tgz}> <strong>月将：</strong><{$data.yuej}>将</td>
                </tr>
                <tr>
                    <td class="new"><strong>旬空：</strong>
                        <font color="#ff3300"> <{$data.yxk}>&nbsp;&nbsp;<{$data.mxk}>&nbsp;&nbsp;<{$data.dxk}>&nbsp;&nbsp;<{$data.hxk}></font></td>
                </tr>

                <{if $data.phn==1}>
                    <tr>
                        <td class="new"><strong>年命：</strong><{$data.ygzs}></td>
                    </tr>
                    <tr>
                        <td class="new"><strong>行年：</strong><{$data.hangn}></td>
                    </tr>
                    <{/if}>
                <tr>
                    <td class="new"><table align="center">
                            <tr align="center">
                                <td class="new" width="46" align="right" height="22">&nbsp;</td>
                                <td class="new" width="46" bgcolor="#FFE8D0"><{$data.guishens.6}> </td>
                                <td class="new" width="46" bgcolor="#FFE8D0"><{$data.guishens.7}> </td>
                                <td class="new" width="46" bgcolor="#FFE8D0"><{$data.guishens.8}></td>
                                <td class="new" width="46" bgcolor="#FFE8D0"><{$data.guishens.9}> </td>
                                <td class="new" align="left" width="46">&nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td class="new" height="20" align="right">&nbsp;</td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.6}> </td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.7}> </td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.8}> </td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.9}> </td>
                                <td class="new" align="left">&nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td class="new" height="20" align="right" bgcolor="#FFE8D0"><{$data.guishens.5}></td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.5}> </td>
                                <td class="new" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.10}> </td>
                                <td class="new" align="left" bgcolor="#FFE8D0"><{$data.guishens.10}></td>
                            </tr>
                            <tr align="center">
                                <td class="new" align="right" bgcolor="#FFE8D0"><{$data.guishens.4}></td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.4}> </td>
                                <td class="new" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.11}> </td>
                                <td class="new" align="left" bgcolor="#FFE8D0"><{$data.guishens.11}></td>
                            </tr>
                            <tr align="center">
                                <td class="new" align="right">&nbsp;</td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.3}></td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.2}> </td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.1}> </td>
                                <td class="new" bgcolor="#eeeeee"><{$data.tianpan.0}></td>
                                <td class="new" align="left">&nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td class="new" align="right">&nbsp;</td>
                                <td class="new" bgcolor="#FFE8D0"><{$data.guishens.3}></td>
                                <td class="new" bgcolor="#FFE8D0"><{$data.guishens.2}></td>
                                <td class="new" bgcolor="#FFE8D0"><{$data.guishens.1}></td>
                                <td class="new" bgcolor="#FFE8D0"><{$data.guishens.0}></td>
                                <td class="new" align="left">&nbsp;</td>
                            </tr>
                        </table>
                        <table width="186" height="70" align="center" bgcolor="#eeeeee">
                            <tr>
                                <td width="191"  class="new"><{$data.news_string}></td>
                            </tr>
                        </table></td>
                </tr>   <tr>
                    <td >
                        <table width="186" height="70" align="center" bgcolor="#eeeeee">
                            <tr><td align="center" class="new">
                                    <{$data.news1}>
                                    <br>
                                    <{$data.news2}>
                                    <br>
                                    <{$data.news3}>
                                </td></tr></table>
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