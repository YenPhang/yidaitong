﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link href="${pageContext.request.contextPath }/statics/login/css/com.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/login/css/tf.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/login/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/login/css/iconfont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/login/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/login/css/common.css">
<script>
Stringserver={
	server:"https://app.etongdai.com",
	staticServer:"https://www.etongdai.com",
	sslServer:"https://app.etongdai.com",
	mobileServer:"https://m.etongdai.com"
}
</script>
<script src="${pageContext.request.contextPath }/statics/login/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/login/js/digital.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/login/js/base.js"></script>

<script src="${pageContext.request.contextPath }/statics/login/js/eframe.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/login/js/fancyselect.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/login/js/md5.js"></script>
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
		$(".global-header .banner-loop").css("background-image","url(statics/login/images/banner_03.png)");
		$(".global-header .banner-loop").animate({opacity:1},500,"linear",function(){
			$(".global-header .banner-loop").delay(2000).animate({opacity:0},500,"linear",function(){
				$(".global-header .banner-loop").css("background-image","url(statics/login/images/banner_02.png)");
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

</script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/login/css/login.css" />
    <script>
		function loadImg(url){
			var img = new Image();
			img.src = url
		}
		(function(){
            loadImg("/img/log_reg/ditou.gif")
            loadImg("/img/log_reg/taitou.gif")
            loadImg("/img/log_reg/wyj.gif")
		})()
	</script>
</head>
<body>
	<header class="grid global-header">
        <div class="grid-unit-1-3 logo">
            <img src="${pageContext.request.contextPath }/statics/login/picture/banner_01.png" onclick="location.href='https://app.etongdai.com'" alt="易通贷" title="易通贷" />
            <div class="banner-loop" onclick="location.href='https://app.etongdai.com'"></div>
        </div>
		<div class="grid-unit-1-2" style="float: right">
            <p class="register">没有账号？<a href="https://app.etongdai.com/register/index">立即注册</a></p>
            <p class="hotline">服务热线：<strong>400-064-5156</strong></p>
		</div>
	</header>
	
	<section class="content">
	  <div class="clearfix">
	    <div class="content-left">
	      <img src="${pageContext.request.contextPath }/statics/login/picture/login-left.png" ondragstart="return false">
	      <div class="ercode">
	        <img src="${pageContext.request.contextPath }/statics/login/picture/download-ercode.png" alt="下载易通贷客户端">
	        <p>扫描二维码<br>下载易通贷客户端</p>
	        <img src="${pageContext.request.contextPath }/statics/login/picture/qrode_02.png" alt="关注微信服务号">
	        <p>扫描二维码<br>关注微信服务号</p>
	      </div>
	    </div>
	    <form class="login-form">
		  <div class="form-banner">
            <div class="mxy">
                <img src="${pageContext.request.contextPath }/statics/login/picture/mxy-01.png" alt="">
			</div>
		  </div>
	      <div class="log phone">
	        <i></i>
	        <input type="text" class="userInp"  name="userInp"  maxlength="30" placeholder="请输入手机号/用户名/邮箱">
            <input type="password" style="display: none">
	        <p class="tip"></p>
	      </div>
	      <div class="log password">
	        <i></i>
	        <input type="password" id="passwordInp"  name="logPsw" maxlength="16" placeholder="请输入密码">
	        <p class="tip"></p>
	      </div>
	      <div class="log imgCode">
	        <i></i>
	        <input type="text" class="imgCodeInp" maxlength="4" placeholder="请输入图片验证码">
	        <img class="imgCodePic" src="" />
	        <p class="tip"></p>
	      </div>
	      <div class="tool">
	        <label for="remember">
	          <input type="checkbox" id="remember" checked>
	          <span>记住用户名</span>
	        </label>
	        <a class="forget" href="https://app.etongdai.com/retrievepassword/findPassWord">忘记密码</a>
	      </div>
	      <p class="err-info"></p>
	      <button type="button" class="login-btn">登录</button>
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
				<img src="${pageContext.request.contextPath }/statics/login/picture/ghs.png" style="float:left; padding-top: 3px;"/>
				<span style="float:left;margin: 0px 0px 0px 5px;">京公网安备 11010802024662号</span>
			</a>
		</p>
	</footer>

	<script>

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
	//验证手机号/用户名/邮箱
	function checkUser(){
		var _self = $(".userInp");
		var userVal = _self.val();
		if(userVal == 0){
			 _self.siblings(".tip").html("请输入手机号/用户名/邮箱");
			 return false
		}
		 _self.siblings(".tip").html("");
		 return true
	}
/* 	$(".userInp").on("focus", function(){
        $(this).parent(".log").addClass("log-focus");
        $(this).siblings(".tip").html("");
        $(".mxy>img").attr({"src": "/img/log_reg/ditou.gif"})
	})
	$(".userInp").on("blur", function(){
        $(this).parent(".log").removeClass("log-focus");
        $(".mxy>img").attr({"src": "/img/log_reg/mxy-01.png"})
	}) */
	//验证密码
	function checkPassword(){
		var _self = $(".passwordInp");
		var passwordVal = _self.val();
		if(passwordVal.length == 0){
			 _self.siblings(".tip").html("请输入密码");
			 return false
		}
		if(passwordVal.length<6||passwordVal.length>16){
			 _self.siblings(".tip").html("请输入6-16位字母和数字组合的密码");
			 return false
		}
		_self.siblings(".tip").html("");
		return true
	}
/* 	$(".passwordInp").on("focus", function(){
        $(this).parent(".log").addClass("log-focus");
        $(this).siblings(".tip").html("");
		$(".mxy>img").attr({"src": "/img/log_reg/wyj.gif"})
	})
	$(".passwordInp").on("blur", function(){
        $(this).parent(".log").removeClass("log-focus");
        $(".mxy>img").attr({"src": "/img/log_reg/mxy-01.png"})
	}) */
	//验证图片验证码
	function checkImgCode(){
		var _self = $(".imgCodeInp");
		var imgCodeVal = _self.val();
		if(imgCodeVal.length == 0){
			_self.siblings(".tip").html("请输入图片验证码");
			return false
		}
		if(imgCodeVal.length < 4){
            _self.siblings(".tip").html("请输入正确的图片验证码");
            return false
		}
		_self.siblings(".tip").html("");
		return true
	}
/* 	$(".imgCodeInp").on("focus", function(){
        $(this).parent(".log").addClass("log-focus");
        $(".mxy>img").attr({"src": "/img/log_reg/ditou.gif"})
		checkImgCode();
        $(this).siblings(".tip").html("");
	})
	$(".imgCodeInp").on("blur", function(){
        $(this).parent(".log").removeClass("log-focus");
        $(".mxy>img").attr({"src": "/img/log_reg/mxy-01.png"})
		checkImgCode();
	}) */
	//登录
	var thirdParty = null;
    var isErrThree = false;
	function login(){
        $(".err-info").html("");
		var userVal = $(".userInp").val();
		var passwordVal = $(".passwordInp").val();
		var smscodeVal = $(".imgCodeInp").val();
		if(!isErrThree){
            $(".userInp").blur();
            $(".passwordInp").blur();
            $(".mxy>img").attr({"src": "/img/log_reg/mxy-01.png"})
		    if(checkUser()){
		        if(checkPassword()){
                    var data = {
                        'loginName': userVal,
                        'password': toMd5(passwordVal),
						'check': $('#remember').is(':checked')?'on':'off',
                        'next': thirdParty
                    }
                    var success = function(data){
                        var data = $.parseJSON(data);
                        if(data.success){
                            $(".err-info").html("");
                            window.location.href="/login/loginSuccess?url="+data.body;
                        }else{
                            $(".err-info").html(data.info)
                            if(data.code == "ppc15"){
                                $(".passwordInp").val("");
                                $(".imgCodeInp").val("")
                                $(".log.imgCode").show();
                                isErrThree = true
                            }else{
                                $(".passwordInp").val("");
							}
                        }
                    }
                    request("post", "/login/verifylogin", data, success)
				}
			}
		}else{
            $(".userInp").blur();
            $(".passwordInp").blur();
            $(".mxy>img").attr({"src": "/img/log_reg/mxy-01.png"})
		    if(checkUser()){
		        if(checkPassword()){
		            if(checkImgCode()){
                        var data = {
                            'loginName': userVal,
                            'password': toMd5(passwordVal),
                            'code': smscodeVal,
                            'check': $('#remember').is(':checked')?'on':'off',
                            'next': thirdParty
                        }
                        var success = function(data){
                            var data = $.parseJSON(data);
                            console.log(data)
                            if(data.success){
                                $(".err-info").html("");
                                window.location.href="/login/loginSuccess?url="+data.body;
                            }else{
                                $(".imgCodeInp").val("");
                                $(".imgCodePic").attr({
                                                          src : "/validCode?" + new Date().getTime()
                                                      });
                                if(data.code != "ppc77"){
                                    $(".err-info").html(data.info);
                                    $(".passwordInp").val("");
                                }else{
                                    $(".imgCodeInp").siblings(".tip").html(data.info);
								}
                            }
                        }
                        request("post", "/login/verifylogin", data, success)
					}
				}
			}
		}
		
	}
	$(".login-btn").on("click", function(){
		login();
	})
	document.onkeydown = function(e){
		var theEvent = e || window.event;
		var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
		if(code == 13){
			login()
			return false
		}
		return true
	}
	</script>
<script>
$(function() {
	// 如果有cookie，那么自动把该用户的用户名填写在登录框中
	if ($.cookie("username")) {
		$(".userInp").val($.cookie("username"));
	}
	// 验证码初始化
	$(".imgCodePic").attr({
		src : "/validCode?" + new Date().getTime()
	});
	// 验证码点击变化
	$(".imgCodePic").click(function() {
		this.src = "/validCode?" + new Date().getTime();
	});
	//
	thirdParty = $.cookie("thirdParty");
	if(thirdParty&&thirdParty!=""){
		$("input[name=next]").val(thirdParty);
	}
});
</script>
<div style="display:none;">
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?9a714a924f22b76dc92e5ae4bcbf6486";
		var s = document.getElementsByTagName("script")[0]; 
		s.parentNode.insertBefore(hm, s);
	})();
</script>
</div>

<script type="text/javascript">
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F6abc8f820c003b71587d5619f3080cc1' type='text/javascript'%3E%3C/script%3E"));
</script>

<div style="display:none;">
	<script src='js/tongji_360.js' language='JavaScript' charset='gb2312'></script>
</div>

<script type="text/javascript">
	window._pt_lt = new Date().getTime(); 
	window._pt_sp_2 = []; 
	_pt_sp_2.push('setAccount,641fe73f'); 
	var _protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); 
	(function() { 
		var atag = document.createElement('script'); 
		atag.type = 'text/javascript'; 
		atag.async = true; atag.src = _protocol + 'js.ptengine.cn/641fe73f.js'; 
		var s = document.getElementsByTagName('script')[0]; 
		s.parentNode.insertBefore(atag, s); 
	})(); 
</script>


<script type="text/javascript">
$(function(){
    setCookie("qqScriptId", "");
    setCookie("qqScriptSrc", "");
	var qqScriptId = $.cookie('qqScriptId');
	var qqScriptSrc = $.cookie('qqScriptSrc');
	$("body").before("<script id='" + qqScriptId + "' src = '" + qqScriptSrc + "' charset='utf-8' async defer>");
})
$(".qq-server").click(function(){
    $(".qidian_wpa_img").click();
})

function setCookie(name, value) {
    var exp = new Date();
    exp.setDate(exp.getDate()+1000*60*60*24*30);
    if (location.host.indexOf('.org') != -1) {
        document.cookie = name + "="+ value+"; domain=etongdai.org; path=/;expires=" + exp.toGMTString();
    } else {
        document.cookie = name + "="+ value+"; domain=etongdai.com; path=/;expires=" + exp.toGMTString();
    }

}
</script>
</body>
</html>