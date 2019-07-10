<?php /* Smarty version 2.6.25, created on 2019-06-28 12:01:36
         compiled from admin/fxdl.index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'admin/fxdl.index.tpl', 210, false),array('modifier', 'count', 'admin/fxdl.index.tpl', 302, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script src="images/js/lyz.calendar.min.js" type="text/javascript"></script>
<script lang='javascript'>
    function get_value(id){
        value = document.getElementById(id).value;
        if(value!=''){
            return id+'='+value;
        }else{
            return 'empty';
        }
    }

    function more_edit(id)
    {
        document.getElementById('do_action').value=id;
        document.form_list.submit();
    }

    function more_edit2(id,url)
    {
        document.getElementById('do_action').value=id;
        document.form_list.action = url;
        document.form_list.submit();
    }

    function more_delete(id,url)
    {
        document.getElementById('do_action').value=id;
        document.form_list.action = url;
        document.form_list.submit();
    }

    function ajaxSelectChange(id,tag,url){
        if(id<1)return false;
        $.post(
           url,
           {id:id},
           function(data){
               if(data.str=='success'){
                   //$('.'+tag).append(data.data);
                   $('.'+tag).html(data.data);
               }else{
                   alert(data.str);
               }
           },
           'json'
        );
    }
$(function () {

        $("#search_paytime_start").calendar({

            controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"

            speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200

            complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true

            readonly: true,                                       // 目标对象是否设为只读，默认：true

            upperLimit: new Date(),                               // 日期上限，默认：NaN(不限制)

            lowerLimit: new Date("2011/01/01"),                   // 日期下限，默认：NaN(不限制)

            callback: function () {                               // 点击选择日期后的回调函数

                alert("您选择的日期是：" + $("#txtBeginDate").val());

            }

        });

        $("#search_paytime_end").calendar();

    });
</script>
<div id="contents">
    <div style="background-color:#DAFBCA;padding:5px 10px;line-height:32px;">
        <form method="GET" action="?">
            <input type="hidden" value="<?php echo $this->_tpl_vars['ct']; ?>
" name="ct">
            <input type="hidden" value="<?php echo $this->_tpl_vars['ac']; ?>
" name="ac">

            <?php $boolSearchMust = false;?>
            <?php $_from = $this->_tpl_vars['_dbfield']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>

            <?php if (isset ( $this->_tpl_vars['v']['search'] ) && $this->_tpl_vars['v']['search'] == 1): ?>
            <?php if ($this->_tpl_vars['v']['element']['e_name'] == 'input' && ! empty ( $this->_tpl_vars['v']['element']['e_type'] )): ?>
            &nbsp;&nbsp;&nbsp;
            <label><?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['k']]; ?>
：</label>
            <input type="<?php echo $this->_tpl_vars['v']['element']['e_type']; ?>
" id="search_<?php echo $this->_tpl_vars['k']; ?>
" name="<?php echo $this->_tpl_vars['k']; ?>
" value="<?php echo $this->_tpl_vars['search'.$this->_tpl_vars['k']] ?>" class="text m" <?php if (isset ( $this->_tpl_vars['v']['element']['jstype'] ) && $this->_tpl_vars['v']['element']['jstype'] != ''): ?>jstype="<?php echo $this->_tpl_vars['v']['element']['jstype']; ?>
"<?php endif; ?>>
            <?php $boolSearchMust = true;?>

            <?php elseif ($this->_tpl_vars['v']['element']['e_name'] == 'select' && ! empty ( $this->_tpl_vars['v']['element']['datafrom'] )): ?>
            <?php if (! isset ( $this->_tpl_vars['v']['element']['js'] ) || empty ( $this->_tpl_vars['v']['element']['js'] )): ?>
                &nbsp;&nbsp;&nbsp;
                <label>所属<?php echo $this->_tpl_vars['v']['element']['js']; ?>
<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['k']]; ?>
：</label>
                <select name="<?php echo $this->_tpl_vars['k']; ?>
" id="search_<?php echo $this->_tpl_vars['k']; ?>
" style="height:23px;">
                    <option value="" >所属<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['k']]; ?>
</option>
                    <?php $_from = $this->_tpl_vars['v']['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                    <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                <option value="<?php echo $this->_tpl_vars['vv']['id']; ?>
" <?php if($this->_tpl_vars['search'.$this->_tpl_vars['k']]==$this->_tpl_vars['vv']['id'])echo 'selected';?> ><?php echo $this->_tpl_vars['vv']['name']; ?>
</option>
                    <?php else: ?>
                <option value="<?php echo $this->_tpl_vars['kk']; ?>
" <?php if($this->_tpl_vars['search'.$this->_tpl_vars['k']]==$this->_tpl_vars['kk'])echo 'selected';?> ><?php echo $this->_tpl_vars['vv']; ?>
</option>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </select>
            <?php else: ?>

                    &nbsp;&nbsp;&nbsp;
                    <label>所属<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['k']]; ?>
：</label>
                    <select name="<?php echo $this->_tpl_vars['k']; ?>
" id="search_<?php echo $this->_tpl_vars['k']; ?>
" style="height:23px;" <?php if (! empty ( $this->_tpl_vars['v']['element']['js']['onchange'] )): ?>onchange="javascript:ajaxSelectChange(this.value,'<?php echo $this->_tpl_vars['v']['element']['js']['onchange']['class']; ?>
','<?php echo $this->_tpl_vars['v']['element']['js']['onchange']['url']; ?>
')"<?php endif; ?>  <?php if (! empty ( $this->_tpl_vars['v']['element']['js']['ajax'] )): ?>class="<?php echo $this->_tpl_vars['v']['element']['js']['ajax']['class']; ?>
"<?php endif; ?> >
                        <option value="" >所属<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['k']]; ?>
</option>
            <?php if (! isset ( $this->_tpl_vars['v']['element']['js']['ajax'] ) || empty ( $this->_tpl_vars['v']['element']['js']['ajax'] )): ?>
                        <?php $_from = $this->_tpl_vars['v']['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                        <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                    <option value="<?php echo $this->_tpl_vars['vv']['id']; ?>
" <?php if($this->_tpl_vars['search'.$this->_tpl_vars['k']]==$this->_tpl_vars['vv']['id'])echo 'selected';?> ><?php echo $this->_tpl_vars['vv']['name']; ?>
</option>
                        <?php else: ?>
                    <option value="<?php echo $this->_tpl_vars['kk']; ?>
" <?php if($this->_tpl_vars['search'.$this->_tpl_vars['k']]==$this->_tpl_vars['kk'])echo 'selected';?> ><?php echo $this->_tpl_vars['vv']; ?>
</option>
                        <?php endif; ?>
                        <?php endforeach; endif; unset($_from); ?>
            <?php endif; ?>
                    </select>

            <?php endif; ?>


            <?php $boolSearchMust = true;?>
            <?php endif; ?>

            <?php endif; ?>


            <?php endforeach; endif; unset($_from); ?>
            <?php if($boolSearchMust){ ?>
            <button type="submit">搜索</button><span style="margin-left:25px;">
            <?php } ?>



        </form>
    </div>
   <div style="background-color:#DAFBCA;padding:5px 10px;line-height:32px;">
	<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总订单数：<?php echo $this->_tpl_vars['sum_total']; ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
	<label>订单总金额：<?php echo $this->_tpl_vars['money_all']; ?>
 元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <label>已付费订单数：<?php echo $this->_tpl_vars['sum_cj']; ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <label>已付费金额：<?php echo $this->_tpl_vars['money_cj']; ?>
 元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <label>待付费订单数：<?php echo $this->_tpl_vars['sum_wcj']; ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <label>待付费金额：<?php echo $this->_tpl_vars['money_wcj']; ?>
 元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<label>分销金额：<?php echo $this->_tpl_vars['money_fxdl']; ?>
 元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
   </div>
    <form id="form_list" name="form_list" method="POST" action="?ct=<?php echo $this->_tpl_vars['ct']; ?>
&amp;ac=batch_update">
        <input type="hidden" id="do_action" name="do_action" value="" />
        <table class="table-sort">
            <tbody>
            <tr>
                <th width="20"><input type="checkbox" rel="parent" value="" name=""></th>
                                <?php if ($this->_tpl_vars['_dbfield']['listTableField']): ?>
                    <?php $_from = $this->_tpl_vars['_dbfield']['listTableField']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['field'] => $this->_tpl_vars['v']):
?>
                    <th><?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['v']]; ?>
</th>
                    <?php endforeach; endif; unset($_from); ?>
                <?php else: ?>
                    <?php $_from = $this->_tpl_vars['_dbfield']['allTableField']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                    <th><?php echo $this->_tpl_vars['v']; ?>
</th>
                    <?php endforeach; endif; unset($_from); ?>
                <?php endif; ?>

                <th>管理</th>
            </tr>
            <?php if (! empty ( $this->_tpl_vars['data_list'] )): ?>
                <?php $_from = $this->_tpl_vars['data_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['v']):
?>
                <tr>
                    <td><input type="checkbox" rel="child" value="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
" name="ids[<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
]"></td>
                                        <?php if ($this->_tpl_vars['_dbfield']['listTableField']): ?>
                        <?php $_from = $this->_tpl_vars['_dbfield']['listTableField']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['intk'] => $this->_tpl_vars['field']):
?>
                        <td>

                            <?php if ($this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['e_name'] == 'select' && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']): ?>
                                <?php if (! isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) || ! in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                                                        <?php $_from = $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                                        <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                                            <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['vv']['id']): ?><?php echo $this->_tpl_vars['vv']['name']; ?>
<?php endif; ?>
                                        <?php else: ?>
                                            <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['kk']): ?><?php echo $this->_tpl_vars['vv']; ?>
<?php endif; ?>
                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                <?php elseif (isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) && in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                    <select name="<?php echo $this->_tpl_vars['field']; ?>
[<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
]">
                                        <option value="" >所属<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['field']]; ?>
</option>
                                        <?php $_from = $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                                            <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                                                <option value="<?php echo $this->_tpl_vars['vv']['id']; ?>
" <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['vv']['id']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['vv']['name']; ?>
</option>
                                            <?php else: ?>
                                                <option value="<?php echo $this->_tpl_vars['kk']; ?>
" <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['kk']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['vv']; ?>
</option>
                                            <?php endif; ?>
                                        <?php endforeach; endif; unset($_from); ?>
                                    </select>
                                <?php endif; ?>
                            <?php else: ?>

                                <?php if (isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) && in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                    <input type="text" name="<?php echo $this->_tpl_vars['field']; ?>
[<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
]" value="<?php if ($this->_tpl_vars['field'] == 'createtime' || $this->_tpl_vars['field'] == 'paytime'): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['v'][$this->_tpl_vars['field']])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
<?php else: ?><?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
<?php endif; ?>"  class="text <?php if (! empty ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['class'] )): ?><?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['class']; ?>
<?php else: ?>s<?php endif; ?>" <?php if (isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype'] ) && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype'] != ''): ?>jstype="<?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype']; ?>
"<?php endif; ?> />
                                <?php else: ?>
                                    <?php if (isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['type'] ) && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['type'] == 'image' && isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['src'] ) && $this->_tpl_vars['v'][$this->_tpl_vars['field']] != ''): ?>
                                        <img title="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" alt="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" src="<?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['src']; ?>
<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" style="width:80px;height:60px;" />
                                    <?php else: ?>
                                        <?php if ($this->_tpl_vars['field'] == 'createtime' || $this->_tpl_vars['field'] == 'paytime'): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['v'][$this->_tpl_vars['field']])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
<?php else: ?><?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
<?php endif; ?>
                                    <?php endif; ?>
                                <?php endif; ?>


                            <?php endif; ?>
                        </td>
                        <?php endforeach; endif; unset($_from); ?>
                                        <?php else: ?>

                        <?php $_from = $this->_tpl_vars['_dbfield']['allTableField']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['field'] => $this->_tpl_vars['fieldName']):
?>
                        <td>

                            <?php if ($this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['e_name'] == 'select' && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']): ?>
                                <?php if (! isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) || ! in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                                                        <?php $_from = $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                                        <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                                            <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['vv']['id']): ?><?php echo $this->_tpl_vars['vv']['name']; ?>
(<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
)<?php endif; ?>
                                        <?php else: ?>
                                            <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['kk']): ?><?php echo $this->_tpl_vars['vv']; ?>
(<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
)<?php endif; ?>
                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                <?php elseif (isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) && in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                    <select name="<?php echo $this->_tpl_vars['field']; ?>
[<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
]">
                                        <option value="" >所属<?php echo $this->_tpl_vars['_dbfield']['allTableField'][$this->_tpl_vars['field']]; ?>
</option>
                                        <?php $_from = $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['datafrom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['kk'] => $this->_tpl_vars['vv']):
?>
                                            <?php if (is_array ( $this->_tpl_vars['vv'] )): ?>
                                                <option value="<?php echo $this->_tpl_vars['vv']['id']; ?>
" <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['vv']['id']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['vv']['name']; ?>
</option>
                                            <?php else: ?>
                                                <option value="<?php echo $this->_tpl_vars['kk']; ?>
" <?php if ($this->_tpl_vars['v'][$this->_tpl_vars['field']] == $this->_tpl_vars['kk']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['vv']; ?>
</option>
                                            <?php endif; ?>
                                        <?php endforeach; endif; unset($_from); ?>
                                    </select>
                                <?php endif; ?>
                            <?php else: ?>
                                <?php if (isset ( $this->_tpl_vars['_dbfield']['batchUpdateTableField'] ) && in_array ( $this->_tpl_vars['field'] , $this->_tpl_vars['_dbfield']['batchUpdateTableField'] )): ?>
                                    <input type="text" name="<?php echo $this->_tpl_vars['field']; ?>
[<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
]" value="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
"  class="text <?php if (! empty ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['class'] )): ?><?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['class']; ?>
<?php else: ?>s<?php endif; ?>" <?php if (isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype'] ) && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype'] != ''): ?>jstype="<?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['jstype']; ?>
"<?php endif; ?> />
                                <?php else: ?>
                                    <?php if (isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['type'] ) && $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['type'] == 'image' && isset ( $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['src'] ) && $this->_tpl_vars['v'][$this->_tpl_vars['field']] != ''): ?>
                                        <img title="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" alt="<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" src="<?php echo $this->_tpl_vars['_dbfield'][$this->_tpl_vars['field']]['element']['src']; ?>
<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>
" style="width:100px;height:80px;" />
                                    <?php else: ?>
                                        <?php echo $this->_tpl_vars['v'][$this->_tpl_vars['field']]; ?>

                                    <?php endif; ?>

                                <?php endif; ?>


                            <?php endif; ?>
                        </td>
                        <?php endforeach; endif; unset($_from); ?>

                    <?php endif; ?>

                    <td>

                        <?php if (isset ( $this->_tpl_vars['_dbfield']['editTableField'] ) && ! empty ( $this->_tpl_vars['_dbfield']['editTableField'] )): ?>
                            <?php if (isset ( $this->_tpl_vars['_allowAction']['edit'] ) && ! empty ( $this->_tpl_vars['_allowAction']['edit'] )): ?>
                                <a href="?ct=<?php echo $this->_tpl_vars['ct']; ?>
&amp;ac=settlement&amp;id=<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['_dbfield']['mainKey']]; ?>
&amp;page_no=<?php echo $this->_tpl_vars['current_page']; ?>
" class="btn edit" style="cursor:pointer;"><?php if ($this->_tpl_vars['_allowAction']['edit']['title'] != ''): ?>结算<?php else: ?>结算<?php endif; ?></a>
                        &nbsp;&nbsp;
                            <?php endif; ?>
                        <?php endif; ?>

                        <?php if (isset ( $this->_tpl_vars['_allowAction']['_extend'] ) && ! empty ( $this->_tpl_vars['_allowAction']['_extend'] )): ?>
                            <?php $_from = $this->_tpl_vars['_allowAction']['_extend']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['url'] => $this->_tpl_vars['vext']):
?>
                                <?php if ($this->_tpl_vars['vext']['type'] == 'dialog'): ?>
                                    <button type="button" onclick="tb_show('<?php echo $this->_tpl_vars['vext']['title']; ?>
','<?php echo $this->_tpl_vars['url']; ?>
&<?php echo $this->_tpl_vars['vext']['paramto']; ?>
=<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['vext']['paramfrom']]; ?>
&TB_iframe=true&width=<?php echo $this->_tpl_vars['vext']['width']; ?>
&height=<?php echo $this->_tpl_vars['vext']['height']; ?>
',true);"><?php if ($this->_tpl_vars['vext']['title'] != ''): ?><?php echo $this->_tpl_vars['vext']['title']; ?>
<?php else: ?>未知操作名称<?php endif; ?></button>&nbsp; &nbsp;
                                <?php else: ?>
                                    <a href='<?php echo $this->_tpl_vars['url']; ?>
&<?php echo $this->_tpl_vars['vext']['paramto']; ?>
=<?php echo $this->_tpl_vars['v'][$this->_tpl_vars['vext']['paramfrom']]; ?>
' class="btn" style="cursor:pointer;"><?php if ($this->_tpl_vars['vext']['title'] != ''): ?><?php echo $this->_tpl_vars['vext']['title']; ?>
<?php else: ?>未知操作名称<?php endif; ?></a>
                                &nbsp;&nbsp;
                                <?php endif; ?>
                            <?php endforeach; endif; unset($_from); ?>
                        <?php endif; ?>


                    </td>
                </tr>
                <?php endforeach; endif; unset($_from); ?>
                <?php else: ?>
                <tr>
                    <td colspan="<?php echo ((is_array($_tmp=$this->_tpl_vars['_dbfield']['allTableField'])) ? $this->_run_mod_handler('count', true, $_tmp) : count($_tmp)); ?>
" align="center">数据为空</td>
                </tr>
                <?php endif; ?>

            </tbody></table>
    </form>

</div>

<div id="bottom">
    <form method="POST" action="" bind=".table-sort">
        <div class="fl">
            <input type="checkbox" id="checkall" rel="parent" value="" name="">
            <label for="checkall">全选</label>


        </div>
    </form>
    <div class="pages"><?php echo $this->_tpl_vars['pages']; ?>
</div>
</div>

</body>
</html>