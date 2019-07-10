<{include file='./h5/header.tpl'}>
<div class="CommonSwiper">
	<div class="swiper-container swiper-container-horizontal swiper-container-wp8-horizontal">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="http://sm.03ky.com/?ac=bazijp"><img src="static/img/11.jpg" class="index_img">
					<p class="img_title"></p>
				</a>
			</div>
			
			<div class="swiper-slide">
				<a href="https://www.03ky.com/xingzuo/"><img src="/static/img/22.jpg" class="index_img">
					<p class="img_title"></p>
				</a>
			</div>
			<div class="swiper-slide">
				<a href="https://www.03ky.com/jiajufengshui/bangong/"><img src="static/img/33.jpg" class="index_img">
					<p class="img_title"></p>
				</a>
			</div>
			</div>
		<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
	</div>
</div>
<script type="text/javascript" src="http://sm.03ky.com/statics/ffsm/index/swiper.min.js"></script>
<link href="/static/css/swiper.min.css" rel="stylesheet" type="text/css">
<script>
	//图片轮播
	var swiper = new Swiper('.swiper-container', {
		slidesPerView: 1,
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
		loop: true,
		pagination: {
			el: '.swiper-pagination',
			clickable: false,
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	});

	//TAB——Box
	var switchBox=$('.m-wrap'),
		switchTit=$('#tab>li');
	function xun(num){
		for(var i=0,len=switchBox.length;i<len;i++){
			if(num == i){
				switchBox[i].style.display="block";
			}else{
				switchBox[i].style.display='none';
			}
		}
	}
	for(var j=0;j<switchTit.length;j++){
		switchTit[j].setAttribute('data-num',j);
		switchTit[j].addEventListener('click',function(){
			var num=this.getAttribute('data-num');
			$(this).parents('ul').find('li').find('div').removeClass('select').siblings('span').removeClass('line');
			$(this).find('div').addClass('select').siblings('span').addClass('line');
			xun(num);
		})
	}
</script>
<script>stepMenu();</script>
<div class="basebox">
	<div class="bt">
		<p>号码吉凶</p>
		<a href="/">更多 &gt;</a>
	</div>
	<div class="number_item">
		<div class="lis">
			<a href="/haoma/shouji/">
				<div class="ico"><span class="ico_1"></span></div>
				<div class="info">
					<div class="bt">手机号码测吉凶</div>
					<div class="miaoshu">手机号蕴含的吉凶祸福</div>
				</div>
			</a>
			<a href="/haoma/qq/">
				<div class="ico"><span class="ico_2"></span></div>
				<div class="info">
					<div class="bt">QQ号码测吉凶</div>
					<div class="miaoshu">qq号蕴含的吉凶祸福</div>
				</div>
			</a>
		</div>
		<div class="lis">
			<a href="/haoma/chepai/">
				<div class="ico"><span class="ico_3"></span></div>
				<div class="info">
					<div class="bt">车牌号码测吉凶</div>
					<span class="miaoshu">车牌号蕴含的吉凶祸福</span>
				</div>
			</a>
			<a href="/haoma/shenfenzheng/">
				<div class="ico"><span class="ico_4"></span></div>
				<div class="info">
					<div class="bt">身份证号码测吉凶</div>
					<div class="miaoshu">身份证蕴含的吉凶祸福</div>
				</div>
			</a>
		</div>
	</div>
</div>
<div class="basebox">
	<div class="bt">
		<p>配对查询</p>
		<a href="/">更多 &gt;</a>
	</div>
	<div class="peidui_item">
		<a href="/peidui/xingzuo/"><img src="/static/img/pd-xz.png" alt=""></a>
		<a href="/peidui/shengxiao/"><img src="/static/img/pd-sx.png" alt=""></a>
		<a href="/peidui/xuexing/"><img src="/static/img/pd-xx.png" alt=""></a>
		<a href="/peidui/hehun/"><img src="/static/img/pd-bz.png" alt=""></a>
	</div>
</div>
<div id="navi">
    <{include file='./h5/public/h5_nav.tpl'}>
</div>
<{include file='./h5/public/news.tpl'}>
<{include file='./h5/footer.tpl'}>