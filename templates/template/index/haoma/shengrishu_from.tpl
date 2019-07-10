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
<h1>生日书</h1>
</div>

<div class="bd">
    <div class="intro_area">
        <strong>「生日书」</strong>每个人的生日都是个迷，星相命理给我们生命的启示，不同的生日都会有不同的命运，生日总有神奇的暗示，凭出生日期的数字测出内在性格和潜在力量， 生日书是依据西洋星座分析写出来的。每个人的诞生，都是上天特别量身订制的，每个人的生日都是一种喜悦的经典。与此同时，每个人的生日都是个迷，星相命理给我们生命的启示，不同的生日都会有不同的命运。生日总有神奇的暗示，凭出生日期的数字测出内在性格和潜在力量。
    </div>					
    <div class="mod_box_t3 fn_box_xingzuo">
        <div class="box_con">
            <form action="<{$web_url}>index.php" method="post">
                <input type="hidden" name="ct" value="haoma" />
                <input type="hidden" name="ac" value="shengrishu" />
                <input type="hidden" name="tid" value="464" />
                    <div class="mod_form">
                            <div class="form_item center">
                                出生日期（公历）&nbsp;
                                <select name="y" class="select" id="y">
                                    <?php for($i=1910;$i<2017;$i++){ ?>
                                    <?php if($i==1988){$se='selected';}else{$se='';} ?>
                                    <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                    <?php }?>
                                </select> 年
                                
                              <select name="m" class="select" id="m">
                                    <?php for($i=1;$i<13;$i++){ ?>
                                    <?php if($i==date('m',time())){$se='selected';}else{$se='';} ?>
                                    <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                                    <?php }?>
                              </select> 月
                              
                <select name="d" class="select" id="d">
                    <?php for($i=1;$i<32;$i++){ ?>
                    <?php if($i==date('d',time())){$se='selected';}else{$se='';} ?>
                    <option value="<?=$i?>" <?=$se?>><?=$i?></option>
                    <?php }?>
                </select> 日	&nbsp; <input type="submit" value="生日书" class="btn_orange">							
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

