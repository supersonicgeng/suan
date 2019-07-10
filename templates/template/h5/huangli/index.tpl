<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
  <{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title">黄历查询</h1>
<div class="detail">
  <dl>
    <p class="form">提供最专业的黄历查询，覆盖吉凶宜忌、冲煞、吉神凶煞、值日、胎神、财神喜神福神方位等信息。</p>
    <form name="sm" class="juzhong" action="/index.php" method="post">
      <input type="hidden" name="ct" value="h5_hdjr" />
      <input type="hidden" name="ac" value="index" />
      <input type="hidden" name="tid" value="363" />

      <select name="y" id="nian" class="select1">
        <{$ymd_arr.y}>
      </select>年

      <select name="n" id="yue" class="select1">
        <{$ymd_arr.m}>
      </select>月

      <select name="j" id="ri" class="select1">
        <{$ymd_arr.d}>
      </select>日

      <div align="center"><input type="submit" name="submit" class="button" value="查询吉日"/></div>
    </form>
  </dl>
</div>

<div class="detail hdjr">

  <table cellspacing="0" cellpadding="0" border="0" class="tableData">

    <colgroup>

      <col width="22%">

      <col width="28%">

      <col width="22%">

      <col width="28%">

    </colgroup>

    <tbody>

    <tr class="trTit">

      <td colspan="4" id="gongli"><span class="solar"><{$hdjr.gongli}></span></td>

    </tr>

    <!-- <tr class="bgBlack">

        <td class="thBg">黑道凶日</td>

        <td colspan="3">天刑（黑道）危日</td>

    </tr> -->

    <tr>

      <td class="thBg">农历/阴历</td>

      <td colspan="3" id="nongli"><{$hdjr.nongli}></td>

    </tr>

    <tr class="bgOrange">

      <td class="thBg">节日</td>

      <td colspan="3" id="dao_title"><p id="dao_content"><{$hdjr.jieri}></p></td>

    </tr>

    <tr>

      <td class="thBg">彭祖百忌</td>

      <td colspan="3" id="start"><{$hdjr.baiji}></td>

    </tr>

    <tr class="tr-su">

      <td class="thBg"><span class="su-icon green"></span></td>

      <td colspan="3">

        <p class="pSuitable" id="yishi">
          <{if $hdjr.yi!='-'}><{$hdjr.yi}><{else}>诸事不宜<{/if}>
        </p>

      </td>

    </tr>

    <tr class="tr-su">

      <td class="thBg"><span class="su-icon red"></span></td>

      <td colspan="3">

        <p class="pUnsuitable" id="jishi">
          <{if $hdjr.ji!='-'}><{$hdjr.ji}><{else}>诸事勿取<{/if}>
        </p>

      </td>

    </tr>

    <tr class="tr-su">

      <td class="thBg"><span class="su-icon blue"></span></td>

      <td colspan="3">

        <p class="pAdversary" id="chong">
          <{$hdjr.chong}>
        </p>

      </td>

    </tr>

    <tr>

      <td class="thBg">凶神宜忌</td>

      <td colspan="3">

        <p class="txt-center" id="xs">
          <{$hdjr.xiongshen}>
        </p>

      </td>

    </tr>

    <tr>

      <td class="thBg">吉神宜趋</td>

      <td colspan="3">

        <p id="js">
          <{$hdjr.jishen}>
        </p>

      </td>

    </tr>

    <tr>

      <td class="thBg">岁次</td>

      <td colspan="3">

        <p class="txt-center" id="suici">
          <{$hdjr.suici}>
        </p>

      </td>

    </tr>

    <tr>

      <td class="thBg">胎神</td>

      <td colspan="3">

        <p class="txt-center" id="taishen">
          <{$hdjr.taishen}>
        </p>

      </td>

    </tr>

    <tr class="custom-tr2">

      <td class="thBg">

        <span>财神</span>

      </td>

      <td>

        <span id="cai"><{$hdjr.caishen}></span>

      </td>

      <td class="thBg">

        <span>五行</span>

      </td>

      <td>

        <span id="wuxing"><{$hdjr.wuxing}></span>

      </td>

    </tr>

    <tr class="custom-tr2">

      <td class="thBg">

        <span>喜神</span>

      </td>

      <td>

        <span><{$hdjr.xishen}></span>

      </td>

      <td class="thBg">

        <span>福神</span>

      </td>

      <td>

        <span><{$hdjr.fushen}></span>

      </td>

    </tr>

    </tbody>

  </table>

</div>


<div>
  <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>