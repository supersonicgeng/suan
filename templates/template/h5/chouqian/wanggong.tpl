<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>

<{if $qid}>
    <h1 class="title">您抽中了【第<span><{$qian.qid}></span>签】<{$qian.qianming}></h1>
    <{else}>
    <h1 class="title">王公灵签</h1>
    <{/if}>

<div class="detail">
    <dl>

        <{if $qid!=''}>

        <!---->
        <h2>解曰：</h2>

        <div class="h2_content"><{$qian.jie}></div>

        <h2>签语：</h2>

        <div class="h2_content"><{$qian.qy}></div>

        <h2>释义：</h2>

        <div class="h2_content"><{$qian.shiyi}></div>

        <h2>详解：</h2>

        <div class="h2_content"><{$qian.xiangjie}></div>

        <div class="center mt10"><a href="/chouqian/"><img src="/static/img/shouye.gif" border="0"></a> &nbsp; <a href="/chouqian/wanggong/"><img src="/static/img/chongchou.gif" border="0"></a></div>
        <{/if}>

        <{if $rand!=''}>
        <div style="clear:both;text-align:center;">
            <span class="green">您刚抽了第 <strong class="cRed"><{$rand}></strong> 签！<br>请求指点的问题！再进行下一步...</span>

            <{if $gysmile!='4' && $clicknum<3}>

            <{if $clicknum==2}>

        <img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" />
            <{else}>
            <a href="/chouqian/wanggong/<{$clicknum+2}>/<{$rand}>"><img src="<{$web_url}>static/bazi/img/suanming/good_cup.gif" /></a>
            <{/if}>

            <p><span class="green">您掷出<{$clicknum+1}>次圣杯，请点击上图再次掷出！</span></p>


            <{if $clicknum==2}>
            <p><span class="green">恭喜，您连续掷出了三次圣杯，<a href="/chouqian/wanggong/4/<{$rand}>">请点这里察看签词！</a></span></p>
            <p><a href="/chouqian/wanggong/4/<{$rand}>"><img src="/static/img/chakan.gif" width="94" height="31" alt="查看签词" /></a></p>
            <{else}>
            <p class="last">需连续掷出三次圣杯，才是灵签！目前，您已经掷出<strong class="cRed"><{$clicknum+1}></strong>次</p>
            <p><a href="/chouqian/wanggong/<{$clicknum+2}>/<{$rand}>"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a></p>
            <{/if}>

            <{else}>

            <p><a href="/chouqian/wanggong/"><img src="<{$web_url}>static/bazi/img/suanming/bad_cup.gif" alt="重新抽签" /></a></p><br />
        需连续掷出三次圣杯后，此签才算是灵签！<br />
            <span class="red">您掷出了笑杯，该签不灵，请重新抽签。</span><br /><br />
            <a href="/chouqian/wanggong/"><img src="/static/img/chongchou.gif" width="94" height="31" alt="重新抽签" /></a>
        <br /><br />
            <{/if}>
            </dov>

            <{/if}>

            <{if $qid=='' && $rand==''}>
            <div class="h2_content">
                <p>王公灵签又称王公祖仔灵签，王公祖仔（320年－385年）姓谢名安，字安石，号东山。是东晋王朝有名的宰相，祖籍陈郡阳夏（今河南太康）人。他出身名门大族，祖父谢衡以儒学知名，官至国子祭酒；父亲谢裒（方音蒲），官至太常卿，母亲钱氏，生有谢奕、谢据、谢安、谢万、谢铁、谢石等六个儿子，谢安排行第三。</p>
                <p>王公灵签一共50签。请诚心向王公祖仔禀报求问之事，求签前须请求神明同意以连续三圣杯为准赐签，点击签筒开始抽签。抽取签支后，以连续不中断的三次圣杯为准，即求签时“连续三圣杯”是绝对必要的原则。就是说抽取签支后开始，在连续求得三圣杯之前，只要见到笑杯要重抽签。同一问题不可重复占卜！《易经·蒙》曰：“再三渎，渎则不告”。</p>
            </div>
            <center>
                <a href="/chouqian/wanggong/1"><img id="lingqian" src="<{$web_url}>static/bazi/img/suanming/v2/qian.gif" width="86" /></a><br />
                <a href="/chouqian/wanggong/1"> <img src="/static/img/qiuqian.gif" width="94" height="31" alt="开始抽签" /></a>
                <br/>
                <span class="red"><b>试试：摇一摇手机</b></span>
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
<div class="detail">
    <h3>王工灵签 共50签：</h3>
    <dl>
        <ul class="lingqian">
            <li><a href="/chouqian/wanggong/4/1/">第1签</a></li><li><a href="/chouqian/wanggong/4/2/">第2签</a></li><li><a href="/chouqian/wanggong/4/3/">第3签</a></li><li><a href="/chouqian/wanggong/4/4/">第4签</a></li><li><a href="/chouqian/wanggong/4/5/">第5签</a></li><li><a href="/chouqian/wanggong/4/6/">第6签</a></li><li><a href="/chouqian/wanggong/4/7/">第7签</a></li><li><a href="/chouqian/wanggong/4/8/">第8签</a></li><li><a href="/chouqian/wanggong/4/9/">第9签</a></li><li><a href="/chouqian/wanggong/4/10/">第10签</a></li><li><a href="/chouqian/wanggong/4/11/">第11签</a></li><li><a href="/chouqian/wanggong/4/12/">第12签</a></li><li><a href="/chouqian/wanggong/4/13/">第13签</a></li><li><a href="/chouqian/wanggong/4/14/">第14签</a></li><li><a href="/chouqian/wanggong/4/15/">第15签</a></li><li><a href="/chouqian/wanggong/4/16/">第16签</a></li><li><a href="/chouqian/wanggong/4/17/">第17签</a></li><li><a href="/chouqian/wanggong/4/18/">第18签</a></li><li><a href="/chouqian/wanggong/4/19/">第19签</a></li><li><a href="/chouqian/wanggong/4/20/">第20签</a></li><li><a href="/chouqian/wanggong/4/21/">第21签</a></li><li><a href="/chouqian/wanggong/4/22/">第22签</a></li><li><a href="/chouqian/wanggong/4/23/">第23签</a></li><li><a href="/chouqian/wanggong/4/24/">第24签</a></li><li><a href="/chouqian/wanggong/4/25/">第25签</a></li><li><a href="/chouqian/wanggong/4/26/">第26签</a></li><li><a href="/chouqian/wanggong/4/27/">第27签</a></li><li><a href="/chouqian/wanggong/4/28/">第28签</a></li><li><a href="/chouqian/wanggong/4/29/">第29签</a></li><li><a href="/chouqian/wanggong/4/30/">第30签</a></li><li><a href="/chouqian/wanggong/4/31/">第31签</a></li><li><a href="/chouqian/wanggong/4/32/">第32签</a></li><li><a href="/chouqian/wanggong/4/33/">第33签</a></li><li><a href="/chouqian/wanggong/4/34/">第34签</a></li><li><a href="/chouqian/wanggong/4/35/">第35签</a></li><li><a href="/chouqian/wanggong/4/36/">第36签</a></li><li><a href="/chouqian/wanggong/4/37/">第37签</a></li><li><a href="/chouqian/wanggong/4/38/">第38签</a></li><li><a href="/chouqian/wanggong/4/39/">第39签</a></li><li><a href="/chouqian/wanggong/4/40/">第40签</a></li><li><a href="/chouqian/wanggong/4/41/">第41签</a></li><li><a href="/chouqian/wanggong/4/42/">第42签</a></li><li><a href="/chouqian/wanggong/4/43/">第43签</a></li><li><a href="/chouqian/wanggong/4/44/">第44签</a></li><li><a href="/chouqian/wanggong/4/45/">第45签</a></li><li><a href="/chouqian/wanggong/4/46/">第46签</a></li><li><a href="/chouqian/wanggong/4/47/">第47签</a></li><li><a href="/chouqian/wanggong/4/48/">第48签</a></li><li><a href="/chouqian/wanggong/4/49/">第49签</a></li><li><a href="/chouqian/wanggong/4/50/">第50签</a></li>
        </ul>
    </dl>
</div>
<div id="navi">
    <{include file='./h5/public/h5_nav.tpl'}>
</div>

<{include file='./index/footer.tpl'}>