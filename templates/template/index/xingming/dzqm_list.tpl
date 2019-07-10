<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/xmfx.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
<div class="fn_dzqm fn_part mod_box_t1">
<div class="hd">
<h1>定字起名</h1>
</div>
<div class="bd">
<?php include('cache/gg/sm_bottom_586x30.php'); ?>
<div class="intro_area">
<strong>「定字起名」</strong>起名字既有一定的原则和方法，又有一些禁忌和容易陷入的误区，一个人的姓和名字都是没有的，从宝宝出来就要起名，姓是已经定好的，如果已经确定了一个字的情况，定第一个字起名，定第二个字起名，开运网为你推荐起名字大全，例如王姓家庭中已经确定了家谱中的一个中间字【星】，需要起【伍星星】【伍星月】【伍星鹏】这样的名字，或者已经确定了末尾字【轩】，需要起【伍星轩】【伍伍轩】【伍慧轩】这样的名字。
</div>
<div class="mod_box_t3 fn_box fn_dzqm_result" name="result" id="dingzi_step3">
<div class="box_con">
<h3 class="btitle">以下是利用姓名五格、三才配置、81数理为你推荐的高分姓名：</h3>
<div class="bmeta">
<div class="inner clearfix" id="dingzi_result">
<{if $notcontent!=''}>
<{$notcontent}>
<{else}>
    <{foreach from=$list item=v key=k}>
        <a href="<{$web_url}>xingming/xmfx/<{$v.name}>"><{$v.name}><span></span></a>
    <{/foreach}>
<{/if}>

</div>
</div>

<div class="form_item btn_item">
<a class="btn_orange" href="<{$web_url}>xingming/dzqiming/" id="btn_begincs"  type="submit">重新起名</a>

</div>

</div>

<i class="flag_tl_t3"></i>

<i class="flag_tr_t3"></i>

<i class="flag_bl_t3"></i>

<i class="flag_br_t3"></i>

</div>


              </div>

              <i class="flag_tl_t1"></i>

              <i class="flag_tr_t1"></i>

              <i class="flag_bl_t1"></i>

              <i class="flag_br_t1"></i>

            </div>
                <{include file='./index/public/left_sx.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<{include file='./index/footer.tpl'}>

