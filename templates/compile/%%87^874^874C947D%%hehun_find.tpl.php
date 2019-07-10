<?php /* Smarty version 2.6.25, created on 2019-07-01 18:11:17
         compiled from index/peidui/hehun_find.tpl */ ?>
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
static/bazi/css/suanming/v2/hehun.css"/>
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
            
				<div class="mod_box_t1 fn_part fn_hehun fn_hehun_result">

					<div class="hd">

						<h1>八字合婚</h1>

					</div>

					<div class="bd">

						<div class="intro_area">
                      <p>合婚又称"合年命"、"合八字"，古称"卜吉"。八字合婚是中国传统婚配预测方法之一，有着悠久的历史文化渊源；依据传统的八字合婚算命命理，用生辰八字对两人进行八字合婚,合婚算命，预测两人发展结果，防患不幸的婚姻于未燃之际，从而提高婚姻质量。</p>

						</div>

						<div class="mod_box_t3 fn_box">

							<div class="box_con">

								<div class="cur_info">

								</div>

								<h4 class="cut_tit">男命解析</h4>
                                
								<p class="person_info">

									<span>姓名：<strong><?php echo $this->_tpl_vars['data']['name']; ?>
</strong></span>

									<span>出生地时间（公历）：<strong><?php echo $this->_tpl_vars['data']['gongli1']; ?>
</strong></span><br>

									<span>生肖属：<strong><?php echo $this->_tpl_vars['data']['shengxiao1']; ?>
</strong><a target="_blank" href="http://www.bazi5.com/sxyc/">运势</a></span>

									<span>命宫为：<strong><?php echo $this->_tpl_vars['data']['m_n']; ?>
</strong></span>

									<span>头胎为：<strong><?php echo $this->_tpl_vars['data']['erzi']; ?>
</strong></span>

								</p>

								<div class="info_table">

									<table class="tableA">

										<tbody>

											<tr>

												<th width="100" rowspan="3" class="cBrown">旬空：</th>

												<td width="101" class="cBlue">十神：</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['shishen1']; ?>
</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['shishen2']; ?>
</td>

												<td class="cBlue">日主：</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['rizhu1']; ?>
</td>

											</tr>

											<tr>

												<td class="cRed">乾造：</td>

												<?php echo $this->_tpl_vars['data']['qianzao1']; ?>


											</tr>

											<tr>

												<td>支十神：</td>

												<?php echo $this->_tpl_vars['data']['zhishishen1']; ?>

                                                
											</tr>

										</tbody>

									</table>

									<table class="tableB">

										<tbody>

											<tr>

												<th width="100">十神：</th>

                                                        <?php echo $this->_tpl_vars['data']['shishen_for1']; ?>


                                                </tr>

											

										</tbody>

										<tfoot>

											<tr>

												<td colspan="9"> 您属于：<?php echo $this->_tpl_vars['data']['m_na']; ?>
四命，宜住<?php echo $this->_tpl_vars['data']['m_na']; ?>
四宅的房子为最佳，最佳坐向：<?php echo $this->_tpl_vars['data']['m_nfw']; ?>
</td>

											</tr>

										</tfoot>

									</table>

								</div>

								<div class="form_line"></div>

								<h4 class="cut_tit">女命解析</h4>

								<p class="person_info">

									<span>姓名：<strong><?php echo $this->_tpl_vars['data']['name_a']; ?>
</strong></span>

									<span>出生地时间（公历）：<strong><?php echo $this->_tpl_vars['data']['gongli2']; ?>
</strong></span><br>

									<span>生肖属：<strong><?php echo $this->_tpl_vars['data']['shengxiao2']; ?>
</strong><a target="_blank" href="/shengxiao/">运势</a></span>

									<span>命宫为：<strong><?php echo $this->_tpl_vars['data']['m_v']; ?>
</strong></span>

									<span>头胎为：<strong><?php echo $this->_tpl_vars['data']['erzi_a']; ?>
</strong></span>

								</p>

								<div class="info_table">

									<table class="tableA">

										<tbody>

											<tr>

												<th width="100" rowspan="3" class="cBrown">旬空：</th>

												<td width="101" class="cBlue">十神：</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['shishenb1']; ?>
</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['shishenb2']; ?>
</td>

												<td class="cBlue">日主：</td>

												<td class="cBlue"><?php echo $this->_tpl_vars['data']['rizhu2']; ?>
</td>

											</tr>

											<tr>

												<td class="cRed">坤造：</td>

                                                    <?php echo $this->_tpl_vars['data']['qianzao2']; ?>


                                                </tr>

											<tr>

												<td>支十神：</td>

                                                    <?php echo $this->_tpl_vars['data']['zhishishen2']; ?>


                                                </tr>

										</tbody>

									</table>

									<table class="tableB">

										<tbody>

											<tr>

												<th width="100">十神：</th>

                                                    <?php echo $this->_tpl_vars['data']['shishen_for2']; ?>


                                            </tr>

											

										</tbody>

										<tfoot>

											<tr>

												<td colspan="9">您属于： <?php echo $this->_tpl_vars['data']['m_va']; ?>
四命，宜住<?php echo $this->_tpl_vars['data']['m_va']; ?>
四宅的房子为最佳，最佳坐向：<?php echo $this->_tpl_vars['data']['m_vfw']; ?>
</td>

											</tr>

										</tfoot>

									</table>

								</div>

							</div>

							

						</div>



						<div class="mod_box_t3 mt10 fn_box">

							<div class="box_con">

								<dl class="hehun_result_dl">

									<dt><h4 class="cut_tit">八字合婚结果如下：</h4></dt>

									<dd>

										<h5>命宫：<?php echo $this->_tpl_vars['data']['bb']; ?>
 分</h5>

										<p>此项为30分 说明：以东四命与西四命之说来合，如果相合，那么在购房时，应买与自己命宫相合的房子。</p>

										<h5>年支同气：<?php echo $this->_tpl_vars['data']['c']; ?>
 分</h5>

										<p>此项为20分 说明：如寅卯辰会东方木气，虎兔龙结合的机缘就大于其它属相；巳午未会南方火气，蛇马羊结合的机缘就大于其它属相；申酉戌会西方金气，猴鸡狗结合的机缘就大于其它属相；亥子丑会北方水气，猪鼠牛结合的机缘就大于其它属相。</p>

										<h5>月令合：<?php echo $this->_tpl_vars['data']['yh']; ?>
 分</h5>

										<p>此项为5分 说明：男女生月相同者互相间也是很有缘份的。</p>

										<h5>日干相合：<?php echo $this->_tpl_vars['data']['rrh']; ?>
 分</h5>

										<p>此项为25分 说明：谓日干舒配得所？日干五行相同，一阴一阳的组合男女结合的机缘最大，如甲日干逢乙日干，庚日干逢辛日干之类。</p>

										<h5>天干五合：<?php echo $this->_tpl_vars['data']['rh']; ?>
 分</h5>

										<p>此项为5分 说明：其次是天干五合，如甲日干逢己日干，庚日干逢乙日干之类。再次则是比和或相生。</p>

										<h5>子女同步：<?php echo $this->_tpl_vars['data']['ez']; ?>
 分</h5>

										<p>此项为15分 说明：何谓子女同步？西方的科学家在探索男女结合的奥秘时提出了 " 性染色体论 " ，我们东方人在四柱预测中看头胎子女的性别，男女双方的八字中头胎子女的性别必须一致。</p>

										<p><strong class="cRed">总分：<?php echo $this->_tpl_vars['data']['zongfen']; ?>
 分</strong></p>
                                        
                                        <p><a href="<?php echo $this->_tpl_vars['web_url']; ?>
peidui/hehun/" class="a_retest">重新测算</a></p>

									</dd>

								</dl>

								

							</div>

							

						</div>

					</div>

					

				</div>
                
              	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => './index/public/left_hotnav.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
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
