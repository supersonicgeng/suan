<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title"><{$ming}>公司名称评分</h1>
<div class="detail">
    <div class="remark center"><{$ming}></strong>的公司名字分析结果如下</div>

    <div class="gsqm_detail_table">
        <table>
            <tr class="tr_th">
                <th><span>简体</span></th>
                <th><span>繁体</span></th>
                <th><span>拼音</span></th>
                <th><span>五行</span></th>
                <th><span>笔画</span></th>

            </tr>
            <{if $a1arr.a1!=''}>
            <tr>
                <td><{$a1arr.a1}></td>
                <td><{$a1arr.a1gb}></td>
                <td class="py"><{$a1arr.a1py}></td>
                <td><{$a1arr.hzwh1}></td>
                <td><{$a1arr.bihua1}></td>
            </tr>
            <{/if}>

            <{if $a2arr.a2!=''}>
            <tr>
                <td><{$a2arr.a2}></td>
                <td><{$a2arr.a2gb}></td>
                <td class="py"><{$a2arr.a2py}></td>
                <td><{$a2arr.hzwh2}></td>
                <td><{$a2arr.bihua2}></td>
            </tr>
            <{/if}>

            <{if $a3arr.a3!=''}>
            <tr>
                <td><{$a3arr.a3}></td>
                <td><{$a3arr.a3gb}></td>
                <td class="py"><{$a3arr.a3py}></td>
                <td><{$a3arr.hzwh3}></td>
                <td><{$a3arr.bihua3}></td>
            </tr>
            <{/if}>

            <{if $a4arr.a4!=''}>
            <tr>
                <td><{$a4arr.a4}></td>
                <td><{$a4arr.a4gb}></td>
                <td class="py"><{$a4arr.a4py}></td>
                <td><{$a4arr.hzwh4}></td>
                <td><{$a4arr.bihua4}></td>
            </tr>
            <{/if}>

            <{if $a5arr.a5!=''}>
            <tr>
                <td><{$a5arr.a5}></td>
                <td><{$a5arr.a5gb}></td>
                <td class="py"><{$a5arr.a5py}></td>
                <td><{$a5arr.hzwh5}></td>
                <td><{$a5arr.bihua5}></td>
            </tr>
            <{/if}>

            <{if $a6arr.a6!=''}>
            <tr>
                <td><{$a6arr.a6}></td>
                <td><{$a6arr.a6gb}></td>
                <td class="py"><{$a6arr.a6py}></td>
                <td><{$a6arr.hzwh6}></td>
                <td><{$a6arr.bihua6}></td>
            </tr>
            <{/if}>
        </table>
    </div>



    <h2>1. 数 理：</h2>
    <div class="h2_content"><{$allbihua}></div>
    <div align="center" style="padding-top:10px"><div class="bdlikebutton"></div></div>
    <h2>2. 吉 凶：</h2>
    <div class="h2_content">
        <{$company.t1}><em class="red"><{$company.j1}></em>
    </div>
    <h2>3. 诗 解：</h2>
    <div class="h2_content"><{$company.c1}></div>
    <h2>4. 含 义：</h2>
    <div class="h2_content"><{$company.t2}><br><{$company.c2}></div>
</div>

<div class="detail">
    <h3>公司名称评分：</h3>
    <dl>
        <form name="qiming" action="/index.php"  method="post" id="qiming" onSubmit="javascript:return validateForm();">
            <input type="hidden" value="374" name="tid">
            <input type="hidden" value="gsqm" name="ac" />
            <input type="hidden" value="h5_xingming" name="ct" />
            <dd class="form">
                <strong>公司名称</strong>：<input class="ipt" type="text" name="name" maxLength=32 onBlur="if (value==''){value='请输入公司名称'}" onFocus="if (value=='请输入公司名称') {value=''}" value="吉祥三宝">
            </dd>

            <dd>
                <div align="center"><input type="submit" class="button" name="submit1" value="马上起名">
                    <input type="hidden" name="action" value="jieguo"></div>
            </dd>
            <script language="javascript">
                function validateForm()
                {
                    if (qiming.name.value=="吉祥三宝" || qiming.name.value=="")
                    {
                        alert("请输入公司名称！");
                        qiming.name.value="";
                        qiming.name.focus();
                        return false;
                    }
                }
            </script>
        </form>
    </dl>
</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>