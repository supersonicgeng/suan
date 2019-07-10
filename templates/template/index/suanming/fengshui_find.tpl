<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/fortune.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
        <div class="cont">
            <div class="col_left">
                <div class="mod_box_t1 fn_part fn_fengshui">
					<div class="hd">
						<h1><{$haomajx.nianfen}>年出生,<{$haomajx.xingbie}>,大门朝向:<{$haomajx.chaoxiang}>风水测算</h1>
					</div>
					<div class="bd">
						
						<div class="fengshui_result">
                        	<h2 class="tit">风水-<{$haomajx.nianfen}>年出生,<{$haomajx.xingbie}>,大门朝向:<{$haomajx.chaoxiang}></h2>
                            <p>通过你输入的年份，朝向，性别，<a href="<{$web_url}>">开运网</a>为你测算结果为：</p>
                            <dl>
                            	<{$haomajx.xiangjie}>
                            </dl>
                            <span class="sTips"><{$haomajx.beizhu}></span>
                            <a href="/suanming/fscs/" class="btn_orange_1">重新测算</a>
										<i class="flag_tl_t3"></i>
                                        <i class="flag_tr_t3"></i>
                                        <i class="flag_bl_t3"></i>
                                        <i class="flag_br_t3"></i>
                                        </div><!-- 热词 begin-->
                                        </div>
                                        <i class="flag_tl_t1"></i>
                                        <i class="flag_tr_t1"></i>
                        </div>
                                        
                                        
                <{include file='./index/public/left_hotnav.tpl'}>                        
                <{include file='./index/public/left_sx.tpl'}>
            </div>
            <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/static/bazi/js/suanming.js"></script>
</div>

<{include file='./index/footer.tpl'}>

