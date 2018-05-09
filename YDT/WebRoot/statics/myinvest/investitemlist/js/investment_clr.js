var type = $("#searchForm input[name=type]");       //项目类型
var scope = $("#searchForm input[name=scope]");     //预期投资回报率
var repay = $("#searchForm input[name=repay]");     //还款期限
var repayType = $("#searchForm input[name=repayType]");     //还款方式
var orderArgs = $("#searchForm input[name=orderArgs]");     //排序
var ascDesc = $("#searchForm input[name=ascDesc]");    //升降
var pageId = $("#searchForm input[name=pageId]");     //分页
var init_invest = $("#searchForm input[name=init_invest]"); //初始化新手标

function init(){
	if(getUrlParam("type")){
		 type.val(getUrlParam("type"));
	}
	if(getUrlParam("scope")){
		scope.val(getUrlParam("scope"));
	}
	if(getUrlParam("repay")){
		repay.val(getUrlParam("repay"));
	}
	if(getUrlParam("repayType")){
		repayType.val(getUrlParam("repayType"));
	}
	if(getUrlParam("orderArgs")){
		orderArgs.val(getUrlParam("orderArgs"));
	}
	if(getUrlParam("ascDesc")){
		ascDesc.val(getUrlParam("ascDesc"));
	}
    
    if(getUrlParam("pageId")&&getUrlParam("pageId")!=""){
        pageId.val(getUrlParam("pageId"));
    }

    if(getUrlParam("init_invest")){
        type.val(getUrlParam("init_invest"));
    }

   // searchFundsList();
}
$(function(){
    init();
});
$("#_menu li").eq(1).click();
//阻止还款期限 还款方式 i的冒泡
$("#search .choose_status_coverage").click(
    function stopEvent(event){ //阻止冒泡事件
    //取消事件冒泡
    var e=arguments.callee.caller.arguments[0]||event;
    if (e && e.stopPropagation) {
        // this code is for Mozilla and Opera
        e.stopPropagation();
    } else if (window.event) {
        // this code is for IE
        window.event.cancelBubble = true;
    }
})

var descOp=true;


$("#search span,.paging span").click(function(){
    var parent = $(this).parents("p")||$(this).parents("h2");
    var parentName = parent[0].className;
    if(parentName == 'type'){
        type.val($(this).attr("data-val"));
    }else if(parentName == 'scope'){
        scope.val($(this).attr("data-val"));
    }else if(parentName == 'repay'){
        repay.val($(this).attr("data-val"));
    }else if(parentName == 'repayType'){
        repayType.val($(this).attr("data-val"));
    }else if(parentName == 'orderArgs'){
        if($(this).attr("data-val") == ""){
            $(this).siblings().removeClass("desc asc");
            orderArgs.val("3");
            ascDesc.val("asc");
        }else{
            if($(this).hasClass("current")){
                if(ascDesc.val() == "asc"){
                    $(this).addClass("desc").removeClass("asc").siblings().removeClass("desc asc");
                    ascDesc.val("desc");
                }else{
                    $(this).addClass("asc").removeClass("desc").siblings().removeClass("desc asc");
                    ascDesc.val("asc");
                }
            }else{
                if(ascDesc.val() == "asc"||ascDesc.val() == ""){
                    $(this).addClass("asc").removeClass("desc").siblings().removeClass("desc asc");
                }else{
                    $(this).addClass("desc").removeClass("asc").siblings().removeClass("desc asc");
                }
            }
            orderArgs.val($(this).attr("data-val"));
        }
        
    }
    $(this).addClass("current").siblings().removeClass("current")
            .css({'background-color':'#fff','color':'#444'});
    pageId.val("1");
    //初始化新手标
    if(init_invest.val()=='0'||!init_invest.val()){
        if(!$(this).attr("data-val")){
            init_invest.val('0')
        } else {
            init_invest.val('1')
        }
    } else {
        init_invest.val('1')
    }
    var param = "type=" +type.val()+ "&"+
                "scope=" +scope.val()+ "&"+
                "repay=" +repay.val()+ "&"+
                "repayType=" +repayType.val()+ "&"+
                "orderArgs=" +orderArgs.val()+ "&"+
                "ascDesc=" +ascDesc.val()+ "&"+
                "pageId=" +pageId.val()+ "&"+
                "init_invest=" +init_invest.val()+ "&";
    var state = {
        title: null,
        url: param
    };
    window.history.pushState(state,null, "?" + param);
    searchFundsList();
});
// 分页
function paging(obj){
    if($(obj).attr("data-val")){
        pageId.val($(obj).attr("data-val"));
        //初始化新手标
        if(init_invest.val()=='0'||!init_invest.val()){
            init_invest.val('0')
        } else {
            init_invest.val('1')
        }
        var param = "type=" +type.val()+ "&"+
                    "scope=" +scope.val()+ "&"+
                    "repay=" +repay.val()+ "&"+
                    "repayType=" +repayType.val()+ "&"+
                    "orderArgs=" +orderArgs.val()+ "&"+
                    "ascDesc=" +ascDesc.val()+ "&"+
                    "pageId=" +pageId.val()+ "&"+
                    "init_invest=" +init_invest.val()+ "&";
        var state = {
            title: null,
            url: param
        };
        window.history.pushState(state,null, "?" + param);
        searchFundsList();
    }
}
function onPageText(obj){
    var pageTextNum = $(obj).val();
    var pageingMax = pageId.attr("data-max");
    if(pageTextNum<=pageingMax&&pageTextNum>0){
        pageId.val(pageTextNum);
    }else{
        //alert("请输入正确的页码范围！");
    }
}
window.addEventListener('popstate', function(e){
  if (history.state){
    //var state = e.state;
    init();
  }
}, false);
//标的hover事件
$('#funds').on('mouseenter',".funds-list",function () {
    $(this).find('.investment').css('display', 'block')
            .end().find('.investment_des').css('display', 'none')
            .end().css({
                        'padding':'0 10px',
                        '-moz-box-shadow':'1px 1px 10px 1px rgba(0,0,0,0.10)',
                        '-webkit-box-shadow':'1px 1px 10px 1px rgba(0,0,0,0.10)',
                        '-ms-box-shadow':'1px 1px 10px 1px rgba(0,0,0,0.10)',
                        'box-shadow':'1px 1px 10px 1px rgba(0,0,0,0.10)',
                        'z-index':'2'
                        })

    }
);

$('#funds').on('mouseleave',".funds-list",function () {

        $(this).find('.investment_des').css('display', 'block')
            .end().find('.investment').css('display', 'none')
            .end().css({'padding':'0','box-shadow':'none','z-index':'1'})
    }
);
//标的点击事件
$('#funds').on('click','.funds-list',function(){
    var _value= $(this).find('a').attr('href');
    window.location.href=_value
})
//筛选条件鼠标移入变色
$(".seacrch_conditions span").hover(
    function () {
        if(!$(this).hasClass("current")){
            $(this).css({'background-color':'#2ea7e0','color':'#fff'})
        }

    },
    function () {
        if(!$(this).hasClass("current")){
            $(this).css({'background-color':'#fff','color':'#444'})
        }
    }
);
