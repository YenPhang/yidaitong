var pctop = '<div id="toolbar">\
    <span class="tool">服务热线：<strong>400-064-5156</strong></span><span class="tool online">在线客服</span>\
    <div class="grid service">\
    <a class="grid-unit-1-2" onclick="kf_online();"><i class="iconfont">&#xe634;</i>在线客服</a>\
    <a class="grid-unit-1-2 service-email"><i class="iconfont">&#xe636;</i>客服邮件</a>\
    <h3 class="grid-unit-1">服务时间：周一至周日8:00-20:00</h3>\
    </div>\
    <nav class="tool nav">\
    <a href="https://www.etongdai.com/download.html">手机APP</a>\
    <a class="mobile">官方微信</a>\
    <a href="https://www.etongdai.com/p2p/help/guide.html" class="nav_guide" target="_blank">新手指引</a>\
    <a href="https://www.etongdai.com/p2p/help/" class="nav_help" target="_blank">帮助中心</a>\
    </nav>\
    <div class="mobile-box"><h3>扫描关注官方微信号</h3><img src="/r/cms/www/template-v1/new/img/wechat.png" alt="易通贷"></div>\
    <nav class="tool user nav" id="isLoginHead"></nav>\
    </div>\
    <header class="grid global-header">\
    <div class="grid-unit-1-3 logo" >\
    <img src="/r/cms/www/template-v1/new/img/banner_01.png" onclick="location.href=\'https://www.etongdai.com/\'" alt="易通贷" title="易通贷" />\
    <div class="banner-loop" onclick="location.href=\'https://www.etongdai.com/\'"></div>\
    </div>\
    <ul class="grid-unit-2-3 global">\
    <li class="grid-unit-1-8"><a href="https://www.etongdai.com/" class="nav_home" title="首页">首页</a></li>\
    <li class="grid-unit-1-6"><a href="http://app.etongdai.com/investments/index" class="nav_inv" title="我要投资">我要投资</a></li>\
    <li class="grid-unit-1-6"><a href="http://app.etongdai.com/newCredit/addloan/creditloan" class="nav_loan" title="我要借款">我要借款</a></li>\
    <li class="grid-unit-1-6"><a href="http://app.etongdai.com/safetySystem/nvestingSafety" class="nav_safe" title="风控措施">风控措施</a></li>\
    <li class="grid-unit-1-6"><a href="https://www.etongdai.com/p2p/informations/index.html" class="nav_information" title="信息披露">信息披露</a></li>\
    <li class="grid-unit-1-6"><a href="https://www.etongdai.com/p2p/abouts/abouts_company.html" class="nav_about" title="关于我们">关于我们</a></li>\
    </ul>\
    <span id="accountStatus"></span>\
    <input type="hidden" value="http://app.etongdai.com" id="hideServer" />\
    </header>';

function defCurr(key, add) {
  console.log(key);
  $('#toolbar,.global-header').find('.nav_' + key).addClass(add || 'cur');
} 