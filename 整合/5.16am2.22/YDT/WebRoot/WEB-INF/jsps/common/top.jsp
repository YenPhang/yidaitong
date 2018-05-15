<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/taglib.jsp" %>
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
		<link href="${pageContext.request.contextPath}/statics/admin/noticelist/css/com.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/statics/admin/noticelist/css/tf.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/normalize.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/iconfont.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/base.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/common.css">
		<script>
			Stringserver = {
				server: "https://app.etongdai.com",
				staticServer: "https://www.etongdai.com",
				sslServer: "https://app.etongdai.com",
				mobileServer: "https://m.etongdai.com"
			}
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/admin/noticelist/js/digital.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/admin/noticelist/js/base.js"></script>

		<script src="${pageContext.request.contextPath}/statics/admin/noticelist/js/eframe.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/admin/noticelist/js/fancyselect.js" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/admin/noticelist/js/md5.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(function() {
				//		Stringserver.server=Stringserver.server || "";
				var userName = $.cookie('_username');
				var loginHtml = "";
				var myAccountHtml = "";
				loginHtml = "<div class='welcome'>欢迎您，</div>" +
					"<a href='https://app.etongdai.com/account/index'>Etdzgqo326</a>" +
					"<a href='https://app.etongdai.com/login/logout'>退出登录</a>";
				myAccountHtml = "<a class=\"account\" href=\"https://app.etongdai.com/account/index\" title=\"我的账户\"><i class=\"iconfont\">&#xe637;</i>我的账户</a>";
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
			function showRedTicket() {
				$.ajax({
					type: "post",
					dataType: "json",
					url: "/getRedTicketForIndex",
					error: function() {},
					success: function(data) {
						if(data.success) {
							$("#noLogin").hide();
							$("#logined").show();
							if(data.ticketAmount <= 0) {
								$("#noRed").show();
							} else {
								$("#showRed").show();
								$("#userRedAmount").append(data.ticketAmount);
							}
						}
					}
				});
			}

			function startAnimation() {
				$(".global-header .banner-loop").delay(3000).animate({
					opacity: 0
				}, 500, "linear", function() {
					$(".global-header .banner-loop").css("background-image", "url(images/banner_03.png)");
					$(".global-header .banner-loop").animate({
						opacity: 1
					}, 500, "linear", function() {
						$(".global-header .banner-loop").delay(2000).animate({
							opacity: 0
						}, 500, "linear", function() {
							$(".global-header .banner-loop").css("background-image", "url(images/banner_02.png)");
							$(".global-header .banner-loop").animate({
								opacity: 1
							}, 500, "linear", startAnimation);
						});
					});
				});
			}
			$(function() {
				startAnimation();
			});

			function kf_online() {
				var userName = $.cookie('_username');
				var userMobile = $.cookie('_userMobile');
				if(userName) {
					if(userMobile != null && userMobile != '') {
						window.open("http://im.etongdai.com/webchat.html?custAcc=" + userMobile + "&vip=0&mediaType=1", '_blank');
					} else {
						window.open("http://im.etongdai.com/webchat.html?custAcc=null&vip=0&mediaType=1", '_blank');
					}
				} else {
					window.open("http://im.etongdai.com/webchat.html?custAcc=null&vip=0&mediaType=1", '_blank');
				}
			}
		</script>
		</script>
		<script type='text/javascript'>
			var userId = $.cookie('_userId');
			var birthYear = $.cookie('_birthYear');
			var gender = $.cookie('_gender');
			var _vds = _vds || [];
			window._vds = _vds;
			(function() {
				_vds.push(['setAccountId', '84873cbf3be76fe4']);
				if(userId != null && userId != '') {
					_vds.push(['setCS1', 'userId', userId]);
					_vds.push(['setCS2', 'gender', gender]);
					_vds.push(['setCS3', 'birthYear', birthYear]);
				}
				(function() {
					var vds = document.createElement('script');
					vds.type = 'text/javascript';
					vds.async = true;
					vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
					var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(vds, s);
				})();
			})();
		</script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/my_com.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/admin/noticelist/css/jilu.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/admin/noticelist/js/wdatepicker.js"></script>
	</head>

	<body>
		<script src="${pageContext.request.contextPath}/statics/admin/noticelist/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/statics/admin/noticelist/js/localjs/changeitem.js" type="text/javascript" charset="utf-8"></script>

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
				<img src="picture/wechat.png" alt="易通贷">
			</div>
			<nav class="tool user nav" id="isLoginHead">
			</nav>
		</div>

		<header class="grid global-header">
			<div class="grid-unit-1-3 logo">
				<img src="picture/banner_01.png" style="position: relative;top: 1px;" onclick="location.href='https://www.etongdai.com/'" alt="易通贷" title="易通贷" />
				<div class="banner-loop" onclick="location.href='https://www.etongdai.com/'"></div>
			</div>
			<ul class="grid-unit-2-3 global">
				<li class="grid-unit-1-8">
					<a href="https://www.etongdai.com/" title="首页">首页</a>
				</li>
				<li class="grid-unit-1-6">
					<a href="https://app.etongdai.com/investments/index" title="我要投资">我要投资</a>
				</li>
				<li class="grid-unit-1-6">
					<a href="https://app.etongdai.com/newCredit/addloan/creditloan" title="我要借款">我要借款</a>
				</li>
				<li class="grid-unit-1-6">
					<a href="https://app.etongdai.com/safetySystem/nvestingSafety" title="风控措施">风控措施</a>
				</li>
				<li class="grid-unit-1-6">
					<a href="https://www.etongdai.com/p2p/informations/index.html" title="信息披露">信息披露</a>
				</li>
				<li class="grid-unit-1-6">
					<a href="https://www.etongdai.com/p2p/abouts/abouts_company.html" title="关于我们">关于我们</a>
				</li>
			</ul>
			<span id="accountStatus"></span>
			<input type="hidden" value="https://app.etongdai.com" id="hideServer" />
		</header>
		<script>
			/*头部样式*/
			function getIndexHtml() {
				var userName = $.cookie('_username');
				var loginHtml = "";
				var myAccountHtml = "";
				if(userName) {
					loginHtml = "欢迎您，" +
						"<a href='" + "https://app.etongdai.com" + "/account/index'>" + userName + "</a><span>|</span><a class='exit' href='" +
						"https://app.etongdai.com" + "/login/index'>退出登录</a>";
					myAccountHtml = "<a class=\"account\" href=\"https://app.etongdai.com/account/index\" title=\"我的账户\"><i class=\"iconfont\">&#xe637;</i>我的账户</a>"
				} else {
					myAccountHtml = "<span id=\"register_log\" class=\"nvestingSafety\"><a id='fenliu' href='https://app.etongdai.com/register/index'>注册</a><i>/<i><a href='https://app.etongdai.com/login/index' id=\"fenliu_log\">登录</a></span>";
				}
				$("#isLoginHead").html(loginHtml);
				$("#accountStatus").html(myAccountHtml)
			}
			getIndexHtml()
		</script>
		<!--对左边框的操作  -->
		<div class="content">
			<div class="con24 clearfix">
				<script type="text/javascript">
					$(function() {

						$(".con_l li").click(function() {
							$(this).addClass("cur1").append('<i class="cura"></i>')
								.siblings().removeClass("cur1").children('i').remove();
						});
						$(".zmenu a").click(function() {
							$(this).addClass("cur2").append('<em></em>')
								.siblings().removeClass("cur2").children('em').remove();
						});

						$.ajax({
							url: "/account/leftInfo",
							type: "post",
							dataType: 'json',
							success: function(data) {
								if(data.success) {
									$("#allowPrice").empty().append(data.body.allowPrice);
									thousand_char($("#allowPrice"), 2);
									var totalLev = 0;
									if(data.body.extend.useAuthRealName == "1") {
										totalLev += 3;
										$("#realName").addClass("ok");
										$("#realName").attr("href", "javaScript:void(0)");
									} else
										$("#realName").attr("href", "https://app.etongdai.com/certification/attestation");

									if(data.body.extend.useAuthMp == "1") {
										totalLev += 0.5;
										$("#mobileCertification").addClass("ok");
										$("#mobileCertification").attr("href", "javaScript:void(0)");
									} else
										$("#mobileCertification").attr("href", "https://app.etongdai.com/certification/attestation");
									if(data.body.extend.useAuthEmail == "1") {
										totalLev += 0.5;
										$("#cereMail").addClass("ok");
										$("#cereMail").attr("href", "javaScript:void(0)");
									} else
										$("#cereMail").attr("href", "https://app.etongdai.com/certification/attestation");
									if(data.body.extend.authBackCard == "2") {
										totalLev += 0.5;
										$("#cradBind").addClass("ok");
										$("#cradBind").attr("href", "javaScript:void(0)");
									} else
										$("#cradBind").attr("href", "https://app.etongdai.com/certification/attestation");
									if(data.body.flag == "0") {
										totalLev += 0.5;
										$("#tranpwdftl").addClass("ok");
										$("#tranpwdftl").attr("href", "javaScript:void(0)");
									} else
										$("#tranpwdftl").attr("href", "https://app.etongdai.com/safe/tranpwdftl");

									if(totalLev < 3) {
										$("#safeLev,#safeLev2").empty().html("低");
										$("#bar1,#bars").width("30%").removeClass().addClass("di");
									} else if(totalLev == 5) {
										$("#safeLev,#safeLev2").empty().html("高");
										$("#bar1,#bars").width("100%").removeClass().addClass("gao");
									} else {
										$("#safeLev,#safeLev2").empty().html("中");
										$("#bar1,#bars").width("65%").removeClass().addClass("zhong");
									}
									if(data.body.unUse > 0) {
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
							success: function(data) {
								if(data.success) {
									if(data.info == '请先登录') {
										alert(data.info);
										window.location.href = "https://app.etongdai.com/login/index";
										return;
									}
									if(data.info > 0) {
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
							<h2 class="number" title="Etdzgqo326">
					Etdzgqo326
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
							<p class="p3">余额：<em>￥<em id='allowPrice'></em></em>
							</p>

						</div>
					</div>
					<div class="bd nav_l">
						<ul class="ul_v">
							<li class="li1 ">
								<a href="https://app.etongdai.com/account/index" class="t"><span></span>账户总览</a>

							</li>
							<li class="li2  ">
								<a class="t"><span></span>我的资金</a>

								<div class="zmenu">
									<a href="https://app.etongdai.com/subsidiary/list"><i>▪</i>资金明细</a>
									<a href="https://app.etongdai.com/recharge/payment"><i>▪</i>账户充值</a>
									<a href="https://app.etongdai.com/withdrawal/apply"><i>▪</i>账户提现</a>
								</div>
							</li>
							<li class="li3  ">
								<a class="t"><span></span>投资者申请</a>

								<div class="zmenu">
									<a href="${pageContext.request.contextPath}/manager/toapplyloanlist"><i>▪</i>债权转让申请</a>
								</div>
							</li>
							<li class="li4 ">
								<a class="t"><span></span>借款者申请</a>
								
								<div class="zmenu">
									<a href="${pageContext.request.contextPath}/manager/toapplyloanlist"><i>▪</i>抵押贷款申请</a>
									<a href="${pageContext.request.contextPath}/manager/toaddpawn"><i>▪</i>新增抵押物申请</a>
								</div>

							</li>
							<li class="li5 ">
								<a class="t"><span></span>用户账户管理</a>

								<div class="zmenu">
									<a href="https://app.etongdai.com/certification/attestation"><i>▪</i>用户列表</a>

								</div>
							</li>

							<li class="li6 cur1" >
								<a class="t"><span></span>公告管理</a>
								<i class="cura"></i>
								<script type="text/javascript">
								</script>
								
								
								<div class="zmenu">
									<a href="${pageContext.request.contextPath}/manager/tonoticelist" class="cur2"><i>▪</i>公告管理
								
									</a>
								</div>
							</li>

						</ul>
					</div>
					<div class="service">
					</div>

				</div>