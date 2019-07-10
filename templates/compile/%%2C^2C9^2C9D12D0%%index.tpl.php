<?php /* Smarty version 2.6.25, created on 2019-07-01 18:46:33
         compiled from index/huangli/index.tpl */ ?>
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
static/bazi/css/suanming/v2/hdjr.css"/>
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
<div class="mod_2b">
        <h2><img src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/img/life/icon_huangli.png">黄历查询</h2>
        <p class="description">提供最专业的黄历查询，覆盖吉凶宜忌、冲煞、吉神凶煞、值日、胎神、财神喜神福神方位等信息。</p>
        <div class="life clearfix" id="cx">
          <div class="col_b">
          <form action="<?php echo $this->_tpl_vars['web_url']; ?>
index.php" method="post">
          <input type="hidden" name="ct" value="hdjr" />
          <input type="hidden" name="ac" value="index" />
          <input type="hidden" name="tid" value="363" />
            <div class="data_search huangli_search clearfix">
              <div class="lbox"> <strong class="fl">公历/阳历</strong>
                <div class="select_outer select_outer62">
                  <div class="select_inner">
                    <select id="s_year" name="y" onChange="changeMonthDay(0)">
                     <?php echo $this->_tpl_vars['ymd_arr']['y']; ?>

                    </select>
                  </div>
                </div>
                <span class="fl">年</span>
                <div class="select_outer select_outer50">
                  <div class="select_inner">
                    <select id="s_month" name="n" onChange="changeMonthDay(0)">
                     <?php echo $this->_tpl_vars['ymd_arr']['m']; ?>

                    </select>
                  </div>
                </div>
                <span class="fl">月</span>
                <div class="select_outer select_outer50">
                  <div class="select_inner">
                    <select name="j" id='s_day'>
                                       <?php echo $this->_tpl_vars['ymd_arr']['d']; ?>

                                       </select>
                  </div>
                </div>
                <span class="fl">日</span>
                <div class="clear"></div>
              </div>
              <div class="md fl">
              <input class="selt_btn" type="submit" value="查  询">
              </div>
            </div>
            </form>
            <div class="data_result mt10">
              <table class="data_table mt10">
                <thead>
                  <tr>
                    <th colspan="4">
                      <div class="thead_th thead_th_deep">
                        <div class="thead_th_rt"></div>
                        <div class="thead_th_lt"></div>
                        <strong id="dateInfo">今日黄历</strong>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th width="98">公历/阳历</th>
                    <td width="290" id="gongli"><?php echo $this->_tpl_vars['hdjr']['gongli']; ?>
</td>
                    <th width="110">农历/阴历</th>
                    <td width="290" id="nongli"><?php echo $this->_tpl_vars['hdjr']['nongli']; ?>
</td>
                  </tr>
                  <tr>
                    <th id="dao_title" class="bg_light"> <em id="c_Class" class="c_light">节日</em>
                    </th>
                    <td id="dao_content" class="bg_light"><?php echo $this->_tpl_vars['hdjr']['jieri']; ?>
</td>
                    <th>彭祖百忌</th>
                    <td id="start"><?php echo $this->_tpl_vars['hdjr']['baiji']; ?>
</td>
                  </tr>
                  <tr>
                    <th>
                      <div class="luck_th"></div>
                    </th>
                    <td colspan="3">
                      <div id="yishi" class="luck_td"><?php if ($this->_tpl_vars['hdjr']['yi'] != '-'): ?><?php echo $this->_tpl_vars['hdjr']['yi']; ?>
<?php else: ?>诸事不宜<?php endif; ?></div>
                    </td>
                  </tr>
                  <tr>
                    <th>
                      <div class="bad_th"></div>
                    </th>
                    <td colspan="3">
                      <div id="jishi" class="bad_td"><?php if ($this->_tpl_vars['hdjr']['ji'] != '-'): ?><?php echo $this->_tpl_vars['hdjr']['ji']; ?>
<?php else: ?>诸事勿取<?php endif; ?></div>
                    </td>
                  </tr>
                  <tr>
                    <th>
                      <div class="nowell_th"></div>
                    </th>
                    <td>
                      <div id="chong" class="nowell_td"><?php echo $this->_tpl_vars['hdjr']['chong']; ?>
</div>
                    </td>
                    <th>凶神宜忌</th>
                    <td id="xs"><?php echo $this->_tpl_vars['hdjr']['xiongshen']; ?>
</td>
                  </tr>
                  <tr>
                    <th class="bg_light">吉神宜趋</th>
                    <td><?php echo $this->_tpl_vars['hdjr']['jishen']; ?>
</td>
                    <th class="bg_light">纪念日</th>
                    <td ><?php echo $this->_tpl_vars['hdjr']['jinianri']; ?>
</td>
                  </tr>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="4">
                      <dl>
                        <dt>岁次</dt>
                        <dd id="suici"><?php echo $this->_tpl_vars['hdjr']['suici']; ?>
</dd>
                        <dt>五行</dt>
                        <dd id="wuxing"><?php echo $this->_tpl_vars['hdjr']['wuxing']; ?>
</dd>
                        <dt class="god_child"> <i></i>胎神 </dt>
                        <dd id="taishen" class="last"><?php echo $this->_tpl_vars['hdjr']['taishen']; ?>
</dd>
                      </dl>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4">
                      <dl>
                        <dt class="god_money"> <i></i>财神</dt>
                        <dd id="cai" style="color:#F00; font-size:16px;"><?php echo $this->_tpl_vars['hdjr']['caishen']; ?>
(<a href="<?php echo $this->_tpl_vars['web_url']; ?>
list-347.html" title="今日财神方位">财神方位</a>)</dd>
                        <dt class="god_happy"><i></i>喜神</dt>
                        <dd id="xi"><?php echo $this->_tpl_vars['hdjr']['xishen']; ?>
</dd>
                        <dt class="god_luck"><i></i>福神</dt>
                        <dd id="fu" class="last"><?php echo $this->_tpl_vars['hdjr']['fushen']; ?>
</dd>
                      </dl>
                    </td>
                  </tr>
                </tfoot>
              </table>
            </div>
            <div class="relatedTool">
              <h3>相关工具</h3>
              <table class="relatedTool_table">
                <tbody>
                  <?php $_from = $this->_tpl_vars['hand']['hdjr_bot_link']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                      <?php if ($this->_tpl_vars['k'] == 0): ?>
                         <tr>
                      <?php endif; ?>
                    <th width="20%">
                      <a <?php if ($this->_tpl_vars['v']['blank'] == 1): ?>target="_blank"<?php endif; ?> href="<?php echo $this->_tpl_vars['v']['url']; ?>
" <?php if ($this->_tpl_vars['v']['color'] == 1): ?>class="cRed"<?php elseif ($this->_tpl_vars['v']['color'] == 2): ?>class="cGreen"<?php elseif ($this->_tpl_vars['v']['color'] == 3): ?>class="cBlue"<?php endif; ?> title="<?php echo $this->_tpl_vars['v']['title']; ?>
"><?php echo $this->_tpl_vars['v']['title']; ?>
</a>
                    </th>
                      <?php if ($this->_tpl_vars['k'] == 4): ?>
                      </tr>
                      <tr>
                      <?php endif; ?> 
                      
                      <?php if ($this->_tpl_vars['k'] == 9): ?>
                      </tr>
                      <?php endif; ?>
                   
                  <?php endforeach; endif; unset($_from); ?> 

                </tbody>

              </table>

            </div>
          </div>
        </div>
      </div>
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/js/huangli.js"></script>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
