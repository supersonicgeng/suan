<?php /* Smarty version 2.6.25, created on 2019-07-01 18:13:30
         compiled from index/minjian/ziwen_form.tpl */ ?>
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
static/bazi/css/suanming/v2/test.css"/>
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
				<div class="mod_box_t1 fn_part fn_suanming_zw">
					<div class="hd">
						<h1>指纹算命</h1>
					</div>
					<div class="bd">
						<div class="intro_area intro_icon">
							<p> 指纹算命是一种根据掌纹的「涡」、「流」状两种不同的手指纹进行判断人的性格和命运倾向。手指纹算命的依据易理所分解
阴、阳的兴致而来，阴为「流形」、阳为「涡形」。指纹算命的基本概念：据研究报告发现，人的性格是与生俱来的，而人的指纹
确是终生不变的。指纹，大致可分为"涡纹"（又叫斗或叫箩）和"流纹"（又叫簸箕）两种。随着形状的不同，其性格和命运也
不相同。根据指纹算命图解，如五指全为涡形，称为「乾纹」，若五指全为「流」形，称为「坤纹」。指纹算命应"男为左手，女
为右手"为准。「涡纹」即指纹整体纹路，呈现似旋涡状，纹路由内一圈一圈向外。「流紋」意指其指纹之纹路是无法成为似旋涡
状的纹路，其指纹纹路呈现似外流的现象。</p>
						</div>
                        
                        <?php if ($this->_tpl_vars['data']['jiexi'] == ''): ?>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" method="post">
                                <input type="hidden" name="ct" value="minjian">
                                <input type="hidden" name="ac" value="zhiwen">
									<div class="mod_form">
										<div class="form_item">
											<ul class="finger_choose">
												<li>
                                                <span>大拇指</span>
												<input type="radio" checked="checked" id="f1_1" name="a" value="o">
												<label for="f1_1">涡纹（斗）</label>
												<input type="radio" id="f1_2" name="a" value="x">
												<label for="f1_2">流纹（簸箕）</label>
												</li>
												<li>
												<span>食指</span>
												<input type="radio" checked="checked" id="f2_1" name="b" value="o">
												<label for="f2_1">涡纹（斗）</label>
												<input type="radio" id="f2_2" name="b" value="x">
												<label for="f2_2">流纹（簸箕）</label>
												</li>
												<li>
												<span>中指</span>
												<input type="radio" checked="checked" id="f3_1" name="c" value="o">
												<label for="f3_1">涡纹（斗）</label>
												<input type="radio" id="f3_2" name="c" value="x">
												<label for="f3_2">流纹（簸箕）</label>
												</li>
												<li>
												<span>无名指</span>
												<input type="radio" checked="checked" id="f4_1" name="d" value="o">
												<label for="f4_1">涡纹（斗）</label>
												<input type="radio" id="f4_2" name="d" value="x">
												<label for="f4_2">流纹（簸箕）</label>
												</li>
												<li>
												<span>小指</span>
												<input type="radio" checked="checked" id="f5_1" name="e" value="o">
												<label for="f5_1">涡纹（斗）</label>
												<input type="radio" id="f5_2" name="e" value="x">
												<label for="f5_2">流纹（簸箕）</label>
												</li>
											</ul>
										</div>
										<div class="form_item btn_item">
											<button class="btn_orange" type="submit" id="btn_begincs">开始算命</button>
										</div>
									</div>
								</form>
							</div>
						</div>
                        <?php else: ?>
                        <div class="mod_box_t3 fn_box fn_box_nobg">
                        <div class="box_con">
                        <div class="finger_result">
                        <p class="first">性格解析：<strong class="cRed"><?php echo $this->_tpl_vars['data']['jiexi']; ?>
</strong></p>
                        </div>
                        </div>
                        
                        </div>
                        <?php endif; ?>
					</div>
<div class="com_title"><p>民间预测</p></div>
<div class="M2_item">
<a href="/minjian/shouxiang/ganqingxian/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/sxtj.png" alt=""></div>
	<div class="name">手相图解</div>
	<div class="miaoshu">有的人壹生窮困潦倒，有的人天生富貴，其中原因有很多，手相圖解可以看出壹個人的富貴貧賤，這是壹種非常古老的算命方法，通過看手掌掌紋，就能了解壹個人的命運。</div>
	<div class="btn"><p>立即测算</p></div>
</a>
<a href="/minjian/zhixiang/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/zxtj.png" alt=""></div>
	<div class="name">痣相图解</div>
	<div class="miaoshu">幾乎每個人臉上都會有痣，不同位置的痣代表的意義也不相同，痣相圖解可以幫助大家了解每顆痣代表的含義，比如長在眼睛下方的是淚痣，代表這個人內心脆弱，妳的痣長在哪裏？代表什麽意義呢？快來測試壹下吧。</div>
	<div class="btn"><p>立即测算</p></div>
</a>
<a href="/minjian/snsn" target="_blank" class="lis">
	<div class="img"><img src="/static/img/snsn.png" alt=""></div>
	<div class="name">生男生女预测</div>
	<div class="miaoshu">雖然現在男女平等，不存在性別歧視，但小孩性別還壹直是很多父母都很關心的問題，從備孕壹直到小孩出生，父母都希望能提前知道小孩的性別，我們爲大家提供的生男生女預測可以讓您提前知道小孩的性別，這是根據生男生女清宮圖來計算的。</div>
	<div class="btn"><p>立即测算</p></div>
</a>
<a href="/minjian/yantiao/" target="_blank" class="lis">
	<div class="img"><img src="/static/img/ypt.png" alt=""></div>
	<div class="name">眼皮跳</div>
	<div class="miaoshu">我們經常會有這樣的感覺，遇到事情之前，眼皮會劇烈跳動，不同時間段代表的意義也不壹樣，我們的眼皮跳測吉凶能幫助大家了解每個時間段眼皮跳的含義，想知道左眼皮跳是什麽征兆？右眼皮跳是什麽征兆？快來眼皮跳測吉凶看看吧。</div>
	<div class="btn"><p>立即测算</p></div>
</a>
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
