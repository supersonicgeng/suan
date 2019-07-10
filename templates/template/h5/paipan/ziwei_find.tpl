<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>

<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<h1 class="title"><{$info.name}>紫薇斗数</h1>

<div class="detail">

    <h2>紫薇斗数分析：</h2>
    <style type="text/css">
 .zw_table td {
         border: 1px solid #ebebeb;
             padding: 10px;
 }
 .qmdj_table .table1, .zw_table td {
         background-color: #fff;
 }
 </style>

    <div class="h2_content">

        <table width="100%"  border="0" align="center" bgcolor="" class="zw_table">
            <tr>
                <td width="25%" class="zw_pantdsz"><{$data.pan.5}></td>
                <td width="25%" class="zw_pantdsz"><{$data.pan.6}></td>
                <td width="25%" class="zw_pantdsz"><{$data.pan.7}></td>
                <td width="25%" class="zw_pantdsz"><{$data.pan.8}></td>
            </tr>
            <tr>
                <td class="zw_pantdsz"><{$data.pan.4}></td>
                <td colspan="2" rowspan="2" class="zw_pantdsz">
                    <div style="color:#3399FF; padding-left:8px">免费在线排盘：http://zb.03ky.com/</div>

                    <div style="padding:8px;line-height:18px"><b>姓名：</b><{$info.name}><b>性别：</b><{if $info.sex==1}>男<{else}>女<{/if}><b>年龄：</b><?php echo date("Y")-$y+1;?><br>
                        流年斗君在<{$data.dz_a1}>&nbsp;&nbsp;子斗在<{$data.dz_a2}><br>命主：<{$data.mingzhum}>&nbsp;&nbsp;身主：<{$data.shenzhum}><br />盘类：天盘　<font color="red"><{$data.wxju}></font>　　<br><b>阳历：</b><{$data.yangdate}><br><b>农历：</b><{$data.NongLi}><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　<{$data.nayinarr}><br><b><{if $info.sex==1}>乾造<{else}>坤造<{/if}>：<font color=red><{$data.quanzao}></font></b></div></td>
                <td class="zw_pantdsz"><{$data.pan.9}></td>
            </tr>
            <tr>
                <td class="zw_pantdsz"><{$data.pan.3}></td>
                <td class="zw_pantdsz"><{$data.pan.10}></td>
            </tr>
            <tr>
                <td class="zw_pantdsz"><{$data.pan.2}></td>
                <td class="zw_pantdsz"><{$data.pan.1}></td>
                <td class="zw_pantdsz"><{$data.pan.0}></td>
                <td class="zw_pantdsz"><{$data.pan.11}></td>
            </tr>
        </table>


    </div>

</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>