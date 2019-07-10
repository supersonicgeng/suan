<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">名字测试打分</h1>
<div class="detail">
    <dl>
        <form name=form1 action="/index.php"  method="post">
            <input type="hidden" name="ac" value="xmfx" />
            <input type="hidden" name="ct" value="h5_xingming" />
            <input type="hidden" value="371" name="tid">
            <dd class="form zhongjian">
                <span>输入姓名</span>：<input class="ipt1" type="text" name="name" id="wd" maxLength=32 onBlur="if (value==''){value='请输入姓名'}" onFocus="if (value=='请输入姓名') {value=''}" value="王小丫">
            </dd>
            <dd>
                <div align="center">
                    <input type="submit" name="submit" class="button" value="马上测试" />
                    <input type="hidden" name="action" value="jieguo">
                </div>
            </dd>
    </dl>
</div>
<div class="detail">
    <h2>试试：</h2>
    <dl>
        <li> &nbsp; <a href="/name/%C0%EE%D2%D7%B7%E5" target="_blank">李易峰</a>  &nbsp; <a href="/name/%B7%B6%B1%F9%B1%F9" target="_blank">范冰冰</a>  &nbsp; <a href="/name/%C7%C7%C8%CE%C1%BA" target="_blank">乔任梁</a>  &nbsp; <a href="/name/%D1%EE%C3%DD" target="_blank">杨幂</a>  &nbsp; <a href="/name/%CD%F5%D7%D3%CE%C4" target="_blank">王子文</a>  &nbsp; <a href="/name/%BA%FA%B8%E8" target="_blank">胡歌</a>  &nbsp; <a href="/name/%CD%F5%BF%A1%BF%AD" target="_blank">王俊凯</a>  &nbsp; <a href="/name/%D5%C5%D2%D5%D0%CB" target="_blank">张艺兴</a>
        </li>
    </dl>
</div>
<div style="text-align:center;">
	<a href="http://sm.03ky.com/?ac=xmfx" target="_blank"><img src="http://sm.03ky.com/statics/ffsm/bazijingpi/1/images/ceming.jpg" width="100%" /></a> 
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>