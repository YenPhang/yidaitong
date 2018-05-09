function outheight(){
    var Hheight=$(".coupon-box-shadow .coupon-box").height()/2;
    $(".coupon-box-shadow .coupon-box").attr("style","margin-top:-"+Hheight+"px");
}
//优惠券列表
var isHaveRed = true;
var isHaveJxq = true;
function couponList(index){
    $('.coupon-box .coupon-list').empty();
    var successFlag = false;
    var info = "";
    $.ajax({
        type : "get",
        async : false,
        dataType : "json",
        data: {
            "itemId": $("#iteId_val").val(),
            "investAmt": $("#money").val(),
            "ticId": $("#ticId").val(),
            "iteRepayDate": $("#iteRepayDate").val(),
            "iteRepayInterval": $("#iteRepayInterval").val(),
            "newUserItem": $("#newUserItem").val(),
            "ticType": index
        },
        url : "/investments/listTicket",
        error : function(){
            alert("数据请求失败，请刷新后再尝试！");
            window.location.reload();
            successFlag = false;
        },
        success : function(data){
            successFlag = true
            var list = data;
            if(list && list.length!= 0){
                var str = '';
                var canUse = '';
                var disableDays = 0;
                for(var i in list){
                    // canUse = (list[i].ticRemark).indexOf("新手标除外") == -1?"通用红包":"一月、新手标不可用";
                    disableDays = parseInt(((new Date(list[i].ticEndDate)).getTime()-(new Date()).getTime()) / (1000 * 60 * 60 * 24));
                    if(Number(list[i].ticId) == $("#ticId").val()){
                        if(index == 0){ //红包
                            str += '<li class="on" onclick="choosed('+list[i].ticId+','+list[i].ticValue+',\''+list[i].ticType+'\')">';
                        }else{ //加息券
                            str += '<li class="jxq on" onclick="choosed('+list[i].ticId+','+list[i].ticValue+',\''+list[i].ticType+'\')">';
                        }
                    }else{
                        if(index == 0){ //红包
                            str += '<li onclick="choosed('+list[i].ticId+','+list[i].ticValue+',\''+list[i].ticType+'\')">';
                        }else{ //加息券
                            str += '<li class="jxq" onclick="choosed('+list[i].ticId+','+list[i].ticValue+',\''+list[i].ticType+'\')">';
                        }
                    }
                    str += '<div>';
                    str += '<em><i data-ticId="'+list[i].ticId+'">'+list[i].ticValue;
                    if(index == 0){
                        str += '</i>元</em>'
                    }else{
                        str += '</i>%</em>'
                    }
                    str += '<p>失效日期<br><span>'+new Date(list[i].ticEndDate).Format("yyyy-MM-dd")+'</span></p><i></i></div>'+
                    '<p class="source">来源：'+list[i].ticResource+'</p>'+
                    '<p class="info">'+list[i].ticRemark+'</p>'+
                    '<i></i></li>';
                }
                $('.coupon-box .coupon-list').html(str);
                $(".coupon-box-shadow .coupon-list li").hover(function(event){
                    var _self = $(this)
                    if(index==1){
                        _self.css("border","1px solid #E94639");
                    }else{
                        _self.css("border","1px solid #FF5500");
                    }
                },function(event){
                    $(this).css("border","1px solid transparent");
                });
            }else{
                if(index == 0){
                    $('.coupon-box .coupon-list').html("<p style='line-height: 260px;'>暂无可用红包</p>");
                    isHaveRed = false;
                }else{
                    $('.coupon-box .coupon-list').html("<p style='line-height: 260px;'>暂无可用加息券</p>");
                    isHaveJxq = false;
                }
            }
        }
    });
    return successFlag
}
//优惠券切换
$(".coupon-box>p").click(function(e){
    var index = $(this).children("span").index(e.target);
    if(index==0){
        couponList(0);
    }else{
        couponList(1);
    }
    $(e.target).addClass("sel").siblings("span").removeClass("sel");
})
$(function() {
	if($("#ticId").val()!= "" && $("#ticId").val()!=0){
		$(".redPacketAmt").text($("#ticValue").val());
		$(".payAmt").text($("#payAmt").val());
        if($("#payAmt").val()<0){
            $(".payAmt").text(0);
        }
        digital_three($(".payAmt"), 1);
        $('.update').show();
        $('.check').hide();
    }
    //当前选中红包还是加息券
    if($("#ticType").val() == 'INTEREST_PLUS'){
        $(".couponVal").html("加息券：").siblings("dd").children("i").text("%");
        $(".hb-id1").html("使用加息券的项目不可转让");

    }else{
        $(".couponVal").html("红包金额：").siblings("dd").children("i").text("元");
        $(".hb-id1").html("实付金额：<span class=\"payAmt thousand_char\">0</span>元</p>");
    }
    payAmt();
    //红包切换
    $('.qh').click(function () {
        if ($(this).attr("class").indexOf('act_b') != -1) {
            return;
        }
        var index = $(this).index();
        window.location.href = '/redPacket/index?state=' + index;
    });

    $(document).click(function(e){
		var targetName = e.target.className;
		if(targetName == "choose" || targetName == "modify"){
            var money = $("#money").val();
            if (money == 0) {
                return;
            }
            // $('.coupon-box-shadow').show();
		}else{
		    //$('.coupon-box-shadow').hide();
		}
	})
	// 红包详情显示
	$('.choose').click(function(){
		var money = $("#money").val();
		if(money==0){
			alert("请输入投资金额!");
			return;
		}
        $(".coupon-box-shadow").scrollTop(0);
        if($(".coupon-box-shadow .coupon-box>p>span:nth-of-type(1)").hasClass("sel")){
            if(couponList(0)){
                $('.coupon-box-shadow').show();
                outheight();
            }
        }else{
            if(couponList(1)){
                $('.coupon-box-shadow').show();
                outheight();
            }
        }

    });

    // 修改红包
    $(".modify").click(function () {
        var money = $("#money").val();
        if (money == 0) {
            alert("请输入投资金额!");
            return;
        }
        if($("#ticType").val() == 'INTEREST_PLUS'){
            $(".coupon-box-shadow .coupon-box>p>span:nth-of-type(2)").addClass("sel").siblings("span").removeClass("sel");
            couponList(1);
        }else{
            $(".coupon-box-shadow .coupon-box>p>span:nth-of-type(1)").addClass("sel").siblings("span").removeClass("sel");
            couponList(0);
        }
        $('.coupon-box-shadow').show();
        $(".coupon-box-shadow .list-box").scrollTop(0);
        outheight();
    });
});

