<?php
header('Content-Type: text/html; charset=utf-8');
if (isset($_GET['dl']) && $_GET['dl'] != "" && ($_COOKIE["dl"] == "" || $_COOKIE["dl"] != "" && $_COOKIE["dl"] != $_GET['dl'])) {
    $expire = time() + 60 * 60 * 24 * 30;
    setcookie("dl", $_GET['dl'], $expire, '/');
}
if (preg_match('/(blackberry|configuration\\/cldc|hp |hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera |Googlebot-Mobile|YahooSeeker\\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda |xda_)/i', $_SERVER['HTTP_USER_AGENT'])) {
}
$page_start_time = microtime(true);
require './core/init.php';
$config_pool_name = $config_appname = $config_cp_url = '';
if ($cts == 'h5_index') {
    req::$forms['ct'] = 'h5_index';
}
if ($cts == 'ffsm_index') {
    req::$forms['ct'] = 'ffsm_index';
}
if ($cts == 'ffsm_h5_index') {
    req::$forms['ct'] = 'ffsm_h5_index';
}
run_controller();