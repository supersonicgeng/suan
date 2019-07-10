<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<{if $qid}>
    <h1 class="title">您抽中了【第<span><{$qian.qid}></span>签】<{$qian.qianming}></h1>
    <{else}>
    <h1 class="title">妈祖灵签</h1>
    <{/if}>

<div class="detail">
    <dl>

        <{if $qid!=''}>
<div style="text-align:center;">
<img border="0" alt="观音灵签第<{$qian.qid}>签" src="<{$web_url}><{$qian.img}>"/>
</div>
        <h2>签语：</h2>

        <div class="h2_content"><{$qian.qy}></div>

        <h2>解曰：</h2>

        <div class="h2_content"><{$qian.jie}></div>

        <h2>语译：</h2>

        <div class="h2_content"><{$qian.xiangjie}></div>

        <h2>古人典故：</h2>

        <div class="h2_content"><{$qian.guren}></div>

        <div class="center mt10"><a href="/chouqian/tianhou/"><img src="/static/img/chongchou.gif" border="0"></a></div>
        <!---->
        <{/if}>

        <{if $rand!=''}>
        <div style="clear:both;text-align:center;">
            <span class="green">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签！<br>请求指点的问题！再进行下一步...</span>

            <{if $gysmile!='4' && $clicknum<3}>

            <{if $clicknum==2}>

        <img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" />
            <{else}>
            <a href="/chouqian/tianhou/<{$clicknum+2}>/<{$rand}>"><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></a>
            <{/if}>

            <p><span class="green">您掷出<{$clicknum+1}>次圣杯，请点击上图再次掷出！</span></p>


            <{if $clicknum==2}>
            <p><span class="green">恭喜，您连续掷出了三次圣杯，<a href="/chouqian/tianhou/4/<{$rand}>">请点这里察看签词！</a></span></p>
            <p><a href="/chouqian/tianhou/4/<{$rand}>"><img src="/static/img/chakan.gif" width="94" height="31" alt="查看签词" /></a></p>
            <{else}>
            <p class="last">需连续掷出三次圣杯，才是灵签！目前，您已经掷出<strong class="cRed"><{$clicknum+1}></strong>次</p>
            <p><a href="/chouqian/tianhou/<{$clicknum+2}>/<{$rand}>"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a></p>
            <{/if}>

            <{else}>

            <p><a href="/chouqian/tianhou/"><img src="<{$web_url}>static/bazi/img/suanming/bad_cup.gif" alt="重新抽签" /></a></p><br />
        需连续掷出三次圣杯后，此签才算是灵签！<br />
            <span class="red">您掷出了笑杯，该签不灵，请重新抽签。</span><br /><br />
            <a href="/chouqian/tianhou/"><img src="/static/img/chongchou.gif" width="94" height="31" alt="重新抽签" /></a>
        <br /><br />
            <{/if}>
            </dov>

            <{/if}>

            <{if $qid=='' && $rand==''}>
            <div class="h2_content"><p>专业版妈祖灵签有100签，天后灵签为您提供解签，三种签的签文自古至今流传久远，各地吕祖善抽签略有不同。也有少数佛寺院使用这种签种妈祖灵签解签，首先要有一棵真诚的心态，闭上眼睛请求指点的事情。如婚姻、事业、运程、流年、工作、财运...所谓的心诚则灵啊，之后才开始。</p></div>
            <center>
                <a href="/chouqian/tianhou/1"><img id="lingqian" src="<{$web_url}>static/bazi/img/suanming/v2/qian.gif" width="86" /></a><br />
                <a href="/chouqian/tianhou/1"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a>
                <br/>
                <span class="red"><b>试试：摇一摇手机</b></span>
            </center>
            <ul>
                <li>天后是在约一千多年以前，出生于中国福建莆田的一个沿海渔村唤作林默的一個女子。<br />相传天后从小已有预知能力來帮助当地居民，驱邪消灾。</li>
                <li>点上面的签筒开始抽签！</li>
            </ul>
            <{/if}>

    </dl>
</div>

    <div>
        <{include file='./h5/public/more_nav.tpl'}>
    </div>

</div>
<{include file='./h5/public/news.tpl'}>
<div id="navi">
    <{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/footer.tpl'}>