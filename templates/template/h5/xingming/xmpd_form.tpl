<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">姓名配对</h1>
<div class="detail">
    <dl>
        <form name="qiming" action="/index.php" class="suanmingk" method="post" id="qiming" onSubmit="javascript:return validateForm();">
            <input type="hidden" value="375" name="tid">
            <input type="hidden" value="xmpd" name="ac" />
            <input type="hidden" value="h5_xingming" name="ct" />
<div class="smkj">
            <dd class="form">
                <strong><img src="<{$web_url}>static/bazi/img/suanming/v2/boy_icon.png" alt="男人" width="10" class="item_imgIcon">男方姓名</strong>：<input class="ipt" type="text" name="name1" maxLength=32 onBlur="if (value==''){value='请输入姓氏'}" onFocus="if (value=='请输入姓氏') {value=''}" value="请输入姓氏">
            </dd>
            <dd class="form">
                <strong>名字</strong>：<input type="radio" name="xing1" id="num1" value="1" >
                <label for="num1">单字</label>
                <input name="num" type="radio" id="num2" value="2" checked>
                <label for="num2">双字</label>
                <input type="radio" name="num" id="num0" value="1" >
                <label for="num0">不限</label>
            </dd>


            <dd class="form">
                <strong><img src="<{$web_url}>static/bazi/img/suanming/v2/girl_icon.png" alt="女人" width="10" class="item_imgIcon">女方姓名</strong>：<input class="ipt" type="text" name="name2" maxLength=32 onBlur="if (value==''){value='请输入姓氏'}" onFocus="if (value=='请输入姓氏') {value=''}" value="请输入姓氏">
            </dd>
            <dd class="form">
                <strong>名字</strong>：<input type="radio" name="xing2" id="xing2" value="1" >
                <label for="num1">单字</label>
                <input name="num" type="radio" id="num2" value="2" checked>
                <label for="num2">双字</label>
                <input type="radio" name="num" id="num0" value="1" >
                <label for="num0">不限</label>
            </dd>
</div>
            <dd>
                <div align="center"><input type="submit" class="button" name="submit1" value="开始配对">
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