<?php /* Smarty version 2.6.25, created on 2019-07-02 09:56:24
         compiled from admin/hand.list.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'admin/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="contents">
    
<dl class="search-class">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/base/filter.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<a href='?ct=<?php echo $this->_tpl_vars['ct']; ?>
&ac=<?php echo $this->_tpl_vars['ac']; ?>
_edit&select_value=<?php echo $this->_tpl_vars['select_value']; ?>
' id='list_add'><input type="button" value="增加" id="add" /></a> 注:若有多位置内容,在<b>描述</b>处用&nbsp;|||&nbsp;隔开;

</dl>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/base/list.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

</body>
</html>
 