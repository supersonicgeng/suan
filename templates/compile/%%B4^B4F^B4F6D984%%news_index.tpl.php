<?php /* Smarty version 2.6.25, created on 2019-07-01 18:49:10
         compiled from index/news_index.tpl */ ?>
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
<link href="<?php echo $this->_tpl_vars['web_url']; ?>
static/bazi/css/suanming/v2/dream.css" rel="stylesheet" type="text/css">
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
        <!---->
        <?php $_from = $this->_tpl_vars['self_tid']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
            <div class="mod_box_t2 box_knowledge clearAll <?php if ($this->_tpl_vars['k'] != 0): ?>mt10<?php endif; ?>">
                <div class="hd clearfix">
                    <h3 class="titleLink"><?php echo $this->_tpl_vars['v']['name']; ?>
&nbsp;&nbsp;
                    <?php if ($this->_tpl_vars['v']['id'] == 345): ?>
                    <a href="/list-345-25.html">星座爱情</a><span>|</span><a href="/list-345-26.html">星座性格</a><span>|</span><a href="/list-345-27.html">星座时尚</a><span>|</span><a href="/list-345-28.html">星座开运</a><span>|</span><a href="/list-345-29.html">星座知识</a><span>|</span><a href="/list-345-30.html">星座情感</a><span>|</span><a href="/xingzuo/shangshengxingzuo/" class="cRed">上升星座</a>
                    
                    <?php elseif ($this->_tpl_vars['v']['id'] == 346): ?>
                    <a href="/list-346-31.html">爱情测试</a><span>|</span><a href="/list-346-32.html">性格测试</a><span>|</span><a href="/list-346-33.html">财富测试</a><span>|</span><a href="/list-346-34.html">智商测试</a>
                    
                    <?php elseif ($this->_tpl_vars['v']['id'] == 347): ?>
                    <a href="/list-347-35.html">家居</a><span>|</span><a href="/list-347-36.html">事业</a><span>|</span><a href="/list-347-37.html">爱情</a><span>|</span><a href="/list-347-38.html">灵异</a>
                    
                    <?php elseif ($this->_tpl_vars['v']['id'] == 471): ?>
                    <a href="/list-471-13.html">子鼠</a><span>|</span><a href="/list-471-14.html">丑牛</a><span>|</span><a href="/list-471-15.html">寅虎</a><span>|</span><a href="/list-471-16.html">卯兔</a><span>|</span><a href="/list-471-17.html">辰龙</a><span>|</span><a href="/list-471-18.html">巳蛇</a><span>|</span><a href="/list-471-19.html">午马</a><span>|</span><a href="/list-471-20.html">未羊</a><span>|</span><a href="/list-471-21.html">申猴</a><span>|</span><a href="/list-471-22.html">酉鸡</a><span>|</span><a href="/list-471-23.html">戌狗</a><span>|</span><a href="/list-471-24.html">亥猪</a>
                    <?php endif; ?>
                    
                    </h3>
                    <a class="titleLink_more" href="/list-<?php echo $this->_tpl_vars['v']['id']; ?>
.html">更多&gt;&gt;</a>
                    <i class="flag_l_t2"></i>
                    <i class="flag_r_t2"></i>
                </div>
                <div class="bd">
                    <div class="knowledge_list clearfix">
                        <div class="know_row">
                            <div class="block_left">
                                <div class="k_left">
                                    <?php if ($this->_tpl_vars['v']['data_list']['img']['0']['title'] != ''): ?>
                                        <a href="<?php echo $this->_tpl_vars['v']['data_list']['img']['0']['url']; ?>
" target="_blank">
                                            <img src="<?php echo $this->_tpl_vars['v']['data_list']['img']['0']['img']; ?>
">
                                            <div class="black_gb">
                                                <span class="white_font"><?php echo $this->_tpl_vars['v']['data_list']['img']['0']['title']; ?>
</span>
                                            </div>
                                        </a>
                                    <?php endif; ?>    
                                </div>
                                <div class="k_right">
                                    <ul>
                                    <?php unset($this->_sections['news']);
$this->_sections['news']['loop'] = is_array($_loop=$this->_tpl_vars['v']['data_list']['list']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['news']['name'] = 'news';
$this->_sections['news']['start'] = (int)0;
$this->_sections['news']['max'] = (int)4;
$this->_sections['news']['show'] = true;
if ($this->_sections['news']['max'] < 0)
    $this->_sections['news']['max'] = $this->_sections['news']['loop'];
$this->_sections['news']['step'] = 1;
if ($this->_sections['news']['start'] < 0)
    $this->_sections['news']['start'] = max($this->_sections['news']['step'] > 0 ? 0 : -1, $this->_sections['news']['loop'] + $this->_sections['news']['start']);
else
    $this->_sections['news']['start'] = min($this->_sections['news']['start'], $this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] : $this->_sections['news']['loop']-1);
if ($this->_sections['news']['show']) {
    $this->_sections['news']['total'] = min(ceil(($this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] - $this->_sections['news']['start'] : $this->_sections['news']['start']+1)/abs($this->_sections['news']['step'])), $this->_sections['news']['max']);
    if ($this->_sections['news']['total'] == 0)
        $this->_sections['news']['show'] = false;
} else
    $this->_sections['news']['total'] = 0;
if ($this->_sections['news']['show']):

            for ($this->_sections['news']['index'] = $this->_sections['news']['start'], $this->_sections['news']['iteration'] = 1;
                 $this->_sections['news']['iteration'] <= $this->_sections['news']['total'];
                 $this->_sections['news']['index'] += $this->_sections['news']['step'], $this->_sections['news']['iteration']++):
$this->_sections['news']['rownum'] = $this->_sections['news']['iteration'];
$this->_sections['news']['index_prev'] = $this->_sections['news']['index'] - $this->_sections['news']['step'];
$this->_sections['news']['index_next'] = $this->_sections['news']['index'] + $this->_sections['news']['step'];
$this->_sections['news']['first']      = ($this->_sections['news']['iteration'] == 1);
$this->_sections['news']['last']       = ($this->_sections['news']['iteration'] == $this->_sections['news']['total']);
?>
                                        <li><i class="i-point"></i><a href="<?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['title']; ?>
</a></li>
                                    <?php endfor; endif; ?>  
                                    </ul>
                                </div>
                            </div>
                            <div class="block_right">
                                <div class="k_left">
                                    <?php if ($this->_tpl_vars['v']['data_list']['img']['1']['title'] != ''): ?>
                                        <a href="<?php echo $this->_tpl_vars['v']['data_list']['img']['1']['url']; ?>
" target="_blank">
                                            <img src="<?php echo $this->_tpl_vars['v']['data_list']['img']['1']['img']; ?>
">
                                            <div class="black_gb">
                                                <span class="white_font"><?php echo $this->_tpl_vars['v']['data_list']['img']['1']['title']; ?>
</span>
                                            </div>
                                        </a>
                                    <?php endif; ?>  
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <?php unset($this->_sections['news']);
$this->_sections['news']['loop'] = is_array($_loop=$this->_tpl_vars['v']['data_list']['list']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['news']['name'] = 'news';
$this->_sections['news']['start'] = (int)4;
$this->_sections['news']['max'] = (int)4;
$this->_sections['news']['show'] = true;
if ($this->_sections['news']['max'] < 0)
    $this->_sections['news']['max'] = $this->_sections['news']['loop'];
$this->_sections['news']['step'] = 1;
if ($this->_sections['news']['start'] < 0)
    $this->_sections['news']['start'] = max($this->_sections['news']['step'] > 0 ? 0 : -1, $this->_sections['news']['loop'] + $this->_sections['news']['start']);
else
    $this->_sections['news']['start'] = min($this->_sections['news']['start'], $this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] : $this->_sections['news']['loop']-1);
if ($this->_sections['news']['show']) {
    $this->_sections['news']['total'] = min(ceil(($this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] - $this->_sections['news']['start'] : $this->_sections['news']['start']+1)/abs($this->_sections['news']['step'])), $this->_sections['news']['max']);
    if ($this->_sections['news']['total'] == 0)
        $this->_sections['news']['show'] = false;
} else
    $this->_sections['news']['total'] = 0;
if ($this->_sections['news']['show']):

            for ($this->_sections['news']['index'] = $this->_sections['news']['start'], $this->_sections['news']['iteration'] = 1;
                 $this->_sections['news']['iteration'] <= $this->_sections['news']['total'];
                 $this->_sections['news']['index'] += $this->_sections['news']['step'], $this->_sections['news']['iteration']++):
$this->_sections['news']['rownum'] = $this->_sections['news']['iteration'];
$this->_sections['news']['index_prev'] = $this->_sections['news']['index'] - $this->_sections['news']['step'];
$this->_sections['news']['index_next'] = $this->_sections['news']['index'] + $this->_sections['news']['step'];
$this->_sections['news']['first']      = ($this->_sections['news']['iteration'] == 1);
$this->_sections['news']['last']       = ($this->_sections['news']['iteration'] == $this->_sections['news']['total']);
?>
                                        	<li><i class="i-point"></i><a href="<?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['title']; ?>
</a></li>
                                    	<?php endfor; endif; ?>  
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clear_both"></div>
                        <div class="know_row top_dash">
                            <div class="block_left">
                                <div class="k_left">
                                    <?php if ($this->_tpl_vars['v']['data_list']['img']['2']['title'] != ''): ?>
                                        <a href="<?php echo $this->_tpl_vars['v']['data_list']['img']['2']['url']; ?>
" target="_blank">
                                            <img src="<?php echo $this->_tpl_vars['v']['data_list']['img']['2']['img']; ?>
">
                                            <div class="black_gb">
                                                <span class="white_font"><?php echo $this->_tpl_vars['v']['data_list']['img']['2']['title']; ?>
</span>
                                            </div>
                                        </a>
                                    <?php endif; ?> 
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <?php unset($this->_sections['news']);
$this->_sections['news']['loop'] = is_array($_loop=$this->_tpl_vars['v']['data_list']['list']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['news']['name'] = 'news';
$this->_sections['news']['start'] = (int)8;
$this->_sections['news']['max'] = (int)4;
$this->_sections['news']['show'] = true;
if ($this->_sections['news']['max'] < 0)
    $this->_sections['news']['max'] = $this->_sections['news']['loop'];
$this->_sections['news']['step'] = 1;
if ($this->_sections['news']['start'] < 0)
    $this->_sections['news']['start'] = max($this->_sections['news']['step'] > 0 ? 0 : -1, $this->_sections['news']['loop'] + $this->_sections['news']['start']);
else
    $this->_sections['news']['start'] = min($this->_sections['news']['start'], $this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] : $this->_sections['news']['loop']-1);
if ($this->_sections['news']['show']) {
    $this->_sections['news']['total'] = min(ceil(($this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] - $this->_sections['news']['start'] : $this->_sections['news']['start']+1)/abs($this->_sections['news']['step'])), $this->_sections['news']['max']);
    if ($this->_sections['news']['total'] == 0)
        $this->_sections['news']['show'] = false;
} else
    $this->_sections['news']['total'] = 0;
if ($this->_sections['news']['show']):

            for ($this->_sections['news']['index'] = $this->_sections['news']['start'], $this->_sections['news']['iteration'] = 1;
                 $this->_sections['news']['iteration'] <= $this->_sections['news']['total'];
                 $this->_sections['news']['index'] += $this->_sections['news']['step'], $this->_sections['news']['iteration']++):
