<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>易通贷-财富结缘 易生相伴-中国互联网金融领域资深服务品牌</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta name="description" content="易通贷成立于2011年3月,注册资金1.5亿元,是中国互联网金融领域资深服务品牌.易通贷秉承着普惠大众,通达天下的服务理念,以打造“互联网金融百年老店”为发展愿景,诚信经营,合规发展,是中国老百姓值得信赖的互联网财富管理伙伴.">
<meta name="keywords" content="P2P理财,P2P网贷,投资理财,网络理财,网络投资,小额投资理财,如何投资理财,个人理财,家庭理财,易通贷">
<link type="/image/x-icon" rel="Icon" href="/etd.ico" />
<link type="/image/x-icon" rel="Shortcut Icon" href="/etd.ico" />
<link type="/image/x-icon" rel="Bookmark" href="/etd.ico" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--[if IE 6]>
<script src="js/dd_belatedpng.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.png,.png:hover,img,background');
</script>
<![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/com.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/tf.css" >
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/iconfont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/register/css/common.css">
<script>
Stringserver={
	server:"https://app.etongdai.com",
	staticServer:"https://www.etongdai.com",
	sslServer:"https://app.etongdai.com",
	mobileServer:"https://m.etongdai.com"
}
</script>
<script src="${pageContext.request.contextPath }/statics/register/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/register/js/digital.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/register/js/base.js"></script>

<script src="${pageContext.request.contextPath }/statics/register/js/eframe.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/register/js/fancyselect.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/register/js/md5.js"></script>
<script type="text/javascript" charset="utf-8">
$(function(){
//		Stringserver.server=Stringserver.server || "";
		var userName=$.cookie('_username');
		var loginHtml="";
    	var myAccountHtml="";
			if(userName){
				loginHtml="<div class='welcome'>欢迎您，</div><a href='https://app.etongdai.com/account/index'>"+userName+"</a>" + 
				"<a href='https://app.etongdai.com/login/logout'>退出登录</a>";
                myAccountHtml="<a class=\"account\" href=\"https://app.etongdai.com/account/index\" title=\"我的账户\"><i class=\"iconfont\">&#xe637;</i>我的账户</a>";
                showRedTicket();
			}else{
                myAccountHtml="<span id=\"register_log\" class=\"nvestingSafety\"><a id='fenliu' href='https://app.etongdai.com/register/index'>注册</a><i>/</i><a href='https://app.etongdai.com/login/index' id=\"fenliu_log\">登录</a></span>";
			}
		$("#isLoginHead").html(loginHtml);
    	$("#accountStatus").html(myAccountHtml);
//		registerFenliu();
		thousand_char($(".thousand_char"), 2);
	
		//var cur_domain = document.domain;
		//if(cur_domain.indexOf("test") != -1 || cur_domain.indexOf("www") != -1){
		//	$("#fixbar .hbgif").show();
		//}else{
			// 新手任务
		//	$.ajax({
		//		type : "post",
		//		dataType : "json",
		//		url : "/showNewTaskFlag",
		//		error : function(){},
		//		success : function(data){
		//			if(data.body){
		//				$("#fixbar .hbgif").show();
		//			}
		//		}
		//	});
		//}
		
})

//显示红包金额
function showRedTicket(){
	$.ajax({
		type : "post",
		dataType : "json",
		url : "/getRedTicketForIndex",
		error : function(){},
		success : function(data){
			if(data.success){
				$("#noLogin").hide();
				$("#logined").show();
				if(data.ticketAmount <= 0){
					$("#noRed").show();
				}else{
					$("#showRed").show();
					$("#userRedAmount").append(data.ticketAmount);
				}
			}
		}
	});
}
function startAnimation(){
	$(".global-header .banner-loop").delay(3000).animate({opacity:0},500,"linear",function(){
		$(".global-header .banner-loop").css("background-image","url(images/banner_03.png)");
		$(".global-header .banner-loop").animate({opacity:1},500,"linear",function(){
			$(".global-header .banner-loop").delay(2000).animate({opacity:0},500,"linear",function(){
				$(".global-header .banner-loop").css("background-image","url(images/banner_02.png)");
				$(".global-header .banner-loop").animate({opacity:1},500,"linear",startAnimation);
			});
		});
	});
}
$(function(){
	startAnimation();
});

function kf_online(){
	var userName=$.cookie('_username');
	var userMobile=$.cookie('_userMobile');
	if(userName){
		if(userMobile != null && userMobile != ''){
			window.open("http://im.etongdai.com/webchat.html?custAcc="+userMobile+"&vip=0&mediaType=1",'_blank');
		}else{
			window.open("http://im.etongdai.com/webchat.html?custAcc=null&vip=0&mediaType=1",'_blank');
		}
	}else{
		window.open("http://im.etongdai.com/webchat.html?custAcc=null&vip=0&mediaType=1",'_blank');
	}
}
</script>
</script>
<script type='text/javascript'>
	var userId=$.cookie('_userId');
	var birthYear = $.cookie('_birthYear');
	var gender = $.cookie('_gender');
	var _vds = _vds || [];
	window._vds = _vds;
	(function(){
		_vds.push(['setAccountId', '84873cbf3be76fe4']);
        if(userId != null && userId != ''){
        	_vds.push(['setCS1', 'userId', userId]);
        	_vds.push(['setCS2', 'gender', gender]);
        	_vds.push(['setCS3', 'birthYear', birthYear]);
        }
        (function() {
			var vds = document.createElement('script');
			vds.type='text/javascript';
          	vds.async = true;
         	vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
          	var s = document.getElementsByTagName('script')[0];
          	s.parentNode.insertBefore(vds, s);
		})();
	})();

</script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/register/css/register.css" />
	<style>
		.agree a:hover{color:#46bff8!important;}
	</style>
</head>
<body>
<header class="grid global-header">
    <div class="grid-unit-1-3 logo">
        <img src="picture/banner_01.png" onclick="location.href='https://app.etongdai.com'" alt="易通贷" title="易通贷" />
        <div class="banner-loop" onclick="location.href='https://app.etongdai.com'"></div>
    </div>
    <p class="grid-unit-1-3 hotline">服务热线：<strong>400-064-5156</strong></p>
</header>

<section class="content">
    <div class="clearfix">
        <div class="content-left">
            <img src="${pageContext.request.contextPath }/statics/register/picture/register-left.png" onclick="window.open('https://app.etongdai.com/static/novice-guide/index.html')"
                 ondragstart="return false">
            <div class="ercode">
                <img src="${pageContext.request.contextPath }/statics/register/picture/download-ercode.png" alt="下载易通贷客户端">
                <p>扫描二维码<br>下载易通贷客户端</p>
                <img src="${pageContext.request.contextPath }/statics/register/picture/qrode_02.png" alt="关注微信服务号">
                <p>扫描二维码<br>关注微信服务号</p>
            </div>
        </div>
        <form class="register-form">
            <h3>快速注册</h3>
            <span class="for-login">已有账号？<a href="https://app.etongdai.com/login/index">立即登录</a></span>
            <div class="reg phone">
                <i></i>
                <input type="text" class="phoneInp" onkeyup="this.value=this.value.replace(/[^\d.]/g,'')" maxlength="11" placeholder="请输入手机号">
                <input type="password" style="display: none">
                <p class="tip redColor"></p>
            </div>
            <div class="reg password">
                <i></i>
                <input type="password" id="passwordInp" class="passwordInp" onkeyup="this.value=this.value.replace
                (/[^a-zA-Z\d]/g,'')" maxlength="16"
                       placeholder="请输入6-16位密码">
                <span class="eye"></span>
                <p class="tip"></p>
                <p class="tip2">
                    <span class="color1"></span>
                    <span class="color2"></span>
                    <span class="color3"></span>
                </p>
            </div>
            <div class="reg imgCode">
                <i></i>
                <input type="text" class="imgCodeInp" maxlength="4" placeholder="请输入图片验证码">
                <img class="imgCodePic" src="" />
				<p class="tip"></p>
            </div>
            <div class="reg smscode">
                <i></i>
                <input type="text" class="smscodeInp" onkeyup="this.value=this.value.replace(/[^\d.]/g,'')" maxlength="6" placeholder="请输入短信验证码">
                <button type="button" class="sms-code">获取验证码</button>
                <p class="tip"></p>
            </div>
            <p class="friend-box"><span><i></i>请输入用户名</span></p>
            <div class="reg friend">
                <i></i>
                <input type="text" class="friendInp" maxlength="30" placeholder="请输入用户名">
                <p class="tip"></p>
            </div>
            <div class="protocol">
                <input type="checkbox" id="checkbox1" checked>
                <span>我已阅读并同意<a href="https://www.etongdai.com/p2p/help/protocol/20170518/7686.html" target="_blank" style="text-decoration: none; color: #2EA7E0; cursor: pointer;
">《注册协议》</a></span>
            </div>
            <p class="err-info"></p>
            <button type="button" class="reg-btn">提交注册</button>
            <input type="hidden" name="next" />
        </form>
        <form class="regsuc-from" action="/register/registerSuccess" >
            <input type="hidden" name="url">
        </form>
    </div>
</section>

<footer>
    <p>版权所有 © 北京易通贷金融信息服务有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司地址：北京市海淀区丹棱街1号互联网金融中心7层&nbsp;&nbsp;&nbsp;&nbsp;办公时间：周一至周五 9:00-18:00</p>
    <p>
        <a target="_blank" href="http://www.miitbeian.gov.cn" style="color:#3f3a39; cursor:pointer;">备案号:京ICP备11042752号-4</a>&nbsp;&nbsp;&nbsp;
        <a target="_blank" href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=%E4%BA%ACICP%E8%AF%81140393%E5%8F%B7&amp;pageNo=1" style="color:#3f3a39; cursor:pointer;">京ICP证140393号</a>&nbsp;&nbsp;&nbsp;
        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802024662"
           style="display:inline-block;text-decoration:none; vertical-align: top;">
            <img src="${pageContext.request.contextPath }/statics/register/picture/ghs.png" style="float:left; padding-top: 3px;"/>
            <span style="float:left;margin: 0px 0px 0px 5px;">京公网安备 11010802024662号</span>
        </a>
    </p>
</footer>
<script>
$(".eye").click(function(){
	var obj = document.getElementById("passwordInp");
    if(obj.type == 'text'){
		obj.type = 'password';
        $(".eye").css({"background": "url(images/eye-hide.png) no-repeat center 12px",
								  "background-size": "100% auto"});
	}else if(obj.type == 'password'){
        obj.type = 'text';
        $(".eye").css({"background": "url(images/eye.png) no-repeat center center",
                                  "background-size": "100% auto"});
	}
})

function request(type,url,data,success){
	$.ajax({
	   type:type,
	   url:url,
	   data:data,
	   success:success,
	   error:function(e){
		   console.log(e);
	   }
   })
}
//手机号验证
function phoneCheck(){
	var _self = $(".phoneInp");
	var phoneVal = _self.val();
    var regx = /^((13[0-9])|(15[^4])|(18[0-9])|(17[0,1,3-8])|(14[5-8])|(166)|(198)|(199))+\d{8}$/;
	if(phoneVal.length == 0){
		_self.siblings(".tip").html("请输入手机号");
		return false
	}
	if(phoneVal.length < 11 || (!regx.test(phoneVal))){
		_self.siblings(".tip").html("请输入正确的手机号");
		return false
	}
    _self.siblings(".tip").html("");
	return true
}
$(".phoneInp").on('focus', function(){
    $(this).parent(".reg").addClass("reg-focus");
    $(this).siblings(".tip").html("");
})
$(".phoneInp").on('blur', function(){
    $(this).parent(".reg").removeClass("reg-focus");
    $(".phoneInp").siblings(".tip").html("");
})
//密码验证
function passwordCheck(){
	var enoughRegex = new RegExp("(?=.{7,}).*", "g");
	var mediumRegex = new RegExp(
			"^(?=.{8,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
			"g");
	var _self = $(".passwordInp");
	var passwordVal = _self.val();
	if(passwordVal.length == 0){
		_self.siblings(".tip2").removeClass("ruo zhong qiang");
		/*_self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");*/
		return
	}
	if(!enoughRegex.test(passwordVal)){
		//ruo
		_self.siblings(".tip").html("");
		_self.siblings(".tip2").removeClass("zhong").removeClass("qiang").addClass("ruo");
	}else if(mediumRegex.test(passwordVal)){
		//qiang
		_self.siblings(".tip").html("");
		_self.siblings(".tip2").removeClass("ruo").removeClass("zhong").addClass("qiang");
	}else{
		//zhong
		_self.siblings(".tip").html("");
		_self.siblings(".tip2").removeClass("ruo").removeClass("qiang").addClass("zhong");
	}
	return true
}
$(".passwordInp").on("focus", function(){
    $(this).parent(".reg").addClass("reg-focus");
    $(this).siblings(".tip").html("");
})
$(".passwordInp").on("keyup", function(){
    passwordCheck();
})
$(".passwordInp").on("blur", function(){
    $(this).parent(".reg").removeClass("reg-focus");
    $(".passwordInp").siblings(".tip").html("");
})
//图片验证码验证
function checkImgCode(){
    var _self = $(".imgCodeInp");
    var imgCodeVal = _self.val();
    if(imgCodeVal == 0){
        _self.siblings(".tip").html("请输入图片验证码");
    }
    if(imgCodeVal < 4){
        _self.siblings(".tip").html("请输入正确的图片验证码");
    }
    _self.siblings(".tip").html("");
}
$(".imgCodeInp").on("focus", function(){
    $(this).parent(".reg").addClass("reg-focus");
    $(this).siblings(".tip").html("");
})
$(".imgCodeInp").on("blur", function(){
    $(this).parent(".reg").removeClass("reg-focus");
    $(this).siblings(".tip").html("");
})

//短信验证码验证
function smscodeCheck(){
	var _self = $(".smscodeInp");
	var smscodeVal = _self.val();
	if(smscodeVal.length == 0){
		_self.siblings(".tip").html("请输入短信验证码");
		return false
	}
    if(smscodeVal.length < 6){
        _self.siblings(".tip").html("请输入正确的短信验证码");
        return false
    }
    _self.siblings(".tip").html("");
    return true
}
$(".smscodeInp").on("focus", function(){
    $(this).parent(".reg").addClass("reg-focus");
    $(this).siblings(".tip").html("");
})
$(".smscodeInp").on("blur", function(){
    $(this).parent(".reg").removeClass("reg-focus");
})
//短信验证码倒计时
var waitFind = 60;
function timeFind(o) {
    if (waitFind == 0) {
        $(o).removeAttr("disabled");
        $(".sms-code").html("再次发送<br />验证码");
        $(".sms-code").removeClass("sms-code-disabled").removeAttr('disabled');
        waitFind = 60;
    } else {
        $(o).attr("disabled", "disabled");
        $(".sms-code").html(+waitFind + "秒后<br />可再次发送");
        $(".sms-code").addClass("sms-code-disabled").attr("disabled", "disabled");
        waitFind--;
        setTimeout(function() {
            timeFind(o);
        }, 1000);
    }
}
//获取短信验证码
var isThreeErr = false;
$(".sms-code").click(function(){
    if(phoneCheck()){
        var _self = $(".passwordInp");
        var passwordVal = $(".passwordInp").val();
        if(passwordVal.length == 0 || passwordVal.length <6){
            _self.siblings(".tip2").removeClass("ruo zhong qiang");
            _self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");
            return
        }else{
            if(passwordCheck()){
                var reg1 = /[a-zA-Z]+/;
                var reg2 = /[0-9]+/;
                var reg3 = /\s+/;
                if(!(reg1.test(passwordVal) && reg2.test(passwordVal) && !reg3.test(passwordVal))){
                    _self.siblings(".tip2").removeClass("ruo zhong qiang");
                    _self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");
                    return
                }
                if(isThreeErr){
                    var _self = $(".imgCodeInp");
                    var imgCodeVal = _self.val();
                    if(imgCodeVal == 0){
                        _self.siblings(".tip").html("请输入图片验证码");
                        return
                    }
                }
                var data = {
                    mobile: $(".phoneInp").val(),
                    password: toMd5($(".passwordInp").val()),
                    imgCode: $(".imgCodeInp").val(),
                    imgCodeFlag: !isThreeErr?'0':'1'
                }
                var success = function(data){
                    var data = $.parseJSON(data);
                    if(data.success){
                        $(".imgCodeInp").siblings(".tip").html("");
                        $(".err-info").html("");
                        timeFind($(".sms-code"));
                    }else{
                        if(data.code == '1'){
                            $(".phoneInp").siblings(".tip").html(data.info);
                        }else if(data.code == '2'){
                            $(".passwordInp").siblings(".tip").html(data.info);
                        }else if(data.code == '3'){
                            if(!isThreeErr){
                                $(".imgCodeInp").siblings(".tip").html('');
                            }else{
                                $(".imgCodeInp").siblings(".tip").html(data.info);
                            }
                            $(".imgCodeInp").val("");
                            $(".imgCodePic").attr({
                                                      src : "/validCode?" + new Date().getTime()
                                                  });
                            $(".reg.imgCode").show();
                            isThreeErr = true;
                        }else if(data.code == '6'){
                            $(".err-info").html(data.info);
                        }
                    }
                }
                request("post", "/register/sendWhiteLogBor2", data, success)
            }
        }
    }
})
//邀请人
$(".friend-box>span").click(function(){
    $(".reg.friend").toggle()
    $(this).children("i").toggleClass("i-icon2")
    /*if(friendHeight != 0){
        $(".friend-box>span>i").css({"background-image":"url(images/arrow-bottom.png)"});
        $(".reg.friend").css({"display": "none"});
	}else{
        $(".friend-box>span>i").css({"background-image":"url(images/arrow-top.png)"});
        $(".reg.friend").css({"display": "block"});
	}*/
})
$(".friendInp").on("focus", function(){
    $(this).parent(".reg").addClass("reg-focus");
    $(this).siblings(".tip").html("");
})
$(".friendInp").on("blur", function(){
    $(this).parent(".reg").removeClass("reg-focus");
})
//同意协议
$(".protocol").change(function(){
    var isChecked = $("#checkbox1").prop("checked");
    if(isChecked){
		$(".reg-btn").removeClass("reg-btn-disabled").removeAttr("disabled");
	}else{
        $(".reg-btn").addClass("reg-btn-disabled").attr("disabled","disabled");
	}
})
//提交注册
function register(){
    $(".err-info").html("");
    if(phoneCheck()){
        var _self = $(".passwordInp");
        var passwordVal = _self.val();
        if(passwordVal.length == 0 || passwordVal.length <6){
            _self.siblings(".tip2").removeClass("ruo zhong qiang");
            _self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");
            return
        }else{
            if(passwordCheck()){
                var reg1 = /[a-zA-Z]+/;
                var reg2 = /[0-9]+/;
                var reg3 = /\s+/;
                if(!(reg1.test(passwordVal) && reg2.test(passwordVal) && !reg3.test(passwordVal))){
                    _self.siblings(".tip2").removeClass("ruo zhong qiang");
                    _self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");
                    return
                }
                if(isThreeErr){
                    var _self = $(".imgCodeInp");
                    var imgCodeVal = _self.val();
                    if(imgCodeVal.length == 0){
                        _self.siblings(".tip").html("请输入图片验证码");
                        return
                    }
                    if(imgCodeVal.length < 4){
                        _self.siblings(".tip").html("请输入正确的图片验证码");
                        return
                    }
                }
                if(smscodeCheck()){
                    var data = {
                        userMobile: $(".phoneInp").val(),
                        userDraftLoginPswd: toMd5($(".passwordInp").val()),
                        imgCode: $(".imgCodeInp").val(),
                        imgCodeFlag: isThreeErr?'1':'0',
                        smsCode: $(".smscodeInp").val(),
                        inviterName: $(".friendInp").val(),
                        checkFlag: $("#checkbox1").prop("checked")?'on':'off',
                        next: $("input[name=next]").val()
                    }
                    var success = function(data){
                        var data = $.parseJSON(data);
                        var body = data.body;
                        if(data.success){
                            $(".regsuc-from input").val(body);
                            $(".regsuc-from").submit();
                        }else{
                            if(data.code == '1'){
                                $(".phoneInp").siblings(".tip").html(data.info);
                            }else if(data.code == '2'){
                                $(".passwordInp").siblings(".tip").html(data.info);
                            }else if(data.code == '3') {
                                if(!isThreeErr){
                                    $(".imgCodeInp").siblings(".tip").html('');
                                }else{
                                    $(".imgCodeInp").siblings(".tip").html(data.info);
                                }
                                $(".imgCodeInp").val("");
                                $(".imgCodePic").attr({
                                                          src: "/validCode?" + new Date().getTime()
                                                      });
                                $(".reg.imgCode").show();
                                isThreeErr = true;
                            }else if(data.code == '4'){
                                $(".smscodeInp").siblings(".tip").html(data.info);
                            }else if(data.code == '5'){
                                $(".friendInp").siblings(".tip").html(data.info);
                                $(".reg.friend").css({"display": "block"});
                            }else if(data.code == '6'){
                                $(".err-info").html(data.info);
                            }
                        }
                    }
                    request("post", "/register/mobileReg", data, success)
                }

            }
        }
    }

}
$(".reg-btn").unbind("click").bind("click", function(){
    register();
})
$(function() {
	//
	var thirdParty = $.cookie("thirdParty");
	if(thirdParty&&thirdParty!=""){
		$("input[name=next]").val(thirdParty);
	}
	$(".imgCodePic").attr({
		src : "/validCode?" + new Date().getTime()
	});
	$(".imgCodePic").click(function() {
		this.src = "/validCode?" + new Date().getTime();
	});
});
</script>
</body>
</html>