<?php /* Smarty version 2.6.25, created on 2019-07-01 18:09:49
         compiled from index/haoma/shouji_form.tpl */ ?>
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
static/bazi/css/suanming/v2/number.css"/>
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
				<div class="fn_part fn_sj mod_box_t1">
					<div class="hd">
						<h1>手机号码吉凶</h1>
					</div>
                    <?php if ($this->_tpl_vars['word']): ?>
                    <div class="result_area">
						<p><strong>所查号码：</strong><span><?php echo $this->_tpl_vars['word22']; ?>
</span></p>
						<p><strong>吉凶分析：</strong><span><?php echo $this->_tpl_vars['haomajx']['title']; ?>
<em class="bad">(<?php echo $this->_tpl_vars['haomajx']['jx']; ?>
)</em></span></p>
                        <p><strong>归属地：</strong><span><?php echo $this->_tpl_vars['gsd']; ?>
</span></p>
						<p><strong>主人个性：</strong><span><?php echo $this->_tpl_vars['haomajx']['content']; ?>
</span></p>
					</div>
                    <?php endif; ?>
					<div class="bd">
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                <form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                    <input type="hidden" name="ac" value="shouji" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="389" />
                                    <input type="hidden" name='k' value="手机号码">
                                    <input type="text" name="word" id="shouji_haoma_num" value="" onKeyUp="value=value.replace(/[^\d]/g,'') " class="ipt_text"/>
                                    <button class="btn_orange_1" onClick="get2Cha('shouji');" type="submit">查询</button>
                                </form>
								</div>
							</div>
						</div>
                    	<div class="intro_area">
							<p>人们经常随身携带的符号则具有特定的吉凶暗示力。我们的生活几乎不离号码，如电话号码、手机号码。手机号码吉凶预测，号令天下手机号码吉凶查询，其实包含有一定的吉凶数理，电话号码测吉凶看结果就像姓名会影响运势命运的意义是一样的。</p><p>手机号码吉凶：手机号码与您的生活息息相关，也是您与很多人沟通的桥梁！所以就像风水、阳宅会影响运势命运一样，手机号码吉与凶可能会有一定的影响，不可轻视！手机吉凶，号令天下手机号码测吉凶的预测结果仅供参考！</p>
						</div>
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
