<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<{if $qid}>
    <h1 class="title">您抽中了【第<span><{$qian.qid}></span>签】<{$qian.qianming}></h1>
    <{else}>
    <h1 class="title">车公灵签</h1>
    <{/if}>

<div class="detail">
    <dl>

        <{if $qid!=''}>

        <!---->
        <h2>吉凶：</h2>

        <div class="h2_content"><{$qian.jx}>签</div>

        <div class="fright p10"><img border="0" alt="车公灵签第<{$qian.qid}>签" src="<{$web_url}><{$qian.img}>" width="160"/></div>


        <h2>解曰：</h2>

        <div class="h2_content"><{$qian.jie}></div>

        <h2>签语：</h2>

        <div class="h2_content"><{$qian.qy}></div>

        <h2>释义：</h2>

        <div class="h2_content"><{$qian.shiyi}></div>

        <h2>详解：</h2>

        <div class="h2_content"><{$qian.xiangjie}></div>

        <div class="center mt10"><a href="/chouqian/"><img src="/static/img/shouye.gif" border="0"></a> &nbsp; <a href="/chouqian/guanyin/"><img src="/static/img/chongchou.gif" border="0"></a></div>
        <!---->
        <{/if}>

        <{if $rand!=''}>
        <div style="clear:both;text-align:center;">
            <span class="green">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签！<br>请求指点的问题！再进行下一步...</span>

            <{if $gysmile!='4' && $clicknum<3}>

            <{if $clicknum==2}>

        <img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" />
            <{else}>
            <a href="/chouqian/chegong/<{$clicknum+2}>/<{$rand}>"><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></a>
            <{/if}>

            <p><span class="green">您掷出<{$clicknum+1}>次圣杯，请点击上图再次掷出！</span></p>


            <{if $clicknum==2}>
            <p><span class="green">恭喜，您连续掷出了三次圣杯，<a href="/chouqian/chegong/4/<{$rand}>">请点这里察看签词！</a></span></p>
            <p><a href="/chouqian/chegong/4/<{$rand}>"><img src="/static/img/chakan.gif" width="94" height="31" alt="查看签词" /></a></p>
            <{else}>
            <p class="last">需连续掷出三次圣杯，才是灵签！目前，您已经掷出<strong class="cRed"><{$clicknum+1}></strong>次</p>
            <p><a href="/chouqian/chegong/<{$clicknum+2}>/<{$rand}>"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a></p>
            <{/if}>

            <{else}>

            <p><a href="/chouqian/chegong/"><img src="<{$web_url}>static/bazi/img/suanming/bad_cup.gif" alt="重新抽签" /></a></p><br />
        需连续掷出三次圣杯后，此签才算是灵签！<br />
            <span class="red">您掷出了笑杯，该签不灵，请重新抽签。</span><br /><br />
            <a href="/chouqian/chegong/"><img src="/static/img/chongchou.gif" width="94" height="31" alt="重新抽签" /></a>
        <br /><br />
            <{/if}>
            </dov>

            <{/if}>

            <{if $qid=='' && $rand==''}>
            <center>
                <a href="/chouqian/chegong/1"><img id="lingqian" src="<{$web_url}>static/bazi/img/suanming/v2/qian.gif" width="86" /></a><br />
                <a href="/chouqian/chegong/1"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a>
                <br/>
            </center>
            <ul>
                <li>1. 抽签须虔诚认真，秉除杂念，不可玩笑试之。不可随意抽签，要遵守“无事不占卜”的规则，心诚则灵。</li>
                <li>2. 净身（就是洗澡），如无条件洗澡的，也必须把双手洗干净。</li>
                <li>3. 签的时间：中午十二点左右和晚上十一点前或者后，晚上十一点是阴阳相接之时，最适宜抽签，抽签的信息也最准确；房事后和打雷下大雨时不要抽签，因为此时信息不准。</li>
                <li>4. 事先确定要占的事情，如婚姻、事业、运程、流年、工作、财运......等。</li>
                <li>5. 默念自己姓名、出生时辰、年龄、现在居住地址。</li>
                <li>6. 点击上面的签筒开始抽签。抽签完毕，需要掷出三次圣杯才算灵签，否则需要重新抽签。</li>
                <li>7. 每天只能针对某一件事情进行一次抽签占卜，请勿多求，否则不灵。</li>
            </ul>
            <{/if}>

    </dl>


    <div>
        <{include file='./h5/public/more_nav.tpl'}>
    </div>

</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>