<?php /* Smarty version 2.6.25, created on 2019-07-02 14:09:57
         compiled from admin/base/edit.tpl */ ?>
    <?php $_from = $this->_tpl_vars['self_opt']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['so_key'] => $this->_tpl_vars['so_item']):
?>
    <?php if (! empty ( $this->_tpl_vars['tb_column'][$this->_tpl_vars['so_key']] ) && $this->_tpl_vars['so_item']['0'] == 'show'): ?>
<tr>
    <td class='title'><?php echo $this->_tpl_vars['tb_column'][$this->_tpl_vars['so_key']]; ?>
 : </td>
    <td class='fitem'>
    <dd>
<?php if (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'select'): ?>
    <?php if (! empty ( $this->_tpl_vars['so_item']['2'] )): ?>
            <select name="<?php echo $this->_tpl_vars['so_key']; ?>
" id="<?php echo $this->_tpl_vars['so_key']; ?>
">
                <option value="">请选择</option>
                <?php if (! empty ( $this->_tpl_vars['so_item']['3'] ) && $this->_tpl_vars['so_item']['3'] == 2): ?>
                    <?php $_from = $this->_tpl_vars['so_item']['2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['si_key'] => $this->_tpl_vars['si_item']):
?>
                        <optgroup label="<?php echo $this->_tpl_vars['si_key']; ?>
">
                            <?php if (! empty ( $this->_tpl_vars['si_item'] )): ?>
                            <?php $_from = $this->_tpl_vars['si_item']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key1'] => $this->_tpl_vars['item1']):
?>
                                <option value="<?php echo $this->_tpl_vars['key1']; ?>
" <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] ) && $this->_tpl_vars['key1'] == $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]): ?> selected="selected" <?php endif; ?> <?php if ($this->_tpl_vars['so_item']['4']): ?>style="color:<?php echo $this->_tpl_vars['item1']; ?>
"<?php endif; ?>>[<?php echo $this->_tpl_vars['key1']; ?>
]<?php echo $this->_tpl_vars['si_key']; ?>
 : <?php echo $this->_tpl_vars['item1']; ?>
</option>
                            <?php endforeach; endif; unset($_from); ?>
                            <?php endif; ?>
                        </optgroup>
                    <?php endforeach; endif; unset($_from); ?>
                <?php else: ?>
                    <?php $_from = $this->_tpl_vars['so_item']['2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['si_key'] => $this->_tpl_vars['si_item']):
?>
                        <option value="<?php echo $this->_tpl_vars['si_key']; ?>
" <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] ) && $this->_tpl_vars['si_key'] == $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]): ?> selected="selected" <?php endif; ?> <?php if ($this->_tpl_vars['so_item']['4']): ?>style="color:<?php echo $this->_tpl_vars['si_item']; ?>
"<?php endif; ?>><?php echo $this->_tpl_vars['si_item']; ?>
</option>
                    <?php endforeach; endif; unset($_from); ?>   
                <?php endif; ?>
            </select> 
    <?php endif; ?>
<?php elseif (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'input_text'): ?>
    <input type='text' name='<?php echo $this->_tpl_vars['so_key']; ?>
' class='' value='<?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] )): ?><?php echo $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]; ?>
<?php else: ?><?php if (isset ( $this->_tpl_vars['so_item']['3'] )): ?><?php echo $this->_tpl_vars['so_item']['3']; ?>
<?php endif; ?><?php endif; ?>'/>
<?php elseif (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'pic'): ?>
        优先图片上传 目录 : <?php echo $this->_tpl_vars['opt']['images_upload_dir']; ?>
<input type="file" name='<?php echo $this->_tpl_vars['so_key']; ?>
' class='l' ><br />
        <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] )): ?>当前: <img src='<?php echo $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]; ?>
' height='50px'/> <br /><?php endif; ?> 
        或者 外链图片<br /><input type='text' class='l' name='<?php echo $this->_tpl_vars['so_key']; ?>
