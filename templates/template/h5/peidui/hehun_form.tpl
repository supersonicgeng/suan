<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div class="detail">
    <dl>
        <img src="/static/img/hehun.jpg" width="100%">
        <form name="s" action="/index.php" class="suanmingk" method="post">
            <input type="hidden" name="ac" value="hehun" />
            <input type="hidden" name="ct" value="h5_peidui" />
            <input type="hidden" name="tid" value="383" />
<div class="smkj">
            <dd class="form">
                <img src="<{$web_url}>static/bazi/img/suanming/v2/girl_icon.png" alt="女性" class="item_imgIcon">女生姓名: <input class="ipt" name="user_a" size="12" id="name2" type="text" /></dd>
            <dd class="form">
                <strong>公历生日:</strong> <select class="select1" name="year_a" id="year2">
                    <option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982" selected>1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option></select>
                <select class="select1" name="month_a" id="month2">
                    <option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select>
                <select class="select1" name="day_a" id="day2">
                    <option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select></dd>
            <dd class="form">
                <strong>出生时辰:</strong> <select class="select1" name="t_ime_a" id="hour2">
                    <option value="0">时辰不清楚</option><option value="0">子 0</option><option value="1">丑 1</option><option value="2">丑 2</option><option value="3">寅 3</option><option value="4">寅 4</option><option value="5">卯 5</option><option value="6">卯 6</option><option value="7">辰 7</option><option value="8">辰 8</option><option value="9">巳 9</option><option value="10">巳 10</option><option value="11">午 11</option><option value="12">午 12</option><option value="13">未 13</option><option value="14">未 14</option><option value="15">申 15</option><option value="16">申 16</option><option value="17">酉 17</option><option value="18">酉 18</option><option value="19">戌 19</option><option value="20">戌 20</option><option value="21">亥 21</option><option value="22">亥 22</option><option value="23">子 23</option></select>
            </dd>

            <div class="line"></div>

            <dd class="form">
                <img src="<{$web_url}>static/bazi/img/suanming/v2/boy_icon.png" alt="男性" class="item_imgIcon">男生姓名: <input class="ipt" size="12" name="user" id="name1" type="text" /></dd>
            <dd class="form">
                <strong>公历生日:</strong>
                <select class="select1" name="year" id="year1">
                    <option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981" selected>1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option></select>
                <select class="select1" name="month" id="month1">
                    <option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select>
                <select class="select1" name="day" id="day1">
                    <option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select>
            </dd>
            <dd class="form"><strong>出生时辰:</strong>
                <select class="select1" name="t_ime" id="hour1">
                    <option value="0">时辰不清楚</option><option value="0">子 0</option><option value="1">丑 1</option><option value="2">丑 2</option><option value="3">寅 3</option><option value="4">寅 4</option><option value="5">卯 5</option><option value="6">卯 6</option><option value="7">辰 7</option><option value="8">辰 8</option><option value="9">巳 9</option><option value="10">巳 10</option><option value="11">午 11</option><option value="12">午 12</option><option value="13">未 13</option><option value="14">未 14</option><option value="15">申 15</option><option value="16">申 16</option><option value="17">酉 17</option><option value="18">酉 18</option><option value="19">戌 19</option><option value="20">戌 20</option><option value="21">亥 21</option><option value="22">亥 22</option><option value="23">子 23</option></select>
            </dd>

            <div class="line"></div>
</div>
            <div align="center">
                <input type="submit" name="submit" class="button" value="开始合婚"/>
                <p class="remark">已有76,105人测算，97.8%好评。</p>
                <input type="hidden" name="action" value="test">
                <input type="hidden" name="t" value="hh">
                <input type="hidden" name="from" value="navi">
            </div>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>