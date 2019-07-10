<?php
$webnames = $_SERVER['HTTP_HOST'];
$doname = array('zb.03ky.com','m.zb.03ky.com',"sm.03ky.com",'zb.aemui.cn','m.zb.aemui.cn',"sm.aemui.cn");
if($_GET['a']){
	print_r($doname);
}
if(!in_array($webnames,$doname)){
	exit;
}
?>