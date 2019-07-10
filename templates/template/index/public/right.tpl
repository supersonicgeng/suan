<div class="Min3">
<div class="Min3_R">
<div class="ys_item">
    	<div class="title">
        <h3>今日黄历</h3>
        </div>
        <div class="bd bd_s1">
            <div class="mod_ecliptic">
                <div class="ecliptic_date">
                	<script type="text/javascript" src="/huangli.js"></script>
                </div>
            </div>
            <div class="query_btn"><a target="_blank" href="<{$web_url}>hdjr/zeri/">吉日查询</a></div>
    	</div>
</div>
<div class="sesx">
    <div class="bd_s1">
        <a href="https://www.03ky.com/2019/shu.html" target="_blank" class="sx-1">鼠</a>
        <a href="https://www.03ky.com/2019/niu.html" target="_blank" class="sx-2">牛</a>
        <a href="https://www.03ky.com/2019/hu.html" target="_blank" class="sx-3">虎</a>
        <a href="https://www.03ky.com/2019/tu.html" target="_blank" class="sx-4">兔</a>
        <a href="https://www.03ky.com/2019/long.html" target="_blank" class="sx-5">龙</a>
        <a href="https://www.03ky.com/2019/she.html" target="_blank" class="sx-6">蛇</a>
        <a href="https://www.03ky.com/2019/ma.html" target="_blank" class="sx-7">马</a>
        <a href="https://www.03ky.com/2019/yang.html" target="_blank" class="sx-8">羊</a>
        <a href="https://www.03ky.com/2019/hou.html" target="_blank" class="sx-9">猴</a>
        <a href="https://www.03ky.com/2019/ji.html" target="_blank" class="sx-10">鸡</a>
        <a href="https://www.03ky.com/2019/gou.html" target="_blank" class="sx-11">狗</a>
        <a href="https://www.03ky.com/2019/zhu.html" target="_blank" class="sx-12">猪</a>
    </div>
</div>
<div id="03ky">
<div class="ys_item">
    <div class="title">
        <h3>应用推荐</h3>
    </div>
    <div class="">
        <ul class="appList clearfix">
        	<{foreach from=$public_hand_data.public_right_yingyong item=v}>
				<li><a <{if $v.blank==1}>target="_blank"<{/if}> href="<{$v.url}>"><img src="<{$v.listimg}>" alt="<{$v.title}>" width="64" height="64"><p><{$v.title}></p></a></li>
            <{/foreach}>
        </ul>
    </div>
</div>
    <!--熱門文章-->
    <div class="new_item">
      <div class="com_title2">
        <p>熱門文章</p>
      </div>
      <div class="item">
        <div class="lis_a">
          <a href="/show-4630.html" target="_blank" class="img">
            <img src="http://zb.03ky.com/up_img/201611/07/e0wt55952A5.png" alt=""></a>
          <a href="/show-4637.html" target="_blank" class="img">
            <img src="http://zb.03ky.com/up_img/201611/07/9a4f5A16632.png" alt=""></a>
        </div>
		<{section loop=$public_hand_data.left_news.data_list name=news start=5 max=9}>
        <div class="lis_b"><i></i><a href="<{$public_hand_data.left_news.data_list[news].url}>" target="_blank"><{$public_hand_data.left_news.data_list[news].title}></a></div>
		<{/section}>
      </div>
    </div>
</div>
</div></div>
<script type="text/javascript">
    $(function () {
        var ie6 = document.all;
        var dv = $('#03ky'), st;
        dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
        $(window).scroll(function () {
            st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
            if (st > parseInt(dv.attr('otop'))) {
                if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果
                    dv.css({ position: 'absolute', top: st });
                }
                else if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: 40, 'width': '338px' });
            } else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
        });
    });
</script>