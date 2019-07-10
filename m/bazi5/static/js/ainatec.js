$(function(){
	$(".weixin_share").bind("click",function(){
		$(".footer_shade").show();
	})
	$(".footer_shade").bind("click",function(){
		$(this).hide();
	})
	//控制面板
	$(".j-panel").on("click",function(){
		var box = $(".panelBox");
		var Bg = $(".panelBg,.panelClose");
		box.addClass("panelActive");
		Bg.show();
		Bg.on("click",function(){
			Bg.hide();
			box.removeClass("panelActive");
		})
		$('html,body').scrollTop(0);
	})
	$('input').customInput();
})

//自定义单选多选按钮
jQuery.fn.customInput = function(){
$(this).each(function(i){
	if($(this).is('[type=checkbox],[type=radio]')){
		var input = $(this);
		var label = $('label[for='+input.attr('id')+']');
		var inputType = (input.is('[type=checkbox]')) ? 'checkbox' : 'radio';
		$('<div class="custom-'+ inputType +'"></div>').insertBefore(input).append(input,label);
		var allInputs = $('input[name='+input.attr('name')+']');
		input.bind('updateState',function(){
			if(input.is(':checked')){
				if(input.is(':radio')){
					allInputs.each(function(){
						$('label[for='+$(this).attr('id')+']').removeClass('ui-state-active');
					});
				};
				label.addClass('ui-state-active');
			} else {
				label.removeClass('ui-state-active');
			}
		})
		.trigger('updateState')
		.click(function(){
			$(this).trigger('updateState');
		})
	}
});
}