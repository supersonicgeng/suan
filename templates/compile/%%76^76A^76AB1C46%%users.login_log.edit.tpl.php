<?php /* Smarty version 2.6.25, created on 2019-07-03 11:15:59
         compiled from admin/users.login_log.edit.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('myblock', 'lurd_list', 'admin/users.login_log.edit.tpl', 13, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> users_login_history -- 修改数据 </title>
<link href='/static/css/frame/admin.css' rel='stylesheet' type='text/css' />
</head>

<body id="rightbody">
<div id="rightmain">
<table width="100%" border="0" cellspacing="1" cellpadding="1">
<form name="form1" action="?ct=users&ac=login_log&even=saveedit&tb=users_login_history" method="POST" enctype="multipart/form-data">
<?php  $lurd_list = smarty_myblock_lurd_list(array('item' => 'v'), $this);
foreach( $lurd_list as $this->_tpl_vars['key']=>$this->_tpl_vars['v'] )
{
?>
    <input type="hidden" name="autoid" value="<?php echo $this->_tpl_vars['v']['autoid']; ?>
" />
<tr>
  <td class='title'>用户id</td>
  <td class='fitem'><input type='input' name='uid' class='txtnumber' value='<?php echo $this->_tpl_vars['v']['uid']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>用户名</td>
  <td class='fitem'><input type='input' name='accounts' class='txt' value='<?php echo $this->_tpl_vars['v']['accounts']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>登录ip</td>
  <td class='fitem'><input type='input' name='loginip' class='txt' value='<?php echo $this->_tpl_vars['v']['loginip']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>登录时间</td>
  <td class='fitem'><input type='input' name='logintime' class='txtnumber' value='<?php echo $this->_tpl_vars['v']['logintime']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>应用池</td>
  <td class='fitem'><input type='input' name='pools' class='txt' value='<?php echo $this->_tpl_vars['v']['pools']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>登录时状态</td>
  <td class='fitem'><input type='input' name='loginsta' class='txtnumber' value='<?php echo $this->_tpl_vars['v']['loginsta']; ?>
' /></td>
</tr>
<tr>
  <td class='title'>用户登录名和ip的hash</td>
  <td class='fitem'><input type='input' name='cli_hash' class='txt' value='<?php echo $this->_tpl_vars['v']['cli_hash']; ?>
' /></td>
</tr>

<?php  }  ?>
<tr>
  <td colspan='2' align='center' height='60'>
    <input type="submit" name="bt1" class="btn" value="保存修改" /> &nbsp;&nbsp;&nbsp;
	  <input type="reset" name="bt1" class="btn" value="重设" />
  </td>
</tr>
</form>
</table>
</div>
</body>
</html>