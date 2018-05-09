$(function(){
	$("#masthead").mouseover(function(){
		$("#masthead .swiper-button-prev,#masthead .swiper-button-next").attr("style","opacity:1")
	}).mouseleave(function(){
		$("#masthead .swiper-button-prev,#masthead .swiper-button-next").attr("style","opacity:0")
	})
	
})
$(".service-email").attr('href', ['mailto:', 's','e','r','v','i','c','e','@etongdai.com'].join(''));

$("#toolbar .online,#toolbar .service").hover(function(){
	$("#toolbar .service").show();
},function(){
    $("#toolbar .service").hide();
});
$("#toolbar .mobile,#toolbar .mobile-box").hover(function(){
	$("#toolbar .mobile-box").show();
},function(){
    $("#toolbar .mobile-box").hide();
});
$("#fixbar .download").hover(function(){
	$("#fixbar .downloadimg").show();
},function(){
    $("#fixbar .downloadimg").hide();
});

$(".back").click(function(){
	$('body,html').animate({
		scrollTop: 0
	}, 500);
});
$("#_menu li").click(function(){
	$(this).children("a").addClass("current").siblings().removeClass("current");		
});

$(window).scroll(function(){
	if($(window).scrollTop()>500){
		$("#fixbar .back").css({"display":"block"});
	}else{
		$("#fixbar .back").css({"display":"none"});
	}
});
//默认选中
function defCurr(obj, add){
	obj.addClass(add);
}