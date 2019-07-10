<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title">玄空飞星排盘</h1>

<div class="detail">

    <h2>玄空飞星分析：</h2>

    <div class="h2_content">


            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="b1" id="paipanTable">
                <tbody>
                <tr>
                    <td align="center" class="new"><strong><font color=blue><{$xkfx_Array.dayun}></font><font color="#009393"><{$xkfx_Array.sxname}><br></font><font color=red>
                                <{$xkfx_Array.gm}></font></strong>
                        <br>
                        <table width="200" border="0" cellspacing="0" cellpadding="0" bordercolor="#333333" class="xk_table" >
                            <tr>
                                <td class="tdx"><{$xkfx_Array.sp.8}><{$xkfx_Array.xp.8}><br><{$xkfx_Array.yp.8}></td>
                                <td class="tdx"><{$xkfx_Array.sp.4}><{$xkfx_Array.xp.4}><br><{$xkfx_Array.yp.4}></td>
                                <td class="tdx"><{$xkfx_Array.sp.6}><{$xkfx_Array.xp.4}><br><{$xkfx_Array.yp.6}></td>
                            </tr>
                            <tr>
                                <td class="tdx"><{$xkfx_Array.sp.7}><{$xkfx_Array.xp.7}><br><{$xkfx_Array.yp.7}></td>
                                <td class="tdx"><{$xkfx_Array.sp.0}><{$xkfx_Array.xp.0}><br><{$xkfx_Array.yp.0}></td>
                                <td class="tdx"><{$xkfx_Array.sp.2}><{$xkfx_Array.xp.2}><br><{$xkfx_Array.yp.2}></td>
                            </tr>
                            <tr>
                                <td class="tdx"><{$xkfx_Array.sp.3}><{$xkfx_Array.xp.3}><br><{$xkfx_Array.yp.3}></td>
                                <td class="tdx"><{$xkfx_Array.sp.5}><{$xkfx_Array.xp.5}><br><{$xkfx_Array.yp.5}></td>
                                <td class="tdx"><{$xkfx_Array.sp.1}><{$xkfx_Array.xp.1}><br><{$xkfx_Array.yp.1}></td>
                            </tr>
                        </table>
                        <br>
                        <br>　　<{$xkfx_Array.shan}>山:
                        <{if $xkfx_Array.tixing==1}>
                        <font color="#009393">宜出煞，楼门或大门宜开畅。而不宜收敛。开门宜大，或门旁边有较多玻璃窗，于室内于门处不宜有所阻拦，如设屏风等。且门外地势宜略低。</font>
                        <{else}>
                        <font color="#009393">宜收山，住宅形势须保守，而不宜开畅，于开门不宜过大，且于门处宜设屏风以遮掩，用以藏气。屋门外形势不宜过低，低则收山不尽 </font>
                        <{/if}><br>

                        <{if $plj}>
                    <br>　<font color="#009393"><b>排龙诀</b></font><p></p>
                        <{$plj}>
                        <{/if}>
                        <br>

                        <{if $minggua}>
                        <br>　<strong><font color=red>命卦</font>、<font color=green>流年</font>、<font color=blue>流月</font></strong><p></p>
                        <{$minggua}>
                    </td></tr></table>
            <{/if}>
            </td></tr></tbody></table>


    </div>

</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>