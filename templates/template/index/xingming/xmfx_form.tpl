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
<div class="fn_part fn_xm mod_box_t1">
<div class="hd">
<h1>名字测试打分</h1>
</div>
<div class="bd">
<div class="intro_area"><strong>「姓名算命」</strong>《生辰八字起名测名》名字是一个符号不假，但它却是一个非常特别、极其重要的符号。他是一个人安身立命的根本，是人生的一面旗帜。开运网免费为你的姓名算命，提供生辰八字测名字打分，真正的好名字，必须拥有深刻的寓意，必须能体现一个人的社会层次。蕴涵了人的精、气、神，传达着天地之玄机。一个好的名字，不仅给别人印象深刻，而且还关系到人一生的命运、事业、婚姻、健康和人际关系。可通过姓名测试命运。也可通过姓名测试爱情，查看人一生的命运、三才五格，姓名测试爱情查看婚姻结果，名字笔画五行不要和命谱四柱五行相联系，它本身五格部象的五行相生相克是其本身独立一格的五行，与命谱五行没有联系的，看看你的名字测试打分到底能得多少分。
</div>

<div class="mod_box_t3 fn_box">
<div class="box_con">
<form name="from1" action="<{$web_url}>index.php" method="post" onSubmit="return chkfrom_xm();">
<div class="mod_form">
<div class="form_item">
姓：
<input type="text" name="xing" id="xing" value="" class="ipt_text" />
名:
<input type="text" name="ming" id="ming" value="" class="ipt_text" />
</div>

<div class="form_item btn_item">
<input type="hidden" name="ac" value="xmfx" />
<input type="hidden" name="ct" value="xingming" />
<input type="hidden" value="371" name="tid">
<input type="hidden" name="dosubmit" value="true" />
<button class="btn_orange2" id="btn_begincs2" type="submit">测姓名</button>

</div>

</div>
</form>
    <div class="help_area">
    <span class="help_tit"><i></i>相关帮助：</span>
        [<a target="_blank" href="<{$web_url}>xingming/xmpd/">姓名配对关系</a>]
    </div>

</div>


</div>
					
					</div>
					
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

