<{include file='./h5/header.tpl'}>
<script>stepMenu();</script>
<div id="path">
<{include file='./h5/public/path.tpl'}>
</div>
<h1 class="title"><{$arr.h1}></h1>
<div class="detail">
    <dl>
        <dd class="form"><{$arr.jianjie}></dd>
        <form id="sm" action="/index.php"  method="post" onSubmit="return checkbz();">
            <input type="hidden" value="h5_suanming" name="ct" />
            <input type="hidden" value="fscs" name="ac" />
            
            <dd class="form zhongjian">
                <span>出生年份(公历)</span>
				</br>
                <select name="nianfen" id="nian" class="select">
                    <option value="0">出生年份</option>
                        <option value="1921">1921年</option>
                        <option value="1922">1922年</option>
                        <option value="1923">1923年</option>
                        <option value="1924">1924年</option>
                        <option value="1925">1925年</option>
                        <option value="1926">1926年</option>
                        <option value="1927">1927年</option>
                        <option value="1928">1928年</option>
                        <option value="1929">1929年</option>
                        <option value="1930">1930年</option>
                        <option value="1931">1931年</option>
                        <option value="1932">1932年</option>
                        <option value="1933">1933年</option>
                        <option value="1934">1934年</option>
                        <option value="1935">1935年</option>
                        <option value="1936">1936年</option>
                        <option value="1937">1937年</option>
                        <option value="1938">1938年</option>
                        <option value="1939">1939年</option>
                        <option value="1940">1940年</option>
                        <option value="1941">1941年</option>
                        <option value="1942">1942年</option>
                        <option value="1943">1943年</option>
                        <option value="1944">1944年</option>
                        <option value="1945">1945年</option>
                        <option value="1946">1946年</option>
                        <option value="1947">1947年</option>
                        <option value="1948">1948年</option>
                        <option value="1949">1949年</option>
                        <option value="1950">1950年</option>
                        <option value="1951">1951年</option>
                        <option value="1952">1952年</option>
                        <option value="1953">1953年</option>
                        <option value="1954">1954年</option>
                        <option value="1955">1955年</option>
                        <option value="1956">1956年</option>
                        <option value="1957">1957年</option>
                        <option value="1958">1958年</option>
                        <option value="1959">1959年</option>
                        <option value="1960">1960年</option>
                        <option value="1961">1961年</option>
                        <option value="1962">1962年</option>
                        <option value="1963">1963年</option>
                        <option value="1964">1964年</option>
                        <option value="1965">1965年</option>
                        <option value="1966">1966年</option>
                        <option value="1967">1967年</option>
                        <option value="1968">1968年</option>
                        <option value="1969">1969年</option>
                        <option value="1970">1970年</option>
                        <option value="1971">1971年</option>
                        <option value="1972">1972年</option>
                        <option value="1973">1973年</option>
                        <option value="1974">1974年</option>
                        <option value="1975">1975年</option>
                        <option value="1976">1976年</option>
                        <option value="1977">1977年</option>
                        <option value="1978">1978年</option>
                        <option value="1979">1979年</option>
                        <option value="1980">1980年</option>
                        <option value="1981">1981年</option>
                        <option value="1982">1982年</option>
                        <option value="1983">1983年</option>
                        <option value="1984">1984年</option>
                        <option value="1985">1985年</option>
                        <option value="1986">1986年</option>
                        <option value="1987">1987年</option>
                        <option value="1988">1988年</option>
                        <option value="1989">1989年</option>
                        <option value="1990">1990年</option>
                        <option value="1991">1991年</option>
                        <option value="1992">1992年</option>
                        <option value="1993">1993年</option>
                        <option value="1994">1994年</option>
                        <option value="1995">1995年</option>
                        <option value="1996">1996年</option>
                        <option value="1997">1997年</option>
                        <option value="1998">1998年</option>
                        <option value="1999">1999年</option>
                        <option value="2000">2000年</option>
                        <option value="2001">2001年</option>
                        <option value="2002">2002年</option>
                        <option value="2003">2003年</option>
                        <option value="2004">2004年</option>
                        <option value="2005">2005年</option>
                        <option value="2006">2006年</option>
                        <option value="2007">2007年</option>
                        <option value="2008">2008年</option>
                        <option value="2009">2009年</option>
                        <option value="2010">2010年</option>
						<option value="1912">2011年</option>
                        <option value="1913">2012年</option>
                        <option value="1914">2013年</option>
                        <option value="1915">2014年</option>
                        <option value="1916">2015年</option>
                        <option value="1917">2016年</option>
                        <option value="1918">2017年</option>
                        <option value="1919">2018年</option>
                        <option value="1920">2019年</option>
						<option value="1920">2020年</option>
						<option value="1920">2021年</option>
                </select>年
                <SELECT name="chaoxiang" id="yue" class="select">
                    <option value="0">大门朝向</option>
                    <option value="1">西北</option>
                    <option value="2">西</option>
                    <option value="3">南</option>
                    <option value="4">东</option>
                    <option value="5">东南</option>
                    <option value="6">北</option>
                    <option value="7">东北</option>
                    <option value="8">西南</option>
                </SELECT>
            </dd>
            
            <dd class="form zhongjian">
				<div class=radio><strong>您的性别：</strong><input type="radio" name="xb" id="mingtype1" value="1" checked>
                <label for="mingtype1"></label>男
                <input name="xb" type="radio" id="mingtype2" value="2" >
                <label for="mingtype2"></label>女</div>
            </dd>
            <dd>
                <div align="center">
                    <input type="submit" name="submit" class="button" value="马上算命" /></div>
            </dd>
        </form>
    </dl>
</div>
<div>
    <{include file='./h5/public/more_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>

