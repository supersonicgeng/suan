<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">定字起名</h1>
<div class="detail">
    <dl>
        <form name="qiming" action="/index.php" class="suanmingk" method="post" id="qiming" onSubmit="javascript:return validateForm();">
            <input type="hidden" value="373" name="tid">
            <input type="hidden" value="dzqm" name="ac" />
            <input type="hidden" value="h5_xingming" name="ct" />
			<div class="smkj">
            <dd class="form">
                <strong>您的姓氏</strong>：<input class="ipt" type="text" name="xing" maxLength=32 onBlur="if (value==''){value='请输入姓氏'}" onFocus="if (value=='请输入姓氏') {value=''}" value="王">
            </dd>
            <dd class="form"><strong>您的性别</strong>：<input type="radio" name="sex" id="sex1" value="1" /><label for="sex1">&nbsp;男</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="sex0" name="sex" value="0" checked/><label for="sex0">&nbsp;女</label>
            </dd>
            <dd class="form">
                <strong>理想定字</strong>：<input type="text" class="ipt" name="ming" id="ding" value="">
            </dd>
            <dd class="form">
                <strong>字的位置</strong>：<select name="dingzi" class="select">
                    <option value="1">中间字</option>
                    <option value="2">末尾字</option>
                </SELECT>
            </dd>
			</div>
            <dd>
                <div align="center"><input type="submit" class="button" name="submit1" value="马上起名">
                    <input type="hidden" name="action" value="jieguo"></div>
            </dd>
            <script language="javascript">
                function validateForm()
                {
                    if (qiming.surname.value=="请输入姓氏" || qiming.surname.value=="")
                    {
                        alert("请输入姓氏！");
                        qiming.surname.value="";
                        qiming.surname.focus();
                        return false;
                    }
                    var reg=/[^\u4E00-\u9FA5]/g;
                    if(reg.test(qiming.surname.value))
                    {
                        alert("请您输入汉字！");
                        qiming.surname.focus();
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