<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
<div class="mod_box_t1 fn_part fn_cs2">
<div class="hd">
<h1>出生日</h1>
</div>

<div class="bd">
    <div class="intro_area">
        <strong>「出生日」</strong>命理分析是以一个人出生的日期来分析其一生的成就、姻缘、运势等。出生日期如何看你的天赋？出生日期如何透露你一生姻缘？开运网查看并解答你的出生日！
    </div>					
    <div class="mod_box_t3 fn_box_xingzuo">
        <div class="box_con">
            <form name="<{$web_url}>index.php" method="post">
            <input type="hidden" name="ct" value="haoma" />
            <input type="hidden" name="ac" value="chushengri" />
                    <div class="mod_form">
                            <div class="form_item center" style="text-align:center;">
                              
                <select name="d" class="select" id="d">
                    <?php for($i=1;$i<32;$i++){ ?>
                    <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                    <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                    <?php }?>
                </select> 日	&nbsp; <input type="submit" value="出生日" class="btn_orange">							
                    </div>
                </div>
            </form>
                <div class="help_area">
                    <span class="help_tit"><i></i>相关帮助：</span>
                    <a href="/hdjr/yinyangli/" target="_blank">[农历/公历转换]</a>
                    <a href="/hdjr/lishi/" target="_blank">[历史上今天]</a>
                </div>
        </div>

    </div>	

</div>


</div>

                <{include file='./index/public/left_xingzuo.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
<{include file='./index/footer.tpl'}>

