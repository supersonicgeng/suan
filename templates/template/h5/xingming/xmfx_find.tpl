<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title"><{$xm_arr.xing1}><{$xm_arr.xing2}><{$xm_arr.ming1}><{$xm_arr.ming2}>名称评分</h1>
<div class="detail">
    <div class="remark center">名字分析结果如下</div>

    <dd>
        <strong><{$xm_arr.xing1}><{$xm_arr.xing2}><{$xm_arr.ming1}><{$xm_arr.ming2}>的姓名五格评分：</strong>	<strong class="red"><{$xmdf}>分</strong> &nbsp;
        <{if $xmdf<60}><{/if}>
    </dd>



        <h2><{$xm_arr.xing1}><{$xm_arr.xing2}><{$xm_arr.ming1}><{$xm_arr.ming2}>的信息:</h2>


    <div class="h2_content">

        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#ddd" style="margin-top:10px;">

            <tbody>

            <tr>

                <td  width="100" align="center" bgcolor="#F5F8FD" class="suanming"><strong>繁体字</strong></td>

                <td  width="65" bgcolor="#F5F8FD" class="suanming"><{$xm_arr.xing1gb}></td>

                <td  width="65" bgcolor="#F5F8FD" class="suanming"><{$xm_arr.xing2gb}></td>

                <td  width="65" bgcolor="#F5F8FD" class="suanming"><{$xm_arr.ming1gb}></td>

                <td  width="70" bgcolor="#F5F8FD" class="suanming"><{$xm_arr.ming2gb}></td>

            </tr>

            <tr>

                <td align="center" bgcolor="#F5F8FD" class="suanming"><strong>拼音</strong></td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$xm_arr.xing1py}></td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$xm_arr.xing2py}></td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$xm_arr.ming1py}></td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$xm_arr.ming2py}></td>

            </tr>

            <tr>

                <td align="center" bgcolor="#F5F8FD" class="suanming"><strong>康熙笔画：</strong></td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$bh_wh_arr.bihua1}>　</td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$bh_wh_arr.bihua2}>　</td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$bh_wh_arr.bihua3}>　</td>

                <td bgcolor="#F5F8FD" class="suanming" ><{$bh_wh_arr.bihua4}>　</td>

            </tr>

            <tr>

                <td align="center" bgcolor="#F5F8FD" class="suanming"><strong>五格：</strong></td>

                <td bgcolor="#F5F8FD" class="suanming" >天格:<{$tdr_ge.tiange}> (<{$tdr_ge.tian_sancai}>)</td>

                <td bgcolor="#F5F8FD" class="suanming" >人格:<{$tdr_ge.renge}> (<{$tdr_ge.ren_sancai}>)</td>

                <td bgcolor="#F5F8FD" class="suanming" >地格:<{$tdr_ge.dige}> (<{$tdr_ge.di_sancai}>) </td>

                <td bgcolor="#F5F8FD" class="suanming" >外格:<{$tdr_ge.waige}> (<{$tdr_ge.waige_sancai}>)<br />总格 >> <{$tdr_ge.zongge}> (<{$tdr_ge.zongge_sancai}>) &nbsp;</td>

            </tr>

            </tbody>

        </table>

    </div>


    <h2>五格详解：</h2>

    <div class="h2_content">
        <span class="brown"><strong>天格<{$tiangearr.tiangee}>的解析:</strong></span> <p>天格数是先祖留传下来的，其数理对人影响不大。</p>
        <p class="cGrey bbg"><{$tiangearr.yy}><span class="cRed"><{$tiangearr.jx}></span></p>
        <span class="brown blue">〖详细解释〗:</span> <p><{$tiangearr.content}></p>
    </div>

    <div class="h2_content">
        <span class="brown"><strong>人格<{$rengearr.rengee}>的解析:</strong></span> <p>人格数是先祖留传下来的，其数理对人影响不大。</p>
        <p class="cGrey bbg"><{$rengearr.yy}><span class="cRed"><{$rengearr.jx}></span></p>
        <span class="brown blue">〖详细解释〗:</span> <p><{$rengearr.content}></p>
    </div>

    <div class="h2_content">
        <span class="brown"><strong>地格<{$digearr.rengee}>的解析:</strong></span> <p>地格数是先祖留传下来的，其数理对人影响不大。</p>
        <p class="cGrey bbg"><{$digearr.yy}><span class="cRed"><{$digearr.jx}></span></p>
        <span class="brown blue">〖详细解释〗:</span> <p><{$digearr.content}></p>
    </div>

    <div class="h2_content">
        <span class="brown"><strong>外格<{$waigearr.rengee}>的解析:</strong></span> <p>外格数是先祖留传下来的，其数理对人影响不大。</p>
        <p class="cGrey bbg"><{$waigearr.yy}><span class="cRed"><{$waigearr.jx}></span></p>
        <span class="brown blue">〖姓名命运〗:</span> <p><{$waigearr.content}></p>
    </div>


    <h2>对三才数理的影响：</h2>

    <div class="h2_content">
        <span class="brown"><strong>您的姓名三才配置为:</strong></span>
        <p><span class="red"> <{$rssancai.sancai}>。</span>它具有如下数理诱导力，据此会对人生产生一定的影响。</p>
        <p class="green bbg">
            <{$rssancai.yy}> 　　<span class="red">（<{$rssancai.jx}>）</span>
        </p>

        <span class="brown"><strong>详细解释:</strong></span><p><{$rssancai.content}></p>

        <span class="brown">〖对基础运的影响〗:</span> <p><{$rssancai.jcy}> <em class="red">（<{$rssancai.jx1}>）</em></p>
        <span class="brown">〖对成功运的影响〗:</span> <p><{$rssancai.cgy}> <em class="red">（<{$rssancai.jx2}>）</em></p>
        <span class="brown">〖对人际关系的影响〗:</span> <p><{$rssancai.rjgx}> <em class="red">（<{$rssancai.jx3}>）</em></p>
        <span class="brown">〖对性格的影响〗:</span> <p><{$rssancai.xg}></p>
    </div>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>

<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>