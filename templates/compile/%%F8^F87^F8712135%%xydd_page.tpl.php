<?php /* Smarty version 2.6.25, created on 2019-07-04 15:25:11
         compiled from ffsm/xydd_page.tpl */ ?>
<?php $_from = $this->_tpl_vars['xydd_all']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['intk'] => $this->_tpl_vars['val']):
?>
<?php if ($this->_tpl_vars['val']['id'] > 0): ?>
             <li>
              <div class="left">
               <img src="/statics/ffsm/xydd/images/light/<?php echo $this->_tpl_vars['val']['lantern_img']; ?>
" alt="" />
              </div>
              <div class="auto">
               <h5>
                <!-- react-text: 2851 -->
				<?php echo $this->_tpl_vars['val']['username']; ?>

				
                <!-- /react-text -->
                <!-- react-text: 2852 -->：
                <!-- /react-text --></h5>
               <div class="hope-content">
                <p><?php echo $this->_tpl_vars['val']['yuanwang']; ?>
</p>
               </div>
               <div class="other clear">
                <div class="wish-btn right wtqf_ck" data-id="<?php echo $this->_tpl_vars['val']['id']; ?>
">
                 为Ta祈福
                </div>
                <div class="count-desc auto">
                 <p>
                  <!-- react-text: 2859 -->已有
                  <!-- /react-text --><span id="id_<?php echo $this->_tpl_vars['val']['id']; ?>
"><?php echo $this->_tpl_vars['val']['qfdj']; ?>
</span>
                  <!-- react-text: 2861 -->人为Ta祈福
                  <!-- /react-text --></p>
                </div>
               </div>
              </div></li>
			  <?php endif; ?>
 <?php endforeach; endif; unset($_from); ?>