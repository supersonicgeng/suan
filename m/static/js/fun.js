function stepMenu(){var A=$('.navs'),B=$('#side_nav'),C=B.find('A'),E=false,F=4,G=B.width();A.click(function(){if(!E){B.show();var d=G;var times=setInterval(function(){d-=G/F;$('#wraper,#fix_header').css('left',d-G);B.css('right',-d);if(d<=0){clearInterval(times);E=true;}},3);}else _hide()});C.eq(C.size()-1).click(function(){_hide()});$('body').click(function(){if(E)_hide()});function _hide(){var d=G;var times=setInterval(function(){d-=G/F;$('#wraper,#fix_header').css('left',-d);B.css('right',d-100);if(d<=0){clearInterval(times);E=false;B.hide();}},3);}}



var _hmt = _hmt || [];

(function() {

  var hm = document.createElement("script");

  hm.src = "//hm.baidu.com/hm.js?8baa342e0b7f4cf0a3180eddef6cbf03";

  var s = document.getElementsByTagName("script")[0]; 

  s.parentNode.insertBefore(hm, s);

})();



(function(){

    var bp = document.createElement('script');

    var curProtocol = window.location.protocol.split(':')[0];

    if (curProtocol === 'https') {

        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        

    }

    else {

        bp.src = 'http://push.zhanzhang.baidu.com/push.js';

    }

    var s = document.getElementsByTagName("script")[0];

    s.parentNode.insertBefore(bp, s);

})();