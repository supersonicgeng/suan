<?php /* Smarty version 2.6.25, created on 2019-07-02 10:02:54
         compiled from index/haoma/shenfenzheng_form.tpl */ ?>
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
				<div class="fn_part fn_sfz mod_box_t1">
					<div class="hd">
						<h1>身份证号码吉凶</h1>
					</div>
					<div class="bd">
                    <div class="intro_area">
                     <p>身份证号码吉凶：身份证号码中隐藏着许多不为人知的命运密码，通过合理地解读查看身份证号码好不好，输入身份证查归属地，可以从中了解一个人的性格、事业、财运等一切与命运有关的信息。</p>
                      <p>人们经常随身携带的符号则具有特定的吉凶暗示力。我们的生活几乎不离号码，如身份证号码、身份证号码凶吉预测其实包含有一定的吉凶数理，电话号码测吉凶看结果就像姓名会影响运势命运的意义是一样的</p>
                     </div>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                <form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" method="post">
                                    <input type="hidden" name="ac" value="shenfenzheng" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="391" />  
									<input type="text" name="xian" id="shenfenzheng_haoma_num" value="" class="ipt_text"/>
									<button class="btn_orange_1" type="submit">身份证测吉凶</button>
                                    </form>
								</div>
							</div>
						</div>
					</div>
                    <?php if ($this->_tpl_vars['xian'] != '' && $this->_tpl_vars['sfz']['DQ'] != ''): ?>
            <div class="result_area">
                <p><strong>所查号码：</strong><span><?php echo $this->_tpl_vars['xian']; ?>
</span></p>

                 <p><strong>原户籍地：</strong><span><?php echo $this->_tpl_vars['sfz']['DQ']; ?>
</span></p>

                <p><strong>性别：</strong><span><?php echo $this->_tpl_vars['xb']; ?>
</span></p>

                <p><?php echo $this->_tpl_vars['sfzjie']['content']; ?>
</p>
            </div>
           <?php endif; ?>  
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

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
