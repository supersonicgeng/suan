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
<h1>生日密码</h1>
</div>

<div class="bd">
    <div class="intro_area">
        <strong>「生日密码」</strong><p>每个人的生日都是个迷，星相命理给我们生命的启示，不同的生日都会有不同的命运，生日总有神奇的暗示，凭出生日期的数字测出内在性格和潜在力量， 让我们来帮你揭开"生日密码"的神秘面纱，从另一个方面来看你我他/她，让这一切变 得不再神秘，你我他/她的生日密码尽在其中……</p>
<p>完整的生日密码解析，带你全面了解自己的个性潜质，预测你未来的运势发展！</p>
<p>生日密码与占星术有着很大的联系。了解占星术后，会了解生日密码的。但无论如何，命运掌握在自己手上，需要有则改之，无则加勉。</p>
<p>因为生日密码和星座这些都是从外国传入中国的，而阴历是中国特有得纪元法，因此生日密码和星座等所指的都是阳历。</p>
    </div>					
    <div class="mod_box_t3 fn_box_xingzuo">
        <div class="box_con">
            <form name="<{$web_url}>index.php" method="post">
            <input type="hidden" name="ct" value="haoma" />
            <input type="hidden" name="ac" value="shengrimima" />
            <input type="hidden" name="tid" value="394" />
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
                </select> 日	&nbsp; <input type="submit" value="生日密码" class="btn_orange">							
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

