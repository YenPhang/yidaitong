//移动终端跳转至微信端首页
(function(){
  if (navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i)) {
    var url = window.location.pathname;
    var notJumpUrlRules = [
      /p2p\/abouts\/abouts_company\.html/,
      /p2p\/abouts\/abouts_provision\.html/,
      /p2p\/help\/.+\/\d{8}[\/\d]\d{4,}\.html/,
    ];
    for (var i = 0; i < notJumpUrlRules.length; i++) {
      if (notJumpUrlRules[i].test(url)) {
        return;//不跳转
      }
    }
    if (/^\/p2p\/help/.test(url)) {
      console.log("帮助中心跳转");
      window.location.href=Stringserver.msslServer+"/static/helpCenter/eGuide.html?u=1";
      return;
    }
    console.log("跳转至微信首页");
    window.location.href=Stringserver.msslServer;
  }
})();


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

<!-- qq企业客服 start-->
$(function(){
    var qqScriptId = $.cookie('qqScriptId');
    var qqScriptSrc = $.cookie('qqScriptSrc');
    $("body").before("<script id='" + qqScriptId + "' src = '" + decodeURI(qqScriptSrc) + "' charset='utf-8' async defer>");
})
$(".qq-server").click(function(){
    $(".qidian_wpa_img").click();
})
<!-- qq企业客服 end-->