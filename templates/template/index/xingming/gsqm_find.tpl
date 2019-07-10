<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/xmfx.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="cont">
<div class="col_left">
<?php 
 include('cache/gg/12sx_top_730x15.php');
?>
<div class="fn_part fn_gsqm fn_gsqm_detailM mod_box_t1">
              <div class="hd">
                <h1><?=$ming?>名称评分</h1>
              </div>
              <div class="bd">
                <div class="box_con">
                    <div class="intro_area"><strong>「<a href="<{$web_url}>xingming/xmfx/">开运网名称测试</a>」</strong>为您的企业、公司名称评分。名字是一个符号不假，但它却是一个非常特别、极其重要的符号。详细名字评分分析还须要配合个人八字五行匹配，名字评分信则灵不信则不灵。请在下面输入你要测试的名称进行<a href="<{$web_url}>xingming/gsqm/">评分测试</a>吧！
</div>
                    <div class="mod_search_form clearfix">
                        <form id="company_submit"  target="_blank" method="post" action="<{$web_url}>/index.php" onSubmit="return chk_submit();">
                        <input type="hidden" value="374" name="tid">
                        <input type="hidden" value="gsqm" name="ac" />
                        <input type="hidden" value="xingming" name="ct" />
                        <input type="text" value="" class="search_text" id="company_name" name="name">
                        <input type="submit" value="开始测试" onMouseOver="this.className='search89_btn search89_btnhover'" onMouseOut="this.className='search89_btn'" class="search89_btn">
						</form>
                    </div>
                    
                    <div class="mod_box_t3 fn_gsqm_detail">
                  <div class="box_con">
                        <div class="gsqm_detail_hd"><strong><?=$ming?></strong>的名字分析结果如下</div>
                        <div class="gsqm_detail_table">
                            <table>
                                <tr class="tr_th">
                                    <th><span>简体</span></th>
                                    <th><span>繁体</span></th>
                                    <th><span>拼音</span></th>
                                    <th><span>五行</span></th>
                                    <th><span>笔画</span></th>
                                    
                                </tr>
                                <{if $a1arr.a1!=''}>
								<tr>
                                    <td><{$a1arr.a1}></td>
                                    <td><{$a1arr.a1gb}></td>
                                    <td class="py"><{$a1arr.a1py}></td>
                                    <td><{$a1arr.hzwh1}></td>
                                    <td><{$a1arr.bihua1}></td> 
                                </tr>
                               <{/if}>
                               
                                <{if $a2arr.a2!=''}>
								<tr>
                                    <td><{$a2arr.a2}></td>
                                    <td><{$a2arr.a2gb}></td>
                                    <td class="py"><{$a2arr.a2py}></td>
                                    <td><{$a2arr.hzwh2}></td>
                                    <td><{$a2arr.bihua2}></td> 
                                </tr>
                               <{/if}>
                               
                                <{if $a3arr.a3!=''}>
								<tr>
                                    <td><{$a3arr.a3}></td>
                                    <td><{$a3arr.a3gb}></td>
                                    <td class="py"><{$a3arr.a3py}></td>
                                    <td><{$a3arr.hzwh3}></td>
                                    <td><{$a3arr.bihua3}></td> 
                                </tr>
                               <{/if}>
                               
                                <{if $a4arr.a4!=''}>
								<tr>
                                    <td><{$a4arr.a4}></td>
                                    <td><{$a4arr.a4gb}></td>
                                    <td class="py"><{$a4arr.a4py}></td>
                                    <td><{$a4arr.hzwh4}></td>
                                    <td><{$a4arr.bihua4}></td> 
                                </tr>
                               <{/if}>
                               
                                <{if $a5arr.a5!=''}>
								<tr>
                                    <td><{$a5arr.a5}></td>
                                    <td><{$a5arr.a5gb}></td>
                                    <td class="py"><{$a5arr.a5py}></td>
                                    <td><{$a5arr.hzwh5}></td>
                                    <td><{$a5arr.bihua5}></td> 
                                </tr>
                               <{/if}>
                               
                                <{if $a6arr.a6!=''}>
								<tr>
                                    <td><{$a6arr.a6}></td>
                                    <td><{$a6arr.a6gb}></td>
                                    <td class="py"><{$a6arr.a6py}></td>
                                    <td><{$a6arr.hzwh6}></td>
                                    <td><{$a6arr.bihua6}></td> 
                                </tr>
                               <{/if}>                               
                            </table>
                        </div>
                        <div class="gsqm_detail_item">
                            <P><strong>数 理：</strong><{$allbihua}></P>
                            <p><strong>吉 凶：</strong><{$company.t1}><em class="red"><{$company.j1}></em></p>
                            <p><strong>诗 解：</strong><{$company.c1}></p>
                            <p><strong>含 义：</strong><{$company.t2}><br><{$company.c2}></p>
                            <div class="tips_area">以上分析结果仅从数理上简单分析，没有考虑到其他企业法人个人信息等的配合。</div>
                            <a href="<{$web_url}>xingming/gsqm/" class="btn_orange_1">重新测算</a>
                        </div>
                  </div>
                  <i class="flag_tl_t3"></i>
                  <i class="flag_tr_t3"></i>
                  <i class="flag_bl_t3"></i>
                  <i class="flag_br_t3"></i>
                </div>
                 
                  </div>
                
                
              </div>
              <i class="flag_tl_t1"></i>
              <i class="flag_tr_t1"></i>
              <i class="flag_bl_t1"></i>
              <i class="flag_br_t1"></i>
            </div>
                <{include file='./index/public/left_sx.tpl'}>
                </div>
                <div id="col_right" class="col_right">
                <{include file='./index/public/right.tpl'}> 
                    </div>
                </div>
            </div>
        </div>
         <?php   include('templates/public/footer.tpl.php'); ?>  

<{include file='./index/footer.tpl'}>

