<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">星盘查询测试</h1>
<div class="detail">
    <dl>
        <form name="sm" action="/index.php" class="suanmingk" method="post">
            <input type="hidden" name="ac" value="xingpan" />
            <input type="hidden" name="ct" value="h5_paipan" />
            <div align="center">
<div class="smkj">
                <dd class="form">
                    <strong>输入姓名</strong>：<input class="ipt" type="text" name="name" id="wd" maxlength="32" onblur="if (value==''){value='请输入姓名'}" onfocus="if (value=='请输入姓名') {value=''}" value="王小丫">
                </dd>
				<dd class="form"><strong>出生时间</strong>：
                    <select name="birthyear" class="select1">
                        <?
                                        for($i=1922;$i<=date("Y");$i++)
                                        {
                                        echo "<option value=".$i;
                                        if ($i==1980)
                                        {
                                        echo " selected";
                                        }
                                        echo ">".$i."</option>";
                        }
                        ?>
                    </select>
					</dd>
                <dd class="form"><div class=radio><strong>您的性别：</strong><input type="radio" name="sex" id="mingtype1" value="1" checked>
                <label for="mingtype1"></label>男
                <input name="sex" type="radio" id="mingtype2" value="0" >
                <label for="mingtype2"></label>女</div>
                </dd>

                <dd class="form">
                    <strong>星盘</strong>：
                    <select name="t1" class="select1">
                        <option value="1">当太阳</option>
                        <option value="2">当月亮</option>
                        <option value="3">当水星</option>
                        <option value="4">当金星</option>
                        <option value="5">当火星</option>
                        <option value="6">当木星</option>
                        <option value="7">当土星</option>
                        <option value="8">当天王星</option>
                        <option value="9">当海王星</option>
                        <option value="10">当冥王星</option>
                    </select>

                    <strong>星座</strong>：
                    <select name="t2" class="select1">
                        <option value="1">落入白羊座</option>
                        <option value="2">落入金牛座</option>
                        <option value="3">落入双子座</option>
                        <option value="4">落入巨蟹座</option>
                        <option value="5">落入狮子座</option>
                        <option value="6">落入处女座</option>
                        <option value="7">落入天秤座</option>
                        <option value="8">落入天蝎座</option>
                        <option value="9">落入射手座</option>
                        <option value="10">落入摩羯座</option>
                        <option value="11">落入水瓶座</option>
                        <option value="12">落入双鱼座</option>
                    </select>
                </dd>

</div>
            </div>
            <div class="juzhong"><input type="submit" name="submit" class="button" value="星盘查询"/></div>
        </form>
    </dl>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>