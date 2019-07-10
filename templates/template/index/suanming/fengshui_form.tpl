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
                        <h1>风水测算</h1>
                    </div>
                    <div class="bd">
                       
                       <div class="mod_box_t3 fn_box">
							<div class="box_con">
								<div class="mod_form">
                                <form action="/index.php" method="post">
                                <input type="hidden" value="suanming" name="ct" />
                                <input type="hidden" value="fscs" name="ac" />
									<div class="form_item">
										请选择&nbsp;
										<select id="sex" name="xb" class="select wA">
											<option value="0">性别</option>
					                        <option value="1">男</option>
					                        <option value="2">女</option>
					                    </select>
										<select id="year" name="nianfen" class="select wB">
						<option value="0">出生年份</option>
                        <option value="1912">1912年</option>
                        <option value="1913">1913年</option>
                        <option value="1914">1914年</option>
                        <option value="1915">1915年</option>
                        <option value="1916">1916年</option>
                        <option value="1917">1917年</option>
                        <option value="1918">1918年</option>
                        <option value="1919">1919年</option>
                        <option value="1920">1920年</option>
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
										</select>
										<select id="fx" name="chaoxiang" class="select wC">
                                            <option value="0">大门朝向</option>
                                            <option value="1">西北</option>
                                            <option value="2">西</option>
                                            <option value="3">南</option>
                                            <option value="4">东</option>
                                            <option value="5">东南</option>
                                            <option value="6">北</option>
                                            <option value="7">东北</option>
                                            <option value="8">西南</option>
										</select>
									</div>
									<div class="form_item btn_item">
										<input id="t_search" type="submit" value="开始测算" class="btn_orange">
									</div>
                                    </form>
								</div>
                                
                                <div class="help_area">
									<span class="help_tit"><i></i>相关帮助：</span>
                                    [<a href="http://www.bazi5.com/fengshuicesuan/1/1980/西北/" title="80年朝向西北风水" target="_blank">80年朝向西北</a>]
                                    [<a href="http://www.bazi5.com/fengshuicesuan/2/1987/东南/" title="87年朝向东南(女)风水" target="_blank">87年朝向东南(女)</a>]
                                    [<a href="http://www.bazi5.com/fengshuicesuan/1/1990/东北/" title="90年朝向东北风水" target="_blank">90年朝向东北</a>]
                                    [<a href="http://www.bazi5.com/fengshuicesuan/1/1993/西南/" title="93年朝向西南风水" target="_blank">93年朝向西南</a>]
									[<a href="http://www.bazi5.com/fengshuicesuan/1/1950/北/" title="50年朝向北风水" target="_blank">50年朝向北</a>]
								</div>
                                
							</div>
							
						</div>
                        
                        <div class="introWord">
                        <p>通过<a href="<{$web_url}>">开运网</a>风水测算，输入年份，性别，朝向来测试你所在的环境在你的八字下是否是一块风水宝地</p>
                        <p>风水的核心思想是人与大自然的和谐，早期的风水主要关乎宫殿、住宅、村落、墓地的选址、座向、建设等方法及原则。"风水"本为相地之术，即临场校察地理的方法，也叫地相、古称堪舆术，是一种研究环境与宇宙规律的哲学。认为人既然是自然的一部分，自然也是人的一部分，那么达到"天人合一"的境界是再平常不过的了。相传风水的创始人是九天玄女，比较完善的风水学问起源于战国时代。</p>
						<p>风水是人类在长期的居住实践中积累的宝贵经验。朝阳光、避风雨、防火灾，近水源、利出行成了最基本的居住理论。风水贯寄在中国传统建筑活动的各个过程。从选址规划、建筑单体、园林小品、室内外装修设计到施工营造，几乎无所不在。</p>
										</div><!-- 热词 end--></div><i class="flag_tl_t1"></i><i class="flag_tr_t1"></i></div>
                                        
                                        
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