' value="<?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] )): ?><?php echo $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]; ?>
<?php endif; ?>"/>
<?php elseif (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'input_select'): ?>
    <?php if (! empty ( $this->_tpl_vars['so_item']['2'] )): ?>            
    <select name="<?php echo $this->_tpl_vars['so_key']; ?>
">
        <?php $_from = $this->_tpl_vars['so_item']['2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['i']):
?>
            <option value="<?php echo $this->_tpl_vars['k']; ?>
" <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] ) && $this->_tpl_vars['k'] == $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]): ?>selected='selected'<?php endif; ?>><?php echo $this->_tpl_vars['i']; ?>
</option>
        <?php endforeach; endif; unset($_from); ?>
    </select>
    <?php endif; ?>
<?php elseif (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'checkbox'): ?>
    <?php if (! empty ( $this->_tpl_vars['so_item']['2'] )): ?>  
        <p>
            <?php $_from = $this->_tpl_vars['data_array']['tagids']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['i']):
?>
               
                <span>
                    <input type="checkbox" name="<?php echo $this->_tpl_vars['so_key']; ?>
[]" <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] ) && in_array ( $this->_tpl_vars['i']['id'] , $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] )): ?>checked='checked'<?php endif; ?> value="<?php echo $this->_tpl_vars['i']['id']; ?>
"> <?php echo $this->_tpl_vars['i']['tag']; ?>
  &nbsp;
                </span>
                
            <?php endforeach; endif; unset($_from); ?>                    
       </p>
    <?php endif; ?>
    
<?php elseif (! empty ( $this->_tpl_vars['so_item']['1'] ) && $this->_tpl_vars['so_item']['1'] == 'checkboxs'): ?>
    <?php if (! empty ( $this->_tpl_vars['so_item']['2'] )): ?>  
        <p><?php echo $this->_tpl_vars['data_array']['idarrix']['nums']; ?>

            <?php $_from = $this->_tpl_vars['data_array']['idarrix']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['i']):
?>
               <?php if (! empty ( $this->_tpl_vars['i']['id'] )): ?>
                <span>
                    <input type="checkbox" name="<?php echo $this->_tpl_vars['so_key']; ?>
[]" checked='checked' value="<?php echo $this->_tpl_vars['i']['id']; ?>
"> <?php echo $this->_tpl_vars['i']['name']; ?>
  &nbsp;
                </span>
                <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?>                    
       </p>
    <?php endif; ?>            
        
<?php else: ?>
    <?php if (! empty ( $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']] )): ?><?php echo $this->_tpl_vars['data_array'][$this->_tpl_vars['so_key']]; ?>
<?php endif; ?>
<?php endif; ?>
    
    </dd>
</td>	
</tr>
<?php endif; ?>
    <?php endforeach; endif; unset($_from); ?>
<tr>
    <td colspan='2' align='center' height='60'>
        <?php if (empty ( $this->_tpl_vars['id'] )): ?>
                <input type="hidden" name="do" value="add"/>
            <button type="submit" name="sub" value="add">新增</button> &nbsp;&nbsp;&nbsp;
            <button type="reset">重设</button>
        <?php else: ?>
            <?php if (! empty ( $this->_tpl_vars['id'] )): ?>
                <input type="hidden" name="id" value="<?php echo $this->_tpl_vars['id']; ?>
 "/>
                <input type="hidden" name="do" value="edit"/>
                <button type="submit" name="sub" value="upd">修改后保存</button> &nbsp;&nbsp;&nbsp;
            <?php endif; ?>
            <button type="submit" name="do" value="add">修改后新增</button> &nbsp;&nbsp;&nbsp;
            <button type="button" id="clean" >清空重填</button> &nbsp;&nbsp;&nbsp;
        <?php endif; ?>    

        &nbsp;&nbsp;&nbsp;<a class="button" href="?ct=<?php echo $this->_tpl_vars['ct']; ?>
&ac=<?php echo $this->_tpl_vars['ac_list']; ?>
">返回列表</a>

    </td>
</tr>

<script type="text/javascript">
    $("#clean").click(function () {
        $("input").val('');
    });

</script>
