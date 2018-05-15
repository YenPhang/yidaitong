﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>易通贷-投资更省心 服务更贴心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta name="description" content="易通贷让网上借款变得简单快速.专业P2P借贷平台让用户快速借款,互联网贷款网站首选易通贷!易通贷以打造 互联网金融百年老店 为愿景服务大众,是老百姓值得信赖的互联网财富管理伙伴.">
<meta name="keywords" content="我的账户,易通贷">
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
<link href="${pageContext.request.contextPath }/statics/myloan/totalview/css/com.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/myloan/totalview/css/tf.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/iconfont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/common.css">
<script>
Stringserver={
	server:"https://app.etongdai.com",
	staticServer:"https://www.etongdai.com",
	sslServer:"https://app.etongdai.com",
	mobileServer:"https://m.etongdai.com"
}
</script>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myloan/totalview/js/digital.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myloan/totalview/js/base.js"></script>

<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/eframe.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myloan/totalview/js/fancyselect.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myloan/totalview/js/md5.js"></script>
<script type="text/javascript" charset="utf-8">
$(function(){
//		Stringserver.server=Stringserver.server || "";
		var userName=$.cookie('_username');
		var loginHtml="";
    	var myAccountHtml="";
			loginHtml="<div class='welcome'>欢迎您，</div>" + 
			"<a href='https://app.etongdai.com/account/index'>${userSession.userName }</a>" + 
			"<a href='https://app.etongdai.com/login/logout'>退出登录</a>";
            myAccountHtml="<a class=\"account\" href=\"https://app.etongdai.com/account/index\" title=\"我的账户\"><i class=\"iconfont\">&#xe637;</i>我的账户</a>";
            showRedTicket();
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

</script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/my_index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myloan/totalview/css/tk.css" />
 <!--[if IE]>
 <script type="text/javascript" src="js/excanvas.js" onload="explorercanvasload"></script>
 		<script type="text/javascript">
            Object.defineProperty = function(a, b, c) {
            };
        </script>
 <![endif]-->
<!--[if IE]>
 <script type="text/javascript" src="js/excanvas.js" onload="explorercanvasload"></script>
 		<script type="text/javascript">
            Object.defineProperty = function(a, b, c) {
            };
        </script>
 <![endif]-->
<script type="text/javascript">
var _iteRepaymentType = {
	'1':'个月','2':'天'
};
var _riskTypeDictList = {
	'1':'稳健型','2':'保守型','3':'激进型','4':'成长型 ','5':'进取型'
};

</script>

<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/wdatepicker.js" type="text/javascript" charset="utf-8"></script>

</head>

<body>

<div id="big" style="display:none">
    <div id="park">
    </div>
    <div id="ts">
            <div class="null"></div>
            <p>您当前状态还未进行实名认证，</p>
            <p>为保障您的资金安全建议您完成实名认证？</p>
            <div id="btn1"><a href="https://app.etongdai.com/certification/attestation">去认证</a></div>
            <div id="btn2"><a href="#">忽略</a></div>
            <div id="btn3"></div>
    </div>
</div>

	<div id="toolbar">
	    <span class="tool">服务热线：<strong>400-064-5156</strong></span>
	    <span class="tool online">在线客服</span>
	    <div class="grid service">
	    	<a class="grid-unit-1-2" onclick="kf_online();"><i class="iconfont">&#xe634;</i>在线客服</a>
	        <a class="grid-unit-1-2 service-email"><i class="iconfont">&#xe636;</i>客服邮件</a>
			<h3 class="grid-unit-1">服务时间：周一至周日8:00-20:00</h3>
	    </div>
	    <nav class="tool nav">
	        <a href="https://www.etongdai.com/download.html">手机APP</a>
	        <a class="mobile">官方微信</a>
	        <a href="https://www.etongdai.com/p2p/help/guide.html" target="_blank">新手指引</a>
	        <a href="https://www.etongdai.com/p2p/help/" target="_blank">帮助中心</a>
	    </nav>
	    <div class="mobile-box">
	        <h3>扫描关注官方微信号</h3>
	        <img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/wechat.png" alt="易通贷">
	    </div>
	    <nav class="tool user nav" id="isLoginHead">
	    </nav>
	</div>

	<header class="grid global-header">
		<div class="grid-unit-1-3 logo" >
			<img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/banner_01.png" style="position: relative;top: 1px;" onclick="location.href='https://www.etongdai.com/'" alt="易通贷" title="易通贷" />
			<div class="banner-loop" onclick="location.href='https://www.etongdai.com/'"></div>
		</div>
		<ul class="grid-unit-2-3 global"><li class="grid-unit-1-8"><a href="https://www.etongdai.com/" title="首页">首页</a></li><li class="grid-unit-1-6"><a href="https://app.etongdai.com/investments/index" title="我要投资">我要投资</a></li><li class="grid-unit-1-6"><a href="https://app.etongdai.com/newCredit/addloan/creditloan" title="我要借款">我要借款</a></li><li class="grid-unit-1-6"><a href="https://app.etongdai.com/safetySystem/nvestingSafety" title="风控措施">风控措施</a></li><li class="grid-unit-1-6"><a href="https://www.etongdai.com/p2p/informations/index.html" title="信息披露">信息披露</a></li><li class="grid-unit-1-6"><a href="https://www.etongdai.com/p2p/abouts/abouts_company.html" title="关于我们">关于我们</a></li></ul>
        <span id="accountStatus"></span>
		<input type="hidden" value="https://app.etongdai.com" id="hideServer" />
	</header>
    <script>
        /*头部样式*/
        function getIndexHtml(){
            var userName=$.cookie('_username');
            var loginHtml="";
            var myAccountHtml="";
            if(userName){
                loginHtml="欢迎您，"
                        +"<a href='"+"https://app.etongdai.com"+"/account/index'>"+userName+"</a><span>|</span><a class='exit' href='"+
                        "https://app.etongdai.com"+"/login/index'>退出登录</a>";
                myAccountHtml="<a class=\"account\" href=\"https://app.etongdai.com/account/index\" title=\"我的账户\"><i class=\"iconfont\">&#xe637;</i>我的账户</a>"
            }else{
                myAccountHtml="<span id=\"register_log\" class=\"nvestingSafety\"><a id='fenliu' href='https://app.etongdai.com/register/index'>注册</a><i>/<i><a href='https://app.etongdai.com/login/index' id=\"fenliu_log\">登录</a></span>";
            }
            $("#isLoginHead").html(loginHtml);
            $("#accountStatus").html(myAccountHtml)
        }
        getIndexHtml()
	</script>
<div class="content">
	<div class="con24 clearfix">
<script type="text/javascript">
$(function(){
	
	
	$(".con_l li").click(function(){
			$(this).addClass("cur1").append('<i class="cura"></i>')
			.siblings().removeClass("cur1").children('i').remove();
		});
		$(".zmenu a").click(function(){
			$(this).addClass("cur2").append('<em></em>')
			.siblings().removeClass("cur2").children('em').remove();
		});

	$.ajax({
		url: "/account/leftInfo",
		type: "post",
		dataType: 'json',
		success: function(data){
			if(data.success){
				$("#allowPrice").empty().append(data.body.allowPrice);
				thousand_char($("#allowPrice"),2);
				 var totalLev=0;
                if(data.body.extend.useAuthRealName=="1"){
                  totalLev+=3;
                  $("#realName").addClass("ok");
                  $("#realName").attr("href","javaScript:void(0)");
                }else
                   $("#realName").attr("href","https://app.etongdai.com/certification/attestation");
               
              if(data.body.extend.useAuthMp=="1"){
              		totalLev+=0.5;
                  $("#mobileCertification").addClass("ok");
                   $("#mobileCertification").attr("href","javaScript:void(0)");
                }else
                   $("#mobileCertification").attr("href","https://app.etongdai.com/certification/attestation");
                if(data.body.extend.useAuthEmail=="1"){
                	totalLev+=0.5;
                  $("#cereMail").addClass("ok");
                   $("#cereMail").attr("href","javaScript:void(0)");
                }else
                   $("#cereMail").attr("href","https://app.etongdai.com/certification/attestation");
               if(data.body.extend.authBackCard=="2"){
               		totalLev+=0.5;
                  $("#cradBind").addClass("ok");
                   $("#cradBind").attr("href","javaScript:void(0)");
                }else
                   $("#cradBind").attr("href","https://app.etongdai.com/certification/attestation");
                if(data.body.flag=="0"){
                	totalLev+=0.5;
                  $("#tranpwdftl").addClass("ok");
                   $("#tranpwdftl").attr("href","javaScript:void(0)");
                }else
                   $("#tranpwdftl").attr("href","https://app.etongdai.com/safe/tranpwdftl");
                   
                if(totalLev<3){
                	 $("#safeLev,#safeLev2").empty().html("低");
                	 $("#bar1,#bars").width("30%").removeClass().addClass("di");
                }
                else if(totalLev==5){
                	 $("#safeLev,#safeLev2").empty().html("高");
                	 $("#bar1,#bars").width("100%").removeClass().addClass("gao");
                }
                else{
                	 $("#safeLev,#safeLev2").empty().html("中");
                	 $("#bar1,#bars").width("65%").removeClass().addClass("zhong");
                }
                if(data.body.unUse>0){
                	$("ul.ul_v .li3 a.t").append('<b></b>');
                	$("ul.ul_v div.zmenu a.unUse").append('<b style="right:41px;"></b>');
                }
			}
		}
		});
	$(".yuan").hide();
	$.ajax({
		url: "/message/countNotRead",
		type: "post",
		dataType: 'json',
		success: function(data){
			if(data.success){
				if(data.info=='请先登录'){
					alert(data.info);
					window.location.href = "https://app.etongdai.com/login/index";
					return;
				}
				if(data.info > 0){
					$(".yuan").text(data.info);
					$(".yuan").show();
				}
			}
		}
	});
});
</script>
<div class="con_l">
	<div class="name">
    	<div class="lone">
            <h2>您好!</h2>
            <h2 class="number" title="Etdtljb120">
					${userSession.userName }
            </h2>
            <div class="icon">
            	<a class="icon1" id="realName"></a>
                <a class="icon2" id="mobileCertification"></a>
                <a class="icon3" id="cereMail"></a>
                <a class="icon4" id="cradBind"></a>
                <a class="icon5" id="tranpwdftl"></a>
            </div>
            <div class="bar">
            	<i id="bar1">
                	
                </i>
            </div>
            <p>安全等级：<i id="safeLev">&nbsp;&nbsp;</i>&nbsp;&nbsp;&nbsp;<span><a href="https://app.etongdai.com/certification/attestation">[提升]</a></span></p>
            <p class="p3">余额：<em>￥<em id='allowPrice'></em></em></p>
           
            
        </div>
    </div>
    	<div class="bd nav_l">
        <ul class="ul_v">
            <li class="li1 cur1">
                <a href="https://app.etongdai.com/account/index" class="t"><span></span>账户总览</a>
                <i class="cura"></i>
            </li>
             <li class="li2  "><a class="t"><span></span>我的资金</a>
              
              	<div class="zmenu">
                    <a  href="https://app.etongdai.com/subsidiary/list"><i>▪</i>资金明细</a>
                    <a  href="https://app.etongdai.com/recharge/payment"><i>▪</i>账户充值</a>
                    <a  href="https://app.etongdai.com/withdrawal/apply"><i>▪</i>账户提现</a>
                </div>
             </li>
            <li class="li3  "><a class="t"><span></span>我是投资者</a>
             
             <div class="zmenu">
                    <a  href="https://app.etongdai.com/investors/myinvestors?typeId=-1&stateId=1"><i>▪</i>我的投资</a>
                    <a  href="https://app.etongdai.com/amountMoneyCtr/myCollection"><i>▪</i>我的收款</a>
                    <a  href="https://app.etongdai.com/amountMoneyCtr/selectAmountMoney"><i>▪</i>本月应收</a>
                    <a  href="https://app.etongdai.com/transfer/list"><i>▪</i>债权转让</a>
                    <a  href="https://app.etongdai.com/autobid/index"><i>▪</i>自动投标</a>
                    <a  href="https://app.etongdai.com/activity/index"><i>▪</i>我的抽奖</a>
                    <a  href="https://app.etongdai.com/couponActivity/coupon"><i>▪</i>奖券兑换</a>
                    <a class="unUse " href="https://app.etongdai.com/redPacket/index"><i>▪</i>我的优惠券</a>
                    
                </div>
            </li>
             <li class="li4 "><a class="t"><span></span>我是借款者</a>
             
                <div class="zmenu">
                    <a href="https://app.etongdai.com/loanapplication/list/apply"><i>▪</i>我的借款</a>
                    <a href="https://app.etongdai.com/newCredit/addloan/creditloan"><i>▪</i>申请信用贷款</a>
                    <a href="https://app.etongdai.com/newCredit/addloan/mortgages"><i>▪</i>申请抵押贷款</a>
                    <a href="https://app.etongdai.com/collateral/query"><i>▪</i>我的抵押物</a>
                </div>
                
            </li> 
            <li class="li5 "><a  class="t"><span></span>账户管理</a>
             
                <div class="zmenu">
					<a href="https://app.etongdai.com/certification/attestation"><i>▪</i>我的认证</a>
					<a  href="https://app.etongdai.com/uploadinfo/index"><i>▪</i>上传资料</a>
                    <a  href="https://app.etongdai.com/safe/safeftl"><i>▪</i>安全中心</a>
                </div>
            </li>
            <li class="li6 "><a  class="t"><span></span>消息管理</a>
             
             <div class="zmenu">
                <a href="https://app.etongdai.com/message/mymessage?type=0" ><i>▪</i>我的消息<p class="yuan">0</p></a>
             </div>
            </li>
            <li class="li7 ">
            	<a  class="t"><span></span>好友管理</a>
            	 
                <div class="zmenu">
                    <a href="https://app.etongdai.com/firend/newmyfriends" ><i>▪</i>我的好友</a>
                    <a href="https://app.etongdai.com/firend/invitefriend" ><i>▪</i>邀请好友</a>
                </div>
            </li>
        </ul>
 	</div>
 	 <div class="service">
    </div>

</div>        <div class="con_r">
			<div class="main">
            	<dl class="tip">
                    <dt><i class="x_tu"></i>最新公告<span>|</span></dt>
                    <dd class="scrolldiv"> 
                        <ul class="scroll ul_v">
			                    <li><a href="https://www.etongdai.com/p2p/help/announcement/sjgg/2018042714181.html">关于4月28日农业银行系统升级的公告</a></li>
			                    <li><a href="https://www.etongdai.com/p2p/help/announcement/gwgg/2018042714180.html">易通贷2018年劳动节假期及业务安排公告</a></li>
			                    <li><a href="https://www.etongdai.com/p2p/help/announcement/sjgg/2018042614179.html">关于4月26日光大银行系统升级的公告</a></li>
			                    <li><a href="https://www.etongdai.com/p2p/help/announcement/gwgg/2018042614178.html">关于易通贷APP端每日签到规则调整的公告</a></li>
			                    <li><a href="https://www.etongdai.com/p2p/help/announcement/sjgg/2018042414155.html">关于快捷支付限额进行整体调整的公告</a></li>
                        </ul>
                    </dd>
				</dl>
                <div class="top2">
                	<ul class="kb">
                    	<li>
                        	<div class="kbt kbt4">
                            	<p>可用余额</p><span class="spa1"></span><a href="https://app.etongdai.com/recharge/payment" class="chongzhi">充值</a>
                            </div>
                            <div class="kbb">
                            	<p class="p1" id="allowBalance"><span class="spanloading"></span></p><a href="https://app.etongdai.com/withdrawal/apply" class="tixian">提现</a>
                                <p class="wz1">账户内可用于投资操作的金额</p>
                            </div>
                        </li>
                        <li>
                        	<div class="kbt kbt4">
                            	<p>账户总资产</p><span class="bg spa2"></span>
                            </div>
                            <div class="kbb">
                            	<p class="p2" id="allAssets"><span class="spanloading"></span></p>
                                <p class="wz2">可用金额+待收总额+冻结资金</p>
                            </div>
                        </li>
                        <li>
                        	<div class="kbt kbt4">
                            	<p>待收总额</p><span class="spa3"></span>
                            </div>
                            <div class="kbb">
                            	<p class="p3" id="collectAmount"><span class="spanloading"></span></p>
                                <p class="wz3">待收本金+待收利息</p>
                            </div>
                        </li>
                        <li class="none">
                        	<div class="kbt kbt4">
                            	<p>冻结资金</p><span class="spa4"></span>
                            </div>
                            <div class="kbb">
                            	<p class="p4" id="frozenSum"><span class="spanloading"></span></p>
                                <p class="wz4">账户内已冻结的金额</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="excel">
                	<div class="ex_l">
                    	<div class="clearfix">
                    		<a class="exp1 expect abc">已获得投资回报</a>
                       	 <a class="exp2 expect">预期投资回报</a>
                       </div>
                       <div class="ex_l_bd clearfix">
                        <div class="tb">
                            <p>已获得投资回报：<span id="totalRevenue"><span class="spanloading"></span></span></p>
                            <input type="hidden" id='month' value='6月,7月,8月,9月,10月,11月,12月,1月,2月,3月,4月,5月' />
                            <input type="hidden" id='money' value="0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00" />
                            <div style="width:506px">
                                <div>
                                    <canvas id="canvasline" height="410" width="506"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="tb">
                            <p>预期投资回报：<span id="totalReplayMoney"></span></p>
                            <input type="hidden" id='replayMonth' value='5月,6月,7月,8月,9月,10月,11月,12月,1月,2月,3月,4月' />
                            <input type="hidden" id='replayMoney' value="0.00,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00" />
                            <div style="width:506px" >
                                <div>
                                    <canvas id="canvasline1" height="410" width="506"></canvas>
                                </div>
                            </div>
                        </div>
                        </div>
                	</div>
                    <div class="ex_r">

                    	<ul class="rating">
                       		<li>
                            	<h5>丨我的评级</h5>
                                <a class="ab_r" href="https://app.etongdai.com/certification/assessment">风险评估测试</a>
                            </li>
                           	<li>
                            	<span class="sp1">投资类型</span>
                                <span class="sp2">投资级别</span>
                            </li>
                            <li>
                            	<span class="sp3" id="tzType" style=" position:relative;"><span class="spanloading" style=" position:absolute; left:-40px; top:10px; *position:absolute; *left:40px; *top:10px;"></span></span>
                                <span class="sp4" id="tzLevel" style=" position:relative;"><span class="spanloading" style=" position:absolute; right:-40px; top:10px; *position:absolute; *right:40px; *top:10px;"></span></span >
                            </li>
                        </ul>
                        
                        <ul class="rating mentDate">
                       		<li>
                            	<h5>丨我的回款日历</h5>
                            </li>
                        </ul>
                        <span id="testView"></span>
						<div id="acountDate"></div>
                        
<div id="paymentDate"></div>
                        <div id="idment">
							<div class="myCenPay">
								<span>本月应回款（元）</span>
								<p id="yingPayment"></p>
							</div>
							<div class="myCenPay">
								<span>本月已回款（元）</span>
								<p id="yiPayment"></p>
							</div>
							<div class="myCenPay">
								<span>本月待回款（元）</span>
								<p id="daiPayment"></p>
							</div>
						</div>	
						
                      </div>
                </div>
                <div class="top3">丨待收款详情</div>
                <div class="top4">	
                	<ul class="kb">
                    	<li>
                        	<div class="kbt">
                            	<p>待收利息总额  </p>
                            </div>
                            <div class="kbb">
                            	<p class="p4" id='rescPlanInte'><span class="spanloading"></span></p>
                            </div>
                        </li>
                        <li>
                        	<div class="kbt">
                            	<p>待收本金总额   </p>
                            </div>
                            <div class="kbb">
                            	<p class="p4" id='rescPlanPrin'><span class="spanloading"></span></p>
       						</div>
                        </li>
                        <li>
                        	<div class="kbt">
                            	<p>最近待收时间 </p>
                            </div>
                            <div class="kbb">
                            	<p class="p3" id='closeTime'><span class="spanloading"></span></p>
                            </div>
                        </li>
                        <li class="none">
                        	<div class="kbt">
                            	<p>最近待收本息</p>
                            </div>
                            <div class="kbb">
                            	<p class="p4" id='closeSum'><span class="spanloading"></span></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="top3">丨推荐项目</div>
                <div class="top5">
                	<ul class="kb" id="Recommend">
                    	<span class="spanloading"></span>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--易通贷五周年庆典活动弹框-->

	<nav id="redpack">
		            <a href="https://app.etongdai.com/static/novice-guide/pc.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/redpacket.gif" style="margin-left:-17px;"/></a>
	</nav>
	<nav id="fixbar">
	    <a onclick="kf_online();" class="online">在线<br />客服</a>
	    <a href="https://app.etongdai.com/calculator" class="calculator">收益<br />计算器</a>
	    <a href="https://www.etongdai.com/download.html" class="download" onmousemove="$('.downloadimg').show();" onmouseout="$('.downloadimg').hide();">APP<br />下载</a>
	    <a class="wxdownload" onmousemove="$('.wxdownloadimg').show();" onmouseout="$('.wxdownloadimg').hide();">微信<br />服务号</a>
	    <a class="back">返回<br />顶部</a>
	    <img class="downloadimg" src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/qrode_01.jpg" alt="APP下载">
	    <img class="wxdownloadimg" src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/qrode_02.png" alt="微信服务">
     </nav>
	
	<footer class="grid global-footer">
	    <div>
	        <nav class="grid-unit-1-8 global-footer-nav">
	            <h3>关于我们</h3>
		            	<a href="https://www.etongdai.com/p2p/abouts/abouts_company.html" title="公司简介">公司简介</a>
		            	<a href="https://www.etongdai.com/p2p/abouts/abouts_team.html" title="团队介绍">团队介绍</a>
		            	<a href="https://www.etongdai.com/p2p/abouts/honor/2/index.html" title="荣誉资质">荣誉资质</a>
		            	<a href="https://www.etongdai.com/p2p/abouts/yxytd/" title="影音易通贷">影音易通贷</a>
	        </nav>
	        <nav class="grid-unit-1-6 global-footer-nav">
	            <h3>相关法律</h3>
			        	<a href="https://www.etongdai.com/p2p/help/legal/20170518/6536.html" title="民间借贷合法性">民间借贷合法性</a>
			        	<a href="https://www.etongdai.com/p2p/help/legal/20170518/6537.html" title="易通贷平台服务的合法性">易通贷平台服务的合法性</a>
			        	<a href="https://www.etongdai.com/p2p/help/legal/20170518/6538.html" title="电子合同合法性">电子合同合法性</a>
			        	<a href="https://www.etongdai.com/p2p/help/legal/20170518/6539.html" title="民间借贷利息的确认">民间借贷利息的确认</a>
                    <a href="https://www.etongdai.com/p2p/help/risk/" title="出借人风险教育">出借人风险教育</a>
	        </nav>
	        <nav class="grid-unit-1-8 global-footer-nav">
	            <h3>帮助中心</h3>
                        <p><a href="https://www.etongdai.com/p2p/help/guide/1" title="新人向导">新人向导</a></p>
                    
                        <p><a href="https://www.etongdai.com/p2p/help/guide/3/" title="常见问题">常见问题</a></p>
                    
                        <p><a href="https://www.etongdai.com/p2p/help/risk/" title="风险揭示书">风险揭示书</a></p>
                    
                    
                    
                    
                    <p><a href="https://www.etongdai.com/p2p/help/wzdt/" title="网站地图">网站地图</a></p>
	        </nav>
	        <div class="grid-unit-1-8 qrcode"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/qrode_01.jpg" alt="易通贷APP下载">易通贷APP下载</div>
	        <div class="grid-unit-1-8 qrcode"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/qrode_02.jpg" alt="关注微信-易通贷资讯">关注微信-易通贷资讯</div>
	        <div class="grid-unit-1-4 telephone">
	            <h3>全国服务热线<a href="javascript:void(0);" title="拨打客服热线：400-064-5156">400-064-5156</a></h3>
	            <p>客服咨询时间：8:00 - 20:00<span class="qq-server"><i></i>QQ客服</span></p>
	            <p>服务投诉电话：010-56177355</p>
	            <p>商务合作电话：010-56177361</p>
                <p>服务投诉邮箱：service@etongdai.com</p>
	        </div>
	        <p class="grid-unit-1 tip">预期投资回报率不等于实际投资回报率，投资有风险，选择需谨慎。</p>
	    </div>
	</footer>
	<section class="copyright">
	    <div class="authentic">  
	        <a href="http://webscan.360.cn/index/checkwebsite?url=www.etongdai.com" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/01.gif"></a>
	        <a href="https://search.szfw.org/cert/l/CX20140515008078008136" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/02.gif"></a>
	        <a href="http://www.isc.org.cn/xhhy/hydw/content-32.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/03.gif"></a>
	        <a href="https://ss.knet.cn/verifyseal.dll?sn=e14051911010849050et7r000000&amp;ct=df&amp;a=1&amp;pa=0.7002172293035737" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/04.gif"></a>
	        <a href="http://www.bcpcn.com/product/rz/bq/BCP2615734826.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/05.gif"></a>
	        <a href="http://www.315online.com.cn/member/315140031.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/06.gif"></a>
	        <a href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1571278794" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/wxrz-white.jpg"></a>
	        <a target="_blank" href="http://www.etongdai.com/p2p/help/guide/4/2017071111727.html"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/08.gif"></a>
	        <a href="http://www.cecy.org.cn/bencandy_search.php?fid=122&amp;id=1204" target="_blank"><img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/09.png"></a>
	        <a id="ppb" key ="587c78dbefbfb04f3bf057c6" logo_size="124x47" logo_type="business" href="http://www.anquan.org">
				<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/aq_auth.js"></script>
			</a>
	    </div>
	    <p class="link clearfix">
	        <span>友情链接</span>
	      		<a target="_blank" href="http://www.p2peye.com/">网贷天眼</a> 
	      		<a target="_blank" href="http://www.chuangtianxia.cn">创天下</a> 
	      		<a target="_blank" href="http://www.p2p001.com/">第一网贷</a> 
	      		<a target="_blank" href="http://www.wd315.cn/">网贷315</a> 
	      		<a target="_blank" href="http://www.wdzj.com/">网贷之家</a> 
	      		<a target="_blank" href="http://www.erongtu.com/">融途网</a> 
	      		<a target="_blank" href="https://www.rong360.com/licai/">融360</a> 
	    </p>
	    <p>版权所有 © 北京易通贷金融信息服务有限公司    公司地址：北京市海淀区丹棱街1号互联网金融中心7层    办公时间：周一至周五 9:00-18:00</p>
	    <p>
	    	<a target="_blank" href="http://www.miitbeian.gov.cn" style="color:#3f3a39; cursor:pointer;">备案号:京ICP备11042752号-4</a>
	    	<a target="_blank" href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=%E4%BA%ACICP%E8%AF%81140393%E5%8F%B7&amp;pageNo=1" style="color:#3f3a39; cursor:pointer;">京ICP证140393号</a>
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802024662"
               style="display:inline-block;text-decoration:none; vertical-align: top;">
                <img src="${pageContext.request.contextPath }/statics/myloan/totalview/picture/ghs.png" style="float:left;"/>
                <span style="float:left;margin: 0px 0px 0px 5px;">京公网安备 11010802024662号</span>
            </a>
	    </p>
	</section>


<div style="display:none" class="tc_f">
	<i class="opa"></i>
	<div class="fbd">
		<h3 class="white">关注微信-易通贷资讯号</h3>
        <em class="wxtu">
        </em>
        <p class="graya">打开微信，点击“扫一扫”，扫描此二维码即可关注，或微信
			搜索公众号“易通贷资讯”。</p>
		<a title="关闭" class="ab_r close">✖</a>
	</div>
</div>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/common.js"></script>
<script>
	var _this = $("#ppb");
    _this.children("img").css({"width":"auto","height":"36"});
</script>

<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/chart.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/my_index.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/myloan/totalview/js/laydate.js"></script>

<script type="text/javascript">
$(function(){
	
	$.post("/userRealState",function(data){
        var data=$.parseJSON(data);
		if(!data){
			$("#big").show();
		}
	});
	
	$('#btn2,#btn3').click(function(){
		$('#big').hide();
	});
	

	//$("#_menu li").eq(4).click();
	$("#totalReplayMoney").empty().append(recodHtml(100,1));

	$.ajax({
		url: "/account/info",
		type: "post",
		dataType: 'json',
		success: function(data){		      
			if(data.success){
                var allAssets=data.body.praValidSum+data.body.exaDueInSum+data.body.praFreezeSum
                $("#allAssets").empty().append(recodHtml(allAssets,1));
                $("#allowBalance").empty().append(recodHtml(data.body.praValidSum,1));
                $("#collectAmount").empty().append(recodHtml(data.body.exaDueInSum,1));
                $("#frozenSum").empty().append(recodHtml(data.body.praFreezeSum,1));
                $("#totalRevenue").empty().append(recodHtml(data.body.claimMdl.totalRevenue,1));

                $("#tzType").empty().append(_riskTypeDictList[data.body.extend.evaResult]);
                $("#tzLevel").empty().append(data.body.mdl.usaInvestorLevelName);
                
                var listhtml=""
                if(data.body.list){
                	for(var i=0;i<data.body.list.length;i++){ 
                		var titl = data.body.list[i].iteTitle;
                		if(titl.length>6)
                			titl = titl.substr(0, 6)+"...";
                		listhtml+='<li>'+
                				'<div class="line f1">'+
                				'<a href="https://app.etongdai.com/investments/invdetail?iteId='+data.body.list[i].iteId+'" title="'+data.body.list[i].iteTitle+'">'+titl+'</a>'+
                				'</div>'+
                				'<div class="line f2">'+
                				'借款金额<span>'+(data.body.list[i].iteLimit/100).toFixed(2)+'元</span>'+
                				'</div>'+
                				'<div class="line f3">'+
                				'预期投资回报率&nbsp;<span>'+(data.body.list[i].iteYearRate*100).toFixed(2)+'%</span>'+
                				'</div>'+
                				'<div class="line f4">'+data.body.list[i].iteRepayTypeName+
                				'</div>'+
                				'<div class="line f5">'+data.body.list[i].iteRepayDate+_iteRepaymentType[data.body.list[i].iteRepayInterval]+
                				'<a href="https://app.etongdai.com/investments/invdetail?iteId='+data.body.list[i].iteId +'">投资</a>'+
                				'</div>'+
                				' </li>';		
                	}
                }else{
                 	listhtml="<li>暂无推荐 </li>" 
                }
                $("#Recommend").empty().append(listhtml);
                	 
               	if(data.body.planMap){
               		var cloT = data.body.planMap["closeTime"];
               		if(""==cloT || null==cloT)
               			cloT="-";
               		else
               			cloT='<a href="https://app.etongdai.com/amountMoneyCtr/myCollection">'+cloT+'</a>';
               		$("#rescPlanInte").empty().append(recodHtml(data.body.planMap["rescPlanInte"],1));
               		$("#rescPlanPrin").empty().append(recodHtml(data.body.planMap["rescPlanPrin"],1));
               		$("#closeTime").empty().append(cloT);
               		$("#closeSum").empty().append(recodHtml(data.body.planMap["closeSum"],1));
               	}
			}
		}
	})
});
</script>

<script type="text/javascript">
	/*选择阵营*/
$(".join_dd>div").click(function(){
	$(this).parent("dd").siblings().children("div").removeClass("choose");
	$(this).addClass("choose");
	if($(this).hasClass("full")){
		$("#campType").val("");
		return;
	}
	$("#campType").val($(this).attr("data-camp"));
});
$(".closefcb").click(function(){
	$(".mask").hide();
});

/*成功加入弹出提示框*/
$(".join_btn").click(function(){
	var campType = $("#campType").val();
	if(!campType || campType=='' || !$(".camp"+campType).hasClass("choose")){
		alert("请先选择要加入的阵营");
		return ;
	}

	var info="";
	var successFlag=false;
	$.ajax({
			type : "post",
			async : false,
			dataType : "json",
			url : "/activity/chooseCamp",
			data:{"campType":campType},
			error : function(){
				info = "网络超时，请稍后再试！";
			},
			success : function(data){
				successFlag = data.success;
				info = data.info;
			}
		});
		if(!successFlag){
			alert(info);
			return;
		}else{
			window.location.href="https://app.etongdai.com/activity/fiveYearDetail";
		}
	});
</script>

<script>
//lay('#version').html('-v'+ laydate.v);

//执行一个laydate实例
laydate.render({
  elem: '#acountDate'
  ,position: 'static'
  ,theme: 'grid'//格子主题
  ,showBottom: false//不显示底部栏
  ,ready: function(date){
  	var showYear = date.year.toString();//年份转换
    var showMonth = date.month.toString().replace(/^(\d)$/, '0$1');//月份补零
    var nowYearMonth = showYear+'-'+showMonth;
    console.log(nowYearMonth)
    $.ajax({
			async: false,
            type : "post",
            url : "/amountMoneyCtr/repaymentDateOfMonth",
            data : {'date':nowYearMonth},
            success:function(data){
				var result = eval("("+data+")");
                if(result.success){
               		var yingPayment = result.body.planSumYuanMonth;
               		var yiPayment = result.body.actualSumYuanMonth;
               		var daiPayment = result.body.waitSumYuanMonth;
               		$("#yingPayment").html(yingPayment);
               		$("#yiPayment").html(yiPayment);
               		$("#daiPayment").html(daiPayment);
               		var repayment = result.body.list;
                    var tb = document.getElementById("layui-laydate1"); //根据id找到这个表格
                    var rows = tb.getElementsByTagName("td"); //取得这个table下的所有行
                    for(var i=0;i<rows.length;i++){//循环遍历所有的tr行
                        var repay = rows[i].getAttribute("lay-ymd");
                        for(var j=0;j<repayment.length;j++){
                            if(repay==repayment[j]){
                                rows[i].className+=" "+ "activeData"
                            }
                        }
                    }
                }else{
               		
                }
             },
             error:function(error){
                 console.log(error);
             }
        });


  }
  ,change: function(value, date, endDate){
    var showYear = date.year.toString();//年份转换
    var showMonth = date.month.toString().replace(/^(\d)$/, '0$1');//月份补零
    var showDay = date.date.toString();
    var showYearMonth = showYear+'-'+showMonth+'-'+showDay;
    $.ajax({
			async: false,
            type : "post",
            url : "/amountMoneyCtr/canClick",
            data : {'date':showYearMonth},
            success:function(data){
            	var result = eval("("+data+")");
                if(result.success){
                   	var dataClick = result.code;
                   	if(dataClick == 0){
                   		window.location.href = "https://app.etongdai.com/amountMoneyCtr/myCollection?date=" + showYearMonth;
                   	}
                }
			},
            error:function(error){
				console.log(error);
            }
		});
  }
});
</script>
<script>
    $(function(){
        setCookie("qqScriptId", "");
        setCookie("qqScriptSrc", "");
        var qqScriptId = $.cookie('qqScriptId');
        var qqScriptSrc = $.cookie('qqScriptSrc');
        $("body").before("<script id='" + qqScriptId + "' src = '" + decodeURI(qqScriptSrc) + "' charset='utf-8' async defer>");
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
