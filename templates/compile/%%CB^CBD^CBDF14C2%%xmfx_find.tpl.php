<?php /* Smarty version 2.6.25, created on 2019-07-01 18:23:29
         compiled from index/xingming/xmfx_find.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/top_nav.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/css/suanming/v2/xmfx.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/daohang.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        </div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/path.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="cont">
<div class="col_left">
<?php 
 include('cache/gg/12sx_top_730x15.php');
?>

<div class="fn_part fn_xms fn_xm_result mod_box_t1">
<div class="hd">
<h1>名字测试打分</h1>
</div>
<div class="bd">
<div class="mod_box_t3">
<div>
<table border="0" cellpadding="0" cellspacing="0" class="info_table info_table_col3" width="100%">
<tbody>
<tr>
<th class="sort_1st">
<ul class="clearfix">
<li class="cGrey">姓名</li>
<li class="cGrey">繁体</li>
<li class="cGrey">拼音</li>
<li class="cGrey">康熙笔画</li>
<li class="cGrey">字意五行</li>

<li><strong><?php echo $this->_tpl_vars['xm_arr']['xing1']; ?>
</strong></li>
<li><?php echo $this->_tpl_vars['xm_arr']['xing1gb']; ?>
</li>
<li><?php echo $this->_tpl_vars['xm_arr']['xing1py']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['bihua1']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['hzwh1']; ?>
</li>


<?php if ($this->_tpl_vars['xm_arr']['xing2']): ?>
<li><strong><?php echo $this->_tpl_vars['xm_arr']['xing2']; ?>
</strong></li>
<li><?php echo $this->_tpl_vars['xm_arr']['xing2gb']; ?>
</li>
<li><?php echo $this->_tpl_vars['xm_arr']['xing2py']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['bihua2']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['hzwh2']; ?>
</li>
<?php endif; ?>

<li><strong><?php echo $this->_tpl_vars['xm_arr']['ming1']; ?>
</strong></li>
<li><?php echo $this->_tpl_vars['xm_arr']['ming1gb']; ?>
</li>
<li><?php echo $this->_tpl_vars['xm_arr']['ming1py']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['bihua3']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['hzwh3']; ?>
</li>

<?php if ($this->_tpl_vars['xm_arr']['ming2']): ?>
<li><strong><?php echo $this->_tpl_vars['xm_arr']['ming2']; ?>
</strong></li>
<li><?php echo $this->_tpl_vars['xm_arr']['ming2gb']; ?>
</li>
<li><?php echo $this->_tpl_vars['xm_arr']['ming2py']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['bihua4']; ?>
</li>
<li><?php echo $this->_tpl_vars['bh_wh_arr']['hzwh4']; ?>
</li>
<?php endif; ?>
</ul>
</th>
<td class="sort_2nd">天格 >> <?php echo $this->_tpl_vars['tdr_ge']['tiange']; ?>
 (<?php echo $this->_tpl_vars['tdr_ge']['tian_sancai']; ?>
)<br />
人格 >> <?php echo $this->_tpl_vars['tdr_ge']['renge']; ?>
 (<?php echo $this->_tpl_vars['tdr_ge']['ren_sancai']; ?>
)<br />
地格 >> <?php echo $this->_tpl_vars['tdr_ge']['dige']; ?>
 (<?php echo $this->_tpl_vars['tdr_ge']['disancai']; ?>
)</td>
<td class="sort_3rd">外格 >> <?php echo $this->_tpl_vars['tdr_ge']['waige']; ?>
 (<?php echo $this->_tpl_vars['tdr_ge']['waige_sancai']; ?>
)<br />总格 >> <?php echo $this->_tpl_vars['tdr_ge']['zongge']; ?>
 (<?php echo $this->_tpl_vars['tdr_ge']['zongge_sancai']; ?>
)</td>
</tr>
</tbody>
</table>
</div>

</div>


<div class="mod_box_t3 summary">
<div class="box_con">

<h4 class="cut_tit">姓名总评及建议</h4>
<h3><strong>姓名五格评分：</strong><span class="cRed"><?php echo $this->_tpl_vars['xmdf']; ?>
分</span></h3>
<?php if ($this->_tpl_vars['xmdf'] < 60): ?>
<p>你的名字可能不是很好。强烈建议你换个名字试试，也许人生会因此而改变的。</p>

<p>如果有条件，改个名字也未尝不可。</p>

<?php elseif ($this->_tpl_vars['xmdf'] >= 60 && $this->_tpl_vars['xmdf'] < 70): ?>
<p>你的名字可能不太好，如果可能的话，不妨尝试改变一下，也许会有事半功倍之效。</p>

<p>如果有条件，改个名字也未尝不可。</p>

<?php elseif ($this->_tpl_vars['xmdf'] >= 70 && $this->_tpl_vars['xmdf'] < 80): ?>
<p>你的名字可能不太理想，要想赢得成功，必须比别人付出更多的艰辛和汗水。如果有条件，改个名字也未尝不可。</p>

<p>如果有条件，改个名字也未尝不可。</p>
<?php elseif ($this->_tpl_vars['xmdf'] >= 80 && $this->_tpl_vars['xmdf'] < 90): ?>
<p>你的名字取得不错，如果与命理搭配得当，相信它会助你一生顺利的，祝你好运！</p>

<?php elseif ($this->_tpl_vars['xmdf'] >= 90): ?>
<p>你的名字取得非常棒，如果与命理搭配得当，成功与惊喜将会伴随你的一生。但千万注意不要失去上进心。</p>
<?php endif; ?>
<p><a href="/xingming/qiming/" style="color:red;">若想改名,查看起名大全>></a></p>
</div>

</div>
<div class="mod_box_t3">

<div>
<div class="temper_cate temper_cate_nobt">
<p><strong class="cRed hang_lt">天格<?php echo $this->_tpl_vars['tiangearr']['tiangee']; ?>
的解析：</strong><span class="hang_rt">天格数是先祖留传下来的，其数理对人影响不大。</span></p>
<p class="cGrey bbg"><?php echo $this->_tpl_vars['tiangearr']['yy']; ?>
<span class="cRed"><?php echo $this->_tpl_vars['tiangearr']['jx']; ?>
</span></p>
<h4 class="cut_tit">详细解释</h4>
<p class="cut_con"><?php echo $this->_tpl_vars['tiangearr']['content']; ?>
</p>
</div>
<div class="temper_cate">
<p><strong class="cRed hang_lt">人格<?php echo $this->_tpl_vars['rengearr']['rengee']; ?>
的解析：</strong><span class="hang_rt">人格数是先祖留传下来的，其数理对人影响不大。</span></p>
<p class="cGrey bbg"><?php echo $this->_tpl_vars['rengearr']['yy']; ?>
<span class="cRed"><?php echo $this->_tpl_vars['rengearr']['jx']; ?>
</span></p>
<h4 class="cut_tit">详细解释</h4>
<p class="cut_con"><?php echo $this->_tpl_vars['rengearr']['content']; ?>
</p>
</div>
<div class="temper_cate">
<p><strong class="cRed hang_lt">地格<?php echo $this->_tpl_vars['digearr']['digee']; ?>
<?=$digee?>的解析：</strong><span class="hang_rt">地格数是先祖留传下来的，其数理对人影响不大。</span></p>
<p class="cGrey bbg"><?php echo $this->_tpl_vars['digearr']['yy']; ?>
<span class="cRed"><?php echo $this->_tpl_vars['digearr']['jx']; ?>
</span></p>
<h4 class="cut_tit">详细解释</h4>
<p class="cut_con"><?php echo $this->_tpl_vars['digearr']['content']; ?>
</p>
</div>
<div class="temper_cate">
<p><strong class="cRed hang_lt">外格<?php echo $this->_tpl_vars['waigearr']['waigee']; ?>
的解析：</strong><span class="hang_rt">外格数是先祖留传下来的，其数理对人影响不大。</span></p>
<p class="cGrey bbg"><?php echo $this->_tpl_vars['waigearr']['yy']; ?>
<span class="cRed"><?php echo $this->_tpl_vars['waigearr']['jx']; ?>
</span></p>
<h4 class="cut_tit">姓名命运</h4>
<p class="cut_con"><?php echo $this->_tpl_vars['waigearr']['content']; ?>
</p>
</div>
</div>

</div>
<div class="mod_box_t3">
<div>
<div class="temper_cate temper_cate_nobt">
<p><strong class="cRed hang_lt">对三才数理的影响:</strong><span class="hang_rt">您的姓名三才配置为：<em class="cRed"><?php echo $this->_tpl_vars['rssancai']['sancai']; ?>
</em>。它具有如下数理诱导力，据此会对人生产生一定的影响。</span></p>
<p class="cGrey bbg">
<?php echo $this->_tpl_vars['rssancai']['yy']; ?>
 　　<span class="cRed">（<?php echo $this->_tpl_vars['rssancai']['jx']; ?>
）</span></p>
<h4 class="cut_tit">详细解释</h4>
<ul class="sum">
<li>
<?php echo $this->_tpl_vars['rssancai']['content']; ?>

</li>
</ul>
</div>
</div>

</div>
<div class="mod_box_t3">
<div>
<ul class="sum_bb">
<li class="nobt">
<strong class="cRed hang_lt">对基础运的影响:</strong>
<span class="hang_rt">
<?php echo $this->_tpl_vars['rssancai']['jcy']; ?>
 <em class="cRed">（<?php echo $this->_tpl_vars['rssancai']['jx1']; ?>
）</em></span>
</li>
<li>
<strong class="cRed hang_lt">对成功运的影响:</strong>
<span class="hang_rt">
<?php echo $this->_tpl_vars['rssancai']['cgy']; ?>
 <em class="cRed">（<?php echo $this->_tpl_vars['rssancai']['jx2']; ?>
）</em></span>
</li>
<li>
<strong class="cRed hang_lt">对人际关系的影响:</strong>
<span class="hang_rt">
<?php echo $this->_tpl_vars['rssancai']['rjgx']; ?>
 <em class="cRed">（<?php echo $this->_tpl_vars['rssancai']['jx3']; ?>
）</em></span>
</li>
<li>
<strong class="cRed hang_lt">对性格的影响:</strong>
<span class="hang_rt">
<?php echo $this->_tpl_vars['rssancai']['xg']; ?>
 
</span>
</li>
</ul>
</div>

</div>
<div class="mod_box_t3">
<div>
<ul class="sum_bb">
<li class="nobt">
<strong class="cRed hang_lt">天格<?=$tiangee?>有以下数理暗示:</strong>
<span class="hang_rt"><?php echo $this->_tpl_vars['tiangearr']['as']; ?>
</span>
</li>
<li>
<strong class="cRed hang_lt">人格<?=$rengee?>有以下数理暗示:</strong>
<span class="hang_rt"><?php echo $this->_tpl_vars['rengearr']['as']; ?>
</span>
</li>
<li>
<strong class="cRed hang_lt">地格<?=$digee?>有以下数理暗示:</strong>
<span class="hang_rt"><?php echo $this->_tpl_vars['digearr']['as']; ?>
</span>
</li>
<li>
<strong class="cRed hang_lt">外格<?=$waigee?>有以下数理暗示:</strong>
<span class="hang_rt"><?php echo $this->_tpl_vars['waigearr']['as']; ?>
</span>
</li>
</ul>
</div>

</div>

<div class="btn_tool_retest">
<a class="btn_orange_1" href="/xingming/xmfx/">重新测算</a>
</div>
<div class="tips_area"><a href="/xingming/xmfx/">《名字测试打分》</a>名字是一个符号不假，但它却是一个非常特别、极其重要的符号。他是一个人安身立命的根本，是人生的一面旗帜。开运网免费为你的姓名算命，真正的好名字，必须拥有深刻的寓意，必须能体现一个人的社会层次。蕴涵了人的精、气、神，传达着天地之玄机。一个好的名字，不仅给别人印象深刻，而且还关系到人一生的命运、事业、婚姻、健康和人际关系。可通过姓名测试命运。也可通过姓名测试爱情，查看人一生的命运、三才五格，姓名测试爱情查看婚姻结果，名字笔画五行不要和命谱四柱五行相联系，它本身五格部象的五行相生相克是其本身独立一格的五行，与命谱五行没有联系的，看看你的名字测试打分到底能得多少分。<br>本算命系统来源于中国民俗学的一些测算方法，并非科学研究成果，仅供休闲娱乐，请勿迷信，按此操作一切后果自负！</div>
</div>

</div>

                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/left_sx.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
                </div>
                <div id="col_right" class="col_right">
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/right.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
