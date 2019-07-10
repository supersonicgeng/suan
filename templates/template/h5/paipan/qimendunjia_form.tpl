<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
    <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">奇门遁甲排盘</h1>
<div class="detail">
    <dl>
        <form name="sm" action="/index.php" class="suanmingk" method="post">
            <input type="hidden" name="ac" value="qimendunjia" />
            <input type="hidden" name="ct" value="h5_paipan" />
            <div align="center">
<div class="smkj">
                <dd class="form">
                    <strong>输入姓名</strong>：<input class="ipt" type="text" name="name" id="wd" maxlength="32" onblur="if (value==''){value='请输入姓名'}" onfocus="if (value=='请输入姓名') {value=''}" value="王小丫"><br><br>
                    <strong> 占事 </strong>：<input type="text" maxlength="14" name="zhanshi" id="area" value="如：子女" class="ipt" style="width: 64px;" />
                    出生时间：
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
                    <strong>生日(公历)</strong>：
                    <select name="yea" id="nian" class="select1">
                        <?php for($i=1921;$i<2022;$i++){ ?>
                        <?php if($i==1988){$se='selected';}else{$se='';} ?>
                        <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                        <?php }?>
                    </select>年
                    <SELECT name="mont" id="yue" class="select1">
                        <?php for($i=1;$i<13;$i++){ ?>
                        <?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
                        <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                        <?php }?>
                    </SELECT>月
                    <SELECT name="dat" id="date" class="select1">
                        <?php for($i=1;$i<32;$i++){ ?>
                        <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                        <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                        <?php }?>
                    </SELECT>日
                </dd>

                <dd class="form"><strong>时辰</strong>：<select size="1" name="hou" id="hh" class="select1">
                        <option value="0" >子&nbsp;0</option><option value="1" >丑&nbsp;1</option><option value="2"  >丑&nbsp;2</option><option value="3"  >寅&nbsp;3</option><option value="4" >寅&nbsp;4</option><option value="5"  >卯&nbsp;5</option><option value="6" >卯&nbsp;6</option><option value="7" >辰&nbsp;7</option><option value="8" >辰&nbsp;8</option><option value="9"  >巳&nbsp;9</option><option value="10"  >巳&nbsp;10</option><option value="11"  >午&nbsp;11</option><option value="12"  >午&nbsp;12</option><option value="13"  >未&nbsp;13</option><option value="14"  >未&nbsp;14</option><option value="15"  >申&nbsp;15</option><option value="16"  >申&nbsp;16</option><option value="17"  >酉&nbsp;17</option><option value="18"  >酉&nbsp;18</option><option value="19"  >戌&nbsp;19</option><option value="20"  >戌&nbsp;20</option><option value="21"  >亥&nbsp;21</option><option value="22"  >亥&nbsp;22</option><option value="23"  >子&nbsp;23</option>
                    </select>

                    <select class="select1" name="minut" id="minute">
                        <option value="0">未知</option>
                        <?php for($i=0;$i<60;$i++){ ?>
                        <option value="<?=$i?>"><?=$i?></option>
                        <?php }?>
                    </select>分钟
                </dd>

                <dd class="form">

                    <input type="hidden" name="jutag" value="0" />
                    <input id=zp type="radio" name="R1" value="zp" checked="" onClick="javacript:fs4.style.display='none';" //>
                    <label for="zp"style="cursor:hand;" >转盘奇门</label>　　　　
                    <input id=fg type="radio" name="R1" value="fg" onClick="javacript:fs4.style.display='block';" />
                    <label for="fg"style="cursor:hand;" >飞盘奇门</label>
                    <div id="fs4" style="display:none">
                        <input name="order" id=yx type="radio" value="1" checked="" />
                        <label for="yx"style="cursor:hand;" > 阳顺阴逆</label>　　　　
                        <input type="radio" id=qbx name="order" value="0" />
                        <label for="qbx"style="cursor:hand;" >全部顺排</label>
                </dd>
</div>
            </div>
            <div class="juzhong"><input type="submit" name="submit" class="button" value="八字排盘"/></div>
        </form>
    </dl>
</div>

<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>