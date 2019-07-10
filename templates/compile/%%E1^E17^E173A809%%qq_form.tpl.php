<?php /* Smarty version 2.6.25, created on 2019-07-01 18:15:03
         compiled from index/haoma/qq_form.tpl */ ?>
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
				<div class="fn_part fn_qq mod_box_t1">
					<div class="hd">
						<h1>QQ号码吉凶</h1>
					</div>
					<div class="bd">
                    <?php if ($this->_tpl_vars['word'] != ''): ?>
                    <div class="result_area">
						<p><strong>所查号码：</strong><span><?php echo $this->_tpl_vars['word']; ?>
</span></p>
						<p><strong>吉凶分析：</strong><span><?php echo $this->_tpl_vars['haomajx']['title']; ?>
<em class="bad">(<?php echo $this->_tpl_vars['haomajx']['jx']; ?>
)</em></span></p>
						<p><strong>主人个性：</strong><span><?php echo $this->_tpl_vars['haomajx']['content']; ?>
</span></p>
					</div>
                    <?php endif; ?>					
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                 <form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" method="post" onSubmit="return chkPeiDuiForm('qq');">
                                    <input type="hidden" name="ac" value="qq" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="392" />
                                    <input type="text" name="word" id="qq_haoma_num" value="" onKeyUp="value=value.replace(/[^\d]/g,'') " class="ipt_text"/>
                                    <button class="btn_orange_1" onClick="get2Cha('shouji');" type="submit">查询</button>
                                </form>	
								</div>
							</div>
						</div>
					</div>
					<div class="intro_area">                    
                    <p>QQ号码吉凶：QQ已经成为网民们必不可少的通讯工具，号码测吉凶，查看你的QQ号给你带来的性格暗示和影响，对你的QQ号码评估！</p>
                    <p>人们经常随身携带的符号则具有特定的吉凶暗示力。我们的生活几乎不离号码，QQ号码、Q号码凶吉预测其实包含有一定的吉凶数理，电话号码测吉凶看结果就像姓名会影响运势命运的意义是一样的</p>
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
