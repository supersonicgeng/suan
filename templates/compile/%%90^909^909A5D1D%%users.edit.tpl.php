<?php /* Smarty version 2.6.25, created on 2019-07-04 10:54:54
         compiled from admin/users.edit.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('myblock', 'lurd_list', 'admin/users.edit.tpl', 26, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script language='javascript'>
    function checkpass()
    {
        if( document.form1.userpwd.value == document.form1.userpwdok.value)
        {
            document.getElementById('pwdtest').innerHTML = "";
            return true;
        }
        else
        {
            document.getElementById('pwdtest').innerHTML = "[两次输入密码效验不正确！]";
            return false;
        }
    }
    function done_purview( gurl )
    {
        parent.location.href = gurl;
        parent.ref_parent = false;
        parent.tb_remove();
    }
</script>

<div style="width:550px;margin:auto;padding:auto">
<form name="form1" action="?ct=users&ac=index&even=saveedit&tb=users" method="POST" onsubmit="return checkpass()" enctype="multipart/form-data">
<?php  $lurd_list = smarty_myblock_lurd_list(array('item' => 'v'), $this);
foreach( $lurd_list as $this->_tpl_vars['key']=>$this->_tpl_vars['v'] )
{
?>
<input type="hidden" name="uid" value="<?php echo $this->_tpl_vars['v']['uid']; ?>
" />
<table class="form">
<tr>
  <th>用户账号：</th>
  <td>
    <?php echo $this->_tpl_vars['v']['user_name']; ?>

  </td>
</tr>
<tr>
  <th>用户昵称：</th>
  <td>
    <?php echo $this->_tpl_vars['v']['nickname']; ?>

  </td>
</tr>
<tr>
  <th>用户密码：</th>
  <td>
    <input type='input' name='userpwd' id='userpwd' class="text" value='' onchange='checkpass()' />
    <span>(必须大于6位)</span>
  </td>
</tr>
<tr>
  <th>确认密码：</th>
  <td>
    <input type='input' name='userpwdok' id='userpwdok' class="text" value='' onchange='checkpass()' />
    <span id='pwdtest' style='color:red'></span>
  </td>
</tr>
<tr>
  <th>用户上级ID：</th>
  <td>
    <input type='text' name='sd_uid' id='sd_uid' class="text" value='<?php echo $this->_tpl_vars['v']['sd_uid']; ?>
'  />
    <span>(必须数字，填0为没有上级)</span>
  </td>
</tr>
  <tr>
  <th>提成比例：</th>
  <td>
    <input type='text' name='dl_tcbl' id='dl_tcbl' class="text" value='<?php echo $this->_tpl_vars['v']['dl_tcbl']; ?>
'  />
  </td>
</tr>
<tr>
  <th></th>
  <td>
    提成比例【提成金额=交易额X（提成比例÷100）】
  </td>
</tr>
<tr>
  <th>未提佣金：</th>
  <td>
    <input type='text' name='dl_syjf' id='dl_syjf' class="text" value='<?php echo $this->_tpl_vars['v']['dl_syjf']; ?>
'  />
    <span>(必须小于或等于全部佣金)</span>
  </td>
</tr>
<tr>
  <th>未提佣金：</th>
  <td>
    <input type='text' name='dl_syjf' id='dl_syjf' class="text" value='<?php echo $this->_tpl_vars['v']['dl_syjf']; ?>
'  />
    <span>(必须小于或等于全部佣金)</span>
  </td>
</tr>
<tr>
  <th>全部佣金：</th>
  <td>
    <input type='text' name='dl_zjf' id='dl_zjf' class="text" value='<?php echo $this->_tpl_vars['v']['dl_zjf']; ?>
'  />
    <span></span>
  </td>
</tr>
<tr>
  <th>用户email：</th>
  <td>
    <?php echo $this->_tpl_vars['v']['email']; ?>

   </td>
</tr>
<tr>
  <th>用户组：</th>
  <td>
    <?php $_from = $this->_tpl_vars['cfg_groups']['pools']['admin']['private']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
             <input type='checkbox' name='groups[]' value='admin_<?php echo $this->_tpl_vars['kk']; ?>
' <?php if (preg_match ( "/admin_" . $this->_tpl_vars['kk'] ."/", $this->_tpl_vars['v']['groups'] )): ?> checked='checked'<?php endif; ?> /> <?php echo $this->_tpl_vars['vv']['name']; ?>

    <?php endforeach; endif; unset($_from); ?>
    <hr size='1' />
    <a href='javascript:done_purview("?ct=users&ac=user_purview&uid=<?php echo $this->_tpl_vars['v']['uid']; ?>
");'>[为此用户设置独立权限]</a>
  </td>
</tr>


  <td colspan='2' align='center' height='60'>
      <button type="submit">保存</button> &nbsp;&nbsp;&nbsp;
      <button type="reset">重设</button>
  </td>
</tr>
</table>
<?php  }  ?>
</form>
</div>

</body>
</html>