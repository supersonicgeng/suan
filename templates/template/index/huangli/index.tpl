<{include file='./index/header.tpl'}>
<{include file='./index/public/top_nav.tpl'}>
<link type="text/css" rel="stylesheet" href="<{$web_url}>static/bazi/css/suanming/v2/hdjr.css"/>
<div class="wrapper">
    <div class="main">
        <div class="submenu">
<{include file='./index/public/daohang.tpl'}>
        </div>
<{include file='./index/public/path.tpl'}> 
<div class="mod_2b">
        <h2><img src="<{$web_url}>static/bazi/img/life/icon_huangli.png">黄历查询</h2>
        <p class="description">提供最专业的黄历查询，覆盖吉凶宜忌、冲煞、吉神凶煞、值日、胎神、财神喜神福神方位等信息。</p>
        <div class="life clearfix" id="cx">
          <div class="col_b">
          <form action="<{$web_url}>index.php" method="post">
          <input type="hidden" name="ct" value="hdjr" />
          <input type="hidden" name="ac" value="index" />
          <input type="hidden" name="tid" value="363" />
            <div class="data_search huangli_search clearfix">
              <div class="lbox"> <strong class="fl">公历/阳历</strong>
                <div class="select_outer select_outer62">
                  <div class="select_inner">
                    <select id="s_year" name="y" onChange="changeMonthDay(0)">
                     <{$ymd_arr.y}>
                    </select>
                  </div>
                </div>
                <span class="fl">年</span>
                <div class="select_outer select_outer50">
                  <div class="select_inner">
                    <select id="s_month" name="n" onChange="changeMonthDay(0)">
                     <{$ymd_arr.m}>
                    </select>
                  </div>
                </div>
                <span class="fl">月</span>
                <div class="select_outer select_outer50">
                  <div class="select_inner">
                    <select name="j" id='s_day'>
                                       <{$ymd_arr.d}>
                                       </select>
                  </div>
                </div>
                <span class="fl">日</span>
                <div class="clear"></div>
              </div>
              <div class="md fl">
              <input class="selt_btn" type="submit" value="查  询">
              </div>
            </div>
            </form>
            <div class="data_result mt10">
              <table class="data_table mt10">
                <thead>
                  <tr>
                    <th colspan="4">
                      <div class="thead_th thead_th_deep">
                        <div class="thead_th_rt"></div>
                        <div class="thead_th_lt"></div>
                        <strong id="dateInfo">今日黄历</strong>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th width="98">公历/阳历</th>
                    <td width="290" id="gongli"><{$hdjr.gongli}></td>
                    <th width="110">农历/阴历</th>
                    <td width="290" id="nongli"><{$hdjr.nongli}></td>
                  </tr>
                  <tr>
                    <th id="dao_title" class="bg_light"> <em id="c_Class" class="c_light">节日</em>
                    </th>
                    <td id="dao_content" class="bg_light"><{$hdjr.jieri}></td>
                    <th>彭祖百忌</th>
                    <td id="start"><{$hdjr.baiji}></td>
                  </tr>
                  <tr>
                    <th>
                      <div class="luck_th"></div>
                    </th>
                    <td colspan="3">
                      <div id="yishi" class="luck_td"><{if $hdjr.yi!='-'}><{$hdjr.yi}><{else}>诸事不宜<{/if}></div>
                    </td>
                  </tr>
                  <tr>
                    <th>
                      <div class="bad_th"></div>
                    </th>
                    <td colspan="3">
                      <div id="jishi" class="bad_td"><{if $hdjr.ji!='-'}><{$hdjr.ji}><{else}>诸事勿取<{/if}></div>
                    </td>
                  </tr>
                  <tr>
                    <th>
                      <div class="nowell_th"></div>
                    </th>
                    <td>
                      <div id="chong" class="nowell_td"><{$hdjr.chong}></div>
                    </td>
                    <th>凶神宜忌</th>
                    <td id="xs"><{$hdjr.xiongshen}></td>
                  </tr>
                  <tr>
                    <th class="bg_light">吉神宜趋</th>
                    <td><{$hdjr.jishen}></td>
                    <th class="bg_light">纪念日</th>
                    <td ><{$hdjr.jinianri}></td>
                  </tr>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="4">
                      <dl>
                        <dt>岁次</dt>
                        <dd id="suici"><{$hdjr.suici}></dd>
                        <dt>五行</dt>
                        <dd id="wuxing"><{$hdjr.wuxing}></dd>
                        <dt class="god_child"> <i></i>胎神 </dt>
                        <dd id="taishen" class="last"><{$hdjr.taishen}></dd>
                      </dl>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4">
                      <dl>
                        <dt class="god_money"> <i></i>财神</dt>
                        <dd id="cai" style="color:#F00; font-size:16px;"><{$hdjr.caishen}>(<a href="<{$web_url}>list-347.html" title="今日财神方位">财神方位</a>)</dd>
                        <dt class="god_happy"><i></i>喜神</dt>
                        <dd id="xi"><{$hdjr.xishen}></dd>
                        <dt class="god_luck"><i></i>福神</dt>
                        <dd id="fu" class="last"><{$hdjr.fushen}></dd>
                      </dl>
                    </td>
                  </tr>
                </tfoot>
              </table>
            </div>
            <div class="relatedTool">
              <h3>相关工具</h3>
              <table class="relatedTool_table">
                <tbody>
                  <{foreach from=$hand.hdjr_bot_link item=v key=k}>
                      <{if $k==0}>
                         <tr>
                      <{/if}>
                    <th width="20%">
                      <a <{if $v.blank==1}>target="_blank"<{/if}> href="<{$v.url}>" <{if $v.color==1}>class="cRed"<{elseif $v.color==2}>class="cGreen"<{elseif $v.color==3}>class="cBlue"<{/if}> title="<{$v.title}>"><{$v.title}></a>
                    </th>
                      <{if $k==4}>
                      </tr>
                      <tr>
                      <{/if}> 
                      
                      <{if $k==9}>
                      </tr>
                      <{/if}>
                   
                  <{/foreach}> 

                </tbody>

              </table>

            </div>
          </div>
        </div>
      </div>
    <script type="text/javascript" src="<{$web_url}>static/bazi/js/huangli.js"></script>
</div>

<{include file='./index/footer.tpl'}>