$this->_sections['news']['rownum'] = $this->_sections['news']['iteration'];
$this->_sections['news']['index_prev'] = $this->_sections['news']['index'] - $this->_sections['news']['step'];
$this->_sections['news']['index_next'] = $this->_sections['news']['index'] + $this->_sections['news']['step'];
$this->_sections['news']['first']      = ($this->_sections['news']['iteration'] == 1);
$this->_sections['news']['last']       = ($this->_sections['news']['iteration'] == $this->_sections['news']['total']);
?>
                                        	<li><i class="i-point"></i><a href="<?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['title']; ?>
</a></li>
                                    	<?php endfor; endif; ?>  
                                    </ul>
                                </div>
                            </div>
                            <div class="block_right">
                                <div class="k_left">
                                    <?php if ($this->_tpl_vars['v']['data_list']['img']['3']['title'] != ''): ?>
                                        <a href="<?php echo $this->_tpl_vars['v']['data_list']['img']['3']['url']; ?>
" target="_blank">
                                            <img src="<?php echo $this->_tpl_vars['v']['data_list']['img']['3']['img']; ?>
">
                                            <div class="black_gb">
                                                <span class="white_font"><?php echo $this->_tpl_vars['v']['data_list']['img']['3']['title']; ?>
</span>
                                            </div>
                                        </a>
                                    <?php endif; ?> 
                                </div>
                                <div class="k_right">
                                    <ul>
                                        <?php unset($this->_sections['news']);
$this->_sections['news']['loop'] = is_array($_loop=$this->_tpl_vars['v']['data_list']['list']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['news']['name'] = 'news';
$this->_sections['news']['start'] = (int)12;
$this->_sections['news']['max'] = (int)4;
$this->_sections['news']['show'] = true;
if ($this->_sections['news']['max'] < 0)
    $this->_sections['news']['max'] = $this->_sections['news']['loop'];
$this->_sections['news']['step'] = 1;
if ($this->_sections['news']['start'] < 0)
    $this->_sections['news']['start'] = max($this->_sections['news']['step'] > 0 ? 0 : -1, $this->_sections['news']['loop'] + $this->_sections['news']['start']);
else
    $this->_sections['news']['start'] = min($this->_sections['news']['start'], $this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] : $this->_sections['news']['loop']-1);
if ($this->_sections['news']['show']) {
    $this->_sections['news']['total'] = min(ceil(($this->_sections['news']['step'] > 0 ? $this->_sections['news']['loop'] - $this->_sections['news']['start'] : $this->_sections['news']['start']+1)/abs($this->_sections['news']['step'])), $this->_sections['news']['max']);
    if ($this->_sections['news']['total'] == 0)
        $this->_sections['news']['show'] = false;
} else
    $this->_sections['news']['total'] = 0;
if ($this->_sections['news']['show']):

            for ($this->_sections['news']['index'] = $this->_sections['news']['start'], $this->_sections['news']['iteration'] = 1;
                 $this->_sections['news']['iteration'] <= $this->_sections['news']['total'];
                 $this->_sections['news']['index'] += $this->_sections['news']['step'], $this->_sections['news']['iteration']++):
$this->_sections['news']['rownum'] = $this->_sections['news']['iteration'];
$this->_sections['news']['index_prev'] = $this->_sections['news']['index'] - $this->_sections['news']['step'];
$this->_sections['news']['index_next'] = $this->_sections['news']['index'] + $this->_sections['news']['step'];
$this->_sections['news']['first']      = ($this->_sections['news']['iteration'] == 1);
$this->_sections['news']['last']       = ($this->_sections['news']['iteration'] == $this->_sections['news']['total']);
?>
                                        	<li><i class="i-point"></i><a href="<?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['v']['data_list']['list'][$this->_sections['news']['index']]['title']; ?>
</a></li>
                                    	<?php endfor; endif; ?>  
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         <?php endforeach; endif; unset($_from); ?>   
        <!---->
        


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