// 选择优惠券
function choosed(id, ticVal, ticType) {
    var ticValue = 0;
    var ticId = 0;
    var oldTicId = $("#ticId").val();
    if (id == 'undefined') {
        ticValue = 0;
        ticId = 0;
        $("#ticType").val("");
        $(".coupon-box-shadow").hide();
        $(".update").hide();
        $(".check").show();
    } else if (id == oldTicId) {
        ticValue = 0;
        ticId = 0;
        $("#ticType").val("");
        $(".coupon-box-shadow").hide();
        $(".update").hide();
        $(".check").show();
    } else {
        ticValue = ticVal;
        ticId = id;
        $("#ticType").val(ticType);
        $(".coupon-box-shadow").hide();
        $(".check").hide();
        $(".update").show();
        if(ticType == 'INTEREST_PLUS'){
            $(".couponVal").html("加息券：").siblings("dd").children("i").text("%");
            $(".hb-id1").html("使用加息券的项目不可转让");
        }else{
            $(".couponVal").html("红包金额：").siblings("dd").children("i").text("元");
            $(".hb-id1").html("实付金额：<span class=\"payAmt thousand_char\">0</span>元</p>");
        }

    }
    var money = Number($("#money").val().replace(/,/g, ""));
    // TODO 赋值红包金额、编号，考虑投资金额输入顺序
    var payAmt = money;
    var ticTypeName = $("#ticType").val();
    if(ticTypeName != 'INTEREST_PLUS'){
        payAmt = money - ticValue;
    }
    $(".moneyGive").val(money);
    $("#ticValue").val(ticValue);
    $("#ticId").val(ticId);
    $("#payAmt").val(payAmt);
    $(".redPacketAmt").text(ticValue);
    if (payAmt >= 0) {
        $(".payAmt").text(payAmt);
    } else {
        $(".payAmt").text(0);
    }
    if($(".payAmt")){
        digital_three($(".payAmt"), 1);
    }
    computeFun_tz();
}
//我的账户-加息券
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
function init(){
    var ticType = getUrlParam("ticType"); //卡券类型：0-红包 ，1-加息券
    var state = getUrlParam("state"); //卡券使用状态：0-未使用；1-已使用
    if(ticType=='1'){
        $(".coupon .coupon-title>span:nth-of-type(2)").addClass("coupon-title-sel");
    }else{
        $(".coupon .coupon-title>span:nth-of-type(1)").addClass("coupon-title-sel");
    }
    if(state=='1'){
        $(".arrow").addClass("arrow-1");
    }else{
        $(".arrow").removeClass("arrow-1");
    }
}
init();
function queryList(obj){
    var ticType = getUrlParam("ticType");
    if(ticType==1){
        if($(obj).hasClass("blue")){
            location.href="/redPacket/index?state=0&ticType="+ticType;
        }else{
            location.href="/redPacket/index?state=1&ticType="+ticType;
        }
    }else{
        if($(obj).hasClass("blue")){
            location.href="/redPacket/index?state=0&ticType=0";
        }else{
            location.href="/redPacket/index?state=1&ticType=0";
        }
    }
}

//优惠券切换
$(".coupon-box>p").click(function(e){
    var index = $(this).children("span").index(e.target);
    if(index==0){
        couponList(0);
    }else{
        couponList(1);
    }
    $(e.target).addClass("sel").siblings("span").removeClass("sel");
})



