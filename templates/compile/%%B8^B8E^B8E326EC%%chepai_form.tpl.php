<?php /* Smarty version 2.6.25, created on 2019-07-09 16:07:59
         compiled from index/haoma/chepai_form.tpl */ ?>
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
<style>
.chepai{float:left;padding-top: 47px;padding-left: 47px;}
</style>
<div class="col_left">
				<!-- 手机号码吉凶 begin -->
				<div class="fn_cp fn_part mod_box_t1">
					<div class="hd">
						<h1>车牌号码吉凶</h1>
					</div>
					<div class="bd">
                    <?php if ($this->_tpl_vars['word'] != ''): ?>
                    <div class="result_area">
						<p>
							<strong>所查号码：</strong><span><?php echo $this->_tpl_vars['word']; ?>
</span>
						</p>
						<p>
							<strong>吉凶分析：</strong><span><em class="bad">(<?php echo $this->_tpl_vars['haomajx']['jx']; ?>
)</em></span>
						</p>
						<p>
							<strong>主人个性：</strong><span><?php echo $this->_tpl_vars['haomajx']['content']; ?>
</span>
						</p>
					</div>
                    <?php endif; ?>
						<div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                  <form name="theform" onSubmit="return che2Cha('chepai');" method="post" action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php">
									<div class="chepai">
									<div class="st_outer">
										<div class="st_inner">
											<select id="cp_dq" name="dq">
												<option value='京' selected>京</option>
												<option value='津'>津</option>
												<option value='沪'>沪</option>
												<option value='渝'>渝</option>
												<option value='冀'>冀</option>
												<option value='豫'>豫</option>
												<option value='云'>云</option>
												<option value='辽'>辽</option>
												<option value='黑'>黑</option>
												<option value='湘'>湘</option>
												<option value='皖'>皖</option>
												<option value='鲁'>鲁</option>
												<option value='新'>新</option>
												<option value='苏'>苏</option>
												<option value='浙'>浙</option>
												<option value='赣'>赣</option>
												<option value='鄂'>鄂</option>
												<option value='桂'>桂</option>
												<option value='甘'>甘</option>
												<option value='晋'>晋</option>
												<option value='蒙'>蒙</option>
												<option value='陕'>陕</option>
												<option value='吉'>吉</option>
												<option value='闽'>闽</option>
												<option value='贵'>贵</option>
												<option value='粤'>粤</option>
												<option value='青'>青</option>
												<option value='藏'>藏</option>
												<option value='川'>川</option>
												<option value='宁'>宁</option>
												<option value='琼'>琼</option>
											</select>
										</div>
									</div>
									<div class="st_outer">
										<div class="st_inner">
											<select id="cp_zm" name="zm">
												<option value='A' selected>A</option>
												<option value='B'>B</option>
												<option value='C'>C</option>
												<option value='D'>D</option>
												<option value='E'>E</option>
												<option value='F'>F</option>
												<option value='G'>G</option>
												<option value='H'>H</option>
												<option value='I'>I</option>
												<option value='J'>J</option>
												<option value='K'>K</option>
												<option value='L'>L</option>
												<option value='M'>M</option>
												<option value='N'>N</option>
												<option value='O'>O</option>
												<option value='P'>P</option>
												<option value='Q'>Q</option>
												<option value='R'>R</option>
												<option value='S'>S</option>
												<option value='T'>T</option>
												<option value='U'>U</option>
												<option value='V'>V</option>
												<option value='W'>W</option>
												<option value='X'>X</option>
												<option value='Y'>Y</option>
												<option value='Z'>Z</option>
											</select>
										</div>
									</div>
                                    </div>
                                    <input type="hidden" name="ac" value="chepai" />
                                    <input type="hidden" name="ct" value="haoma" />
                                    <input type="hidden" name="tid" value="393" />
									<input type="text" name="word" id="chepai_haoma_num" style="color:#000;" class="ipt_text"/>
                                    <input class="btn_orange_1" type="submit" value="查询">
									
                                    </form>
									<div class="remark clearAll">
										（请选择地域后输入5位车牌号码）
									</div>
								</div>
								<div class="help_area">
									
								</div>
							</div>
						</div>
						<div class="intro_area">
							<p>传说中，数字是一种符号，人们经常随身携带的符号则具有特定的暗示力。我们的生活几乎离不号码，如电话号码、手机号码、车牌号码等。其实号码也包含有一定的吉凶数理，这就像姓名会影响运势命运的意义是一样的。</p>
							<p>车牌号码吉凶：车牌号码可以自己选择了，这标志着社会的进步，车牌号码都愿意选个吉利号，好的号码象征着人的身份，但实际的好与坏，得要看更深一层的涵义！</p>
						</div>
					</div>
                    <script type="text/javascript">
					function che2Cha(t)
{
  var num = document.getElementById(t+'_haoma_num').value;
  var diqu = document.getElementById('cp_dq').value;
  var zimu = document.getElementById('cp_zm').value;
  var flag = chkNum['chkchepai'](num);
  if(false == flag)
  {
    alert('请输入正确的号码');
    return false;
  }
  location.href="/haoma/"+t+"/"+diqu+"-"+zimu+"-"+num;
}
var chkNum = {
  chkqq:function(num)
  {
    if(num.search(/^[1-9]\d{4,12}$/) == -1)
    {
      return false;
    }
    return true;
  },
  chkshouji:function(num)
  {
    if(num.search(/^[1-9]\d{10}$/) == -1)
    {
      return false;
    }
    return true;
  },
  chkdianhua:function(num)
  {
    if(num.search(/^[1-9]\d{6,7}$/) == -1)
    {
      return false;
    }
    return true;
  },
  
  chkchepai:function(num)
  {
    if(num.search(/^[0-9a-zA-Z]{5}$/) == -1)
    {
      return false;
    }
    return true;
  },
  
  chkshenfenzheng:function(num)
  {
    if(num.search(/^[1-9](\d{14}|\d{16}[\d|x|X])$/) == -1)
    {
      return false;
    }
    return true;
  }
}
 </script>
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
