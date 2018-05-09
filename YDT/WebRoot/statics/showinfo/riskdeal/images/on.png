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
<script src="/js/DD_belatedPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.png,.png:hover,img,background');
</script>
<![endif]-->
<link href="/css/com.css?1" rel="stylesheet">
<link href="/css/tf.css" rel="stylesheet">
<link rel="stylesheet" href="/new/css/normalize.css">
<link rel="stylesheet" href="/new/iconfont/iconfont.css">
<link rel="stylesheet" href="/new/css/base.css">
<link rel="stylesheet" href="/new/css/common.css?v=20180319">
<script>
Stringserver={
	server:"https://app.etongdai.com",
	staticServer:"https://www.etongdai.com",
	sslServer:"https://app.etongdai.com",
	mobileServer:"https://m.etongdai.com"
}
</script>
<script src="/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="/js/digital.js?"></script>
<script type="text/javascript" src="/js/base.js"></script>

<script src="/js/eframe.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="/js/fancySelect.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/md5.js"></script>
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
		$(".global-header .banner-loop").css("background-image","url(/new/img/banner_03.png?v=20180315)");
		$(".global-header .banner-loop").animate({opacity:1},500,"linear",function(){
			$(".global-header .banner-loop").delay(2000).animate({opacity:0},500,"linear",function(){
				$(".global-header .banner-loop").css("background-image","url(/new/img/banner_02.png)");
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

</script><!--写入页面内的ＣＳＳ-->
<link rel="stylesheet" type="text/css" href="/css/tishi/ts.css">
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
	        <img src="/new/img/wechat.png" alt="易通贷">
	    </div>
	    <nav class="tool user nav" id="isLoginHead">
	    </nav>
	</div>

	<header class="grid global-header">
		<div class="grid-unit-1-3 logo" >
			<img src="/new/img/banner_01.png" style="position: relative;top: 1px;" onclick="location.href='https://www.etongdai.com/'" alt="易通贷" title="易通贷" />
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
<div class="conbd">
	<div class="wrongs con24 tishi" style="border-left:none;border-right:none;border-bottom:none;">
        <div class="result clearfix" style="width:500px; margin:0 auto;padding:30px 0;">
            <img src="../../../img/tishi/404.png" style="margin-left:40px;"/>
            <div class="resultr" style="width:500px; margin:0 auto;">
                <h3 id="wugao" style="text-align: center;padding-right:0;">&nbsp;咦？页面没有找到！</h3>
                <p class="graya" style="text-align: center;">如果您在浏览时多次出现此错误，请联系客服</p>
                <em style="text-align: center; font-style: inherit;font-size: 26px;color:#949393;
                    display: block;line-height: 50px;">400-064-5156</em>
                <div class="tool clearfix" style="margin-bottom: 30px;margin-top:20px;margin-left:20px;">
                    <a href="javascript:history.go(-1);" class="look btn">返回上一页</a>
                    <a href="https://www.etongdai.com/" class="look1 btn2" style="margin-right:0">返回首页</a>
                </div>
            </div>
        </div>
        </div>
</div>
	<nav id="redpack">
		            <a href="https://app.etongdai.com/static/novice-guide/pc.html" target="_blank"><img src="/new/img/redpacket.gif" style="margin-left:-17px;"/></a>
	</nav>
	<nav id="fixbar">
	    <a onclick="kf_online();" class="online">在线<br />客服</a>
	    <a href="https://app.etongdai.com/calculator" class="calculator">收益<br />计算器</a>
	    <a href="https://www.etongdai.com/download.html" class="download" onmousemove="$('.downloadimg').show();" onmouseout="$('.downloadimg').hide();">APP<br />下载</a>
	    <a class="wxdownload" onmousemove="$('.wxdownloadimg').show();" onmouseout="$('.wxdownloadimg').hide();">微信<br />服务号</a>
	    <a class="back">返回<br />顶部</a>
	    <img class="downloadimg" src="/new/img/qrode_01.jpg" alt="APP下载">
	    <img class="wxdownloadimg" src="/new/img/qrode_02.png" alt="微信服务">
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
	        <div class="grid-unit-1-8 qrcode"><img src="/new/img/qrode_01.jpg" alt="易通贷APP下载">易通贷APP下载</div>
	        <div class="grid-unit-1-8 qrcode"><img src="/new/img/qrode_02.jpg" alt="关注微信-易通贷资讯">关注微信-易通贷资讯</div>
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
	        <a href="http://webscan.360.cn/index/checkwebsite?url=www.etongdai.com" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/01.gif"></a>
	        <a href="https://search.szfw.org/cert/l/CX20140515008078008136" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/02.gif"></a>
	        <a href="http://www.isc.org.cn/xhhy/hydw/content-32.html" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/03.gif"></a>
	        <a href="https://ss.knet.cn/verifyseal.dll?sn=e14051911010849050et7r000000&amp;ct=df&amp;a=1&amp;pa=0.7002172293035737" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/04.gif"></a>
	        <a href="http://www.bcpcn.com/product/rz/bq/BCP2615734826.html" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/05.gif"></a>
	        <a href="http://www.315online.com.cn/member/315140031.html" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/06.gif"></a>
	        <a href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1571278794" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/wxrz-white.jpg"></a>
	        <a target="_blank" href="http://www.etongdai.com/p2p/help/guide/4/2017071111727.html"><img src="https://www.etongdai.com/img/sys/zheng/08.gif"></a>
	        <a href="http://www.cecy.org.cn/bencandy_search.php?fid=122&amp;id=1204" target="_blank"><img src="https://www.etongdai.com/img/sys/zheng/09.png"></a>
	        <a id="ppb" key ="587c78dbefbfb04f3bf057c6" logo_size="124x47" logo_type="business" href="http://www.anquan.org">
				<script src="https://static.anquan.org/static/outer/js/aq_auth.js"></script>
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
                <img src="/img/beian/ghs.png" style="float:left;"/>
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
<script src="/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="/new/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="/new/js/common.js"></script>
<script>
	var _this = $("#ppb");
    _this.children("img").css({"width":"auto","height":"36"});
</script><div style="display:none;">
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
	<script src='https://pw.cnzz.com/tongji_360.php?id=1253407868&pid=e360&l=2' language='JavaScript' charset='gb2312'></script>
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