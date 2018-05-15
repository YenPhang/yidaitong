<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
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
<script src="/js/DD_belatedPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.png,.png:hover,img,background');
</script>
<![endif]-->
<link href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/com.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/tf.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/iconfont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/common.css">
<script>
Stringserver={
	server:"https://app.etongdai.com",
	staticServer:"https://www.etongdai.com",
	sslServer:"https://app.etongdai.com",
	mobileServer:"https://m.etongdai.com"
}
</script>
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/digital.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/base.js"></script>

<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/eframe.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/fancyselect.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/md5.js"></script>
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
		$(".global-header .banner-loop").css("background-image","url(statics/register/images/banner_03.png)");
		$(".global-header .banner-loop").animate({opacity:1},500,"linear",function(){
			$(".global-header .banner-loop").delay(2000).animate({opacity:0},500,"linear",function(){
				$(".global-header .banner-loop").css("background-image","url(statics/register/images/banner_02.png)");
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

</script><link href="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/css/reg.css" rel="stylesheet">
</head>
<body>
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
	      <img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/wechat.png" alt="易通贷">
	    </div>
	    <nav class="tool user nav" id="isLoginHead">
	    </nav>
	</div>

	<header class="grid global-header">
		<div class="grid-unit-1-3 logo" >
			<img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/banner_01.png" style="position: relative;top: 1px;" onclick="location.href='https://www.etongdai.com/'" alt="易通贷" title="易通贷" />
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
	</script>	<div class="conbd">
		<div class="con24">
		 <input type="hidden" id="path" path=${pageContext.request.contextPath}/>
			<h2 class="hd">
				<span class="t">找回密码</span>
				<div class="ab_r graya">
					<span>填写账户信息<i>></i></span><span class="blue">验证身份 <i>></i></span><span>设置新密码
						<i>></i>
					</span><span>完成</span>
				</div>
			</h2>
			<div class="bd">
				<div class="margin">
					<ul class="formli ul_v li1">
						<li><em>账户信息</em>
							<div class="em_num">
								<strong class="em_sea cur" onclick="return showDomain(event,this)"> 
								 <!-- <i class="arwb"></i>  -->
								 <label>手机</label> 
		<!-- 						 <strong class="em_pan" style="display: none">
								 <a href="#" class="pe">手机</a> 
								 <a href="#" class="el">邮箱</a>
								 </strong> -->
								</strong>
								<p class="orange new_sp"><a href="/complain/index?optType=1">手机号不可用？</a></p>
								<!-- <p class="orange new_sp2" style="display: none"><a href="/complain/index?optType=2">邮箱不可用？</a></p> -->
							</div>
						</li>
					</ul>
						<form <%-- method="post" action="${pageContext.request.contextPath }/fpsw1" --%>>
						<ul class="formli ul_v li2">
							<%-- <li><em>用户名</em> <i class="name">${userSession.userName }</i></li> --%>
							<li class="phone"><em>手机号码</em> <i class="name">${userSession.userTel}</i></li>
							<input type="hidden" class="userTel"  id="userTel" name="userTel"  value="${userSession.userTel}"/>
							<li class="yzm"><em>图片验证码</em> 
								<label class="inp">
									<input type="text" name="imgCodev" id="imgCodev" class="i_text notEmpty" placeholder="输入图片验证码" />
								</label>
								<div class="ab_l yzmtu">
								<a id="changeVerifImageRegister" onclick="javascript:changeImage();">
						        <img class="code_img" name="code_img" id="code_img" src="${pageContext.request.contextPath }/getVerifyCode" />
					            </a>
								</div>
							</li>
							<li class="phone"><em>手机验证码</em> <label class="inp" id="inp">
							<input type="text" id="code" name="code" class="i_text notEmpty" placeholder="输入手机验证码" /></label>
								<div class="ab_l yzmtu yzsj" id="yzm">
									<!-- <button id="sendFind" type="button" class="btn">免费获取<br />验证码</button> -->
									<button type="button" id="sendFind" <!--class="smscodeInp"  name="smscodeInp" -->免费获取<br />验证码</button>
								</div>
							</li> 
							<p class="voice"></p>
							<li class="tool phone">
								<!-- <button type="button" value="下一步" class="f_submit btn" /> -->
                                <button type="button" class="btn">下一步</button> 
							</li>
						</ul>
						</form>
				</div>
			</div>
		</div>
	</div>
	<nav id="redpack">
		            <a href="https://app.etongdai.com/static/novice-guide/pc.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/redpacket.gif" style="margin-left:-17px;"/></a>
	</nav>
	<nav id="fixbar">
	    <a onclick="kf_online();" class="online">在线<br />客服</a>
	    <a href="https://app.etongdai.com/calculator" class="calculator">收益<br />计算器</a>
	    <a href="https://www.etongdai.com/download.html" class="download" onmousemove="$('.downloadimg').show();" onmouseout="$('.downloadimg').hide();">APP<br />下载</a>
	    <a class="wxdownload" onmousemove="$('.wxdownloadimg').show();" onmouseout="$('.wxdownloadimg').hide();">微信<br />服务号</a>
	    <a class="back">返回<br />顶部</a>
	    <img class="downloadimg" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/qrode_01.jpg" alt="APP下载">
	    <img class="wxdownloadimg" src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/qrode_02.png" alt="微信服务">
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
            <div class="grid-unit-1-8 qrcode"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/qrode_01.jpg" alt="易通贷APP下载">易通贷APP下载</div>
	        <div class="grid-unit-1-8 qrcode"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/qrode_02.jpg" alt="关注微信-易通贷资讯">关注微信-易通贷资讯</div>
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
	       <a href="http://webscan.360.cn/index/checkwebsite?url=www.etongdai.com" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/01.gif"></a>
	        <a href="https://search.szfw.org/cert/l/CX20140515008078008136" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/02.gif"></a>
	        <a href="http://www.isc.org.cn/xhhy/hydw/content-32.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/03.gif"></a>
	        <a href="https://ss.knet.cn/verifyseal.dll?sn=e14051911010849050et7r000000&amp;ct=df&amp;a=1&amp;pa=0.7002172293035737" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/04.gif"></a>
	        <a href="http://www.bcpcn.com/product/rz/bq/BCP2615734826.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/05.gif"></a>
	        <a href="http://www.315online.com.cn/member/315140031.html" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/06.gif"></a>
	        <a href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1571278794" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/wxrz-white.jpg"></a>
	        <a target="_blank" href="http://www.etongdai.com/p2p/help/guide/4/2017071111727.html"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/08.gif"></a>
	        <a href="http://www.cecy.org.cn/bencandy_search.php?fid=122&amp;id=1204" target="_blank"><img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/09.png"></a>
	        <a id="ppb" key ="587c78dbefbfb04f3bf057c6" logo_size="124x47" logo_type="business" href="http://www.anquan.org">
				<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/aq_auth.js"></script>
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
                <img src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/picture/ghs.png" style="float:left;"/>
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
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/common.js"></script>
<script>
	var _this = $("#ppb");
    _this.children("img").css({"width":"auto","height":"36"});
</script>	
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/log_reg.js"></script>
<script src="${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/czqcheck.js"></script>
	<script src="/js/my/czqSend.js?v=20180508"></script>
<script>
    (function(){
        $(".conbd").css({"min-height":$(window).height()-140})
    })()
$(function() {
	$("#sendFind").attr("disabled", "disabled");
    $("#imgCodev").on("input", function () {
        if($(this).val().length==4){
            $("#sendFind").removeAttr("disabled");
        }else{
            $("#sendFind").attr("disabled", "disabled");
        }
    })
/* 	$("#imgCode").attr({
		src : "/validCode?" + new Date().getTime()
	});
	$("#imgCode").click(function() {
		this.src = "/validCode?" + new Date().getTime();
	}); */
	$(".i_text").checkInput({
		mobileCode : 'code',
		imgCode : 'imgCodev'
	});
});

function genTimestamp() {      
        var time = new Date();      
        return time.getTime();      
    }   
function changeImage() {  
         $('#code_img').attr('src',  
                 "${pageContext.request.contextPath }/getVerifyCode?timestamp=" + genTimestamp());  
     }  

//短信验证码倒计时
var waitFind = 60;
function timeFind(o) {
    if (waitFind == 0) {
        $(o).removeAttr("disabled");
        $(".btn").html("再次发送<br />验证码");
        $(".btn").removeClass("btn-disabled").removeAttr('disabled');
        waitFind = 60;
    } else {
        $(o).attr("disabled", "disabled");
        $(".btn").html(+waitFind + "秒后<br />可再次发送");
        $(".btn").addClass("btn-disabled").attr("disabled", "disabled");
        waitFind--;
        setTimeout(function() {
            timeFind(o);
        }, 1000);
    }
}

$("#sendFind").click(function(){
                   var userTel = null;
                   userTel=$("#userTel").val();
                   alert(userTel);                   
                   var imgCodev = null;
                   imgCodev=$("#imgCodev").val();
                    alert(imgCodev);
                   var path =$("#path").attr("path");
                    $.ajax({
					type : 'GET',
					url  : path+'/sendme2',
					data : {
						userTel : userTel,
						imgCodev : imgCodev
					},
					dataType : 'json',
					timeout : 1000,
					success : function(data) {
                        if (data.result == "errorbyimg") {
							alert("图片验证码错误,请重试。");
						}else if(data.result != "" && data.result == "success") {
                            alert("验证码已发送,请注意查看。");
							timeFind($(".btn"));
						} 
					},
					error : function() {
						   alert("异常错误,请重试。");
					},
				  });   
                 });
                 
  $(".btn").click(function(){
                   var userTel = null;
                   userTel=$("#userTel").val();
                   alert(userTel);                   
                   var imgCodev = null;
                   imgCodev=$("#imgCodev").val();
                   alert(imgCodev);
                   var sendFind = null;
                   sendFind=$("#code").val();
                    alert(sendFind);
                   var path =$("#path").attr("path");
                    $.ajax({
					type : 'GET',
					url  : path+'/fpsw1',
					data : {
						userTel : userTel,
						imgCodev : imgCodev,
						sendFind : sendFind,
					},
					dataType : 'json',
					timeout : 1000,
					success : function(data) {
                        if (data.result == "errorbyimg") {
							alert("图片验证码错误,请重试。");
						} else if(data.result != "" && data.result == "errorbycode") {
						    window.location.href = path+"/error";
						}  else if(data.result != "" && data.result == "success") {
                         window.location.href = path+"/fpsw2";
						} 
					},
					error : function() {
						   alert("异常错误,请重试。");
					},
				  });    
				  alert("ninh");
                 }); 
/* function showDomain(e, strong) {
	var o = e.srcElement || e.target;
	var label = strong.getElementsByTagName('label')[0];
	var drop = strong.getElementsByTagName('strong')[0];
	if (o.tagName == 'A') {
		drop.style.display = 'none';
		label.innerHTML = o.innerHTML;
		return false;
	} else
		drop.style.display = drop.style.display == 'block' ? 'none' : 'block';
}
<!-- 手机邮箱切换 -->
$('.pe').click(function() {
	$('.phone').show();
	$('.email').hide();
	$(".new_sp").show();
	$(".new_sp2").hide();
});
$('.el').click(function() {
	$('.phone').hide();
	$('.email').show();
	$(".new_sp").hide();
	$(".new_sp2").show();
});

$(".em_sea").mouseleave(function () {
 	$(".em_pan").css("display","none");
}); */
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
	<script src='${pageContext.request.contextPath }/statics/modifypsw/findPassWord/js/tongji_360.js' language='JavaScript' charset='gb2312'></script>
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