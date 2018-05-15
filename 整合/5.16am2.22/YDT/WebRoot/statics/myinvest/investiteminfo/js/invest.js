/**
 * 投资最新js  目前和承接在一起
 * 之前的太TMD 乱了   重新写一份   主要更新了  投资   输入金额和加减号  和全投点击事件  之后金额变换的规则
 * @author  leifeng
 * @date 2017-12-21
 */
/**
 * //定义一个  判断加号之后 给减号绑定一个点击事件  防止绑定多个点击事件
 *  目前有三个字
 *  0是初始值
 *  1是投资详情页的加减号置灰的时候，只有flag==1的时候才能给加减号恢复原来的颜色和绑定点击事件
 *  2是投资确认页的确认投资的按钮置灰的时候，只有flag==2的时候才能把 确认投资按钮 恢复原来的颜色和绑定点击事件
 */
var addFlag = 0;
var flag = 0;
var minusFlag = 0;
var server = $("#hideServer").val();
//确认投资框  点击关闭
$(".confirm .close").click(function() {
	$(".inforbox").hide();
	$("#okbtn").removeAttr("disabled").removeClass("btn-disabled");
	if(flag == 2) {
		flag = 0;
		$(".investment_sure").bind("click", function() {
			investment()
		});
		$(".transfer_sure").bind("click", function() {
			transfer()
		});
	}
})

/**
 * 页面加载后后初始化数据
 */
$(function() {

	$(".jian").bind("click", function() {
		minusMoney()
	});
	$(".jia").bind("click", function() {
		addMoney()
	});

	var canInvestCash = Number($(".canInvestCash").text().replace(/,/g, "")); // 可投金额
	var canUseCash = 0;
	if($(".canUseCash").text() != '') {
		canUseCash = parseInt($(".canUseCash").text().replace(/,/g, "")); // 可用余额，取整数
	}
	var maxInvestMoney = canUseCash >= canInvestCash ? canInvestCash : canUseCash; // 谁小取谁
	var minInvestMoney = Number($("#minInvestAmt").val().replace(/,/g, "")); //最小投资金额

	//如果可投金额小于最低投资金额  输入框显示可投金额  加减号和 全投置灰
	if(canInvestCash <= minInvestMoney) {
		$(".jian").addClass("but_in");
		$(".jia").addClass("but_in");
		$(".jia").addClass("but_in");
		$(".jian").unbind("click");
		$('.whole').removeClass('btn_m_all').addClass("whole_but_in");
		$('#money').val(canInvestCash)
	} else if(minInvestMoney >= 1000) { //如果最低投资金额大于等于1000的时候  显示最低投资金额
		$('#money').val(minInvestMoney);
	} else if(minInvestMoney >= 100 && minInvestMoney < 1000) { //如果最低投资金额小于1000   目前线上基本都是100
		if(canInvestCash >= 100 && canInvestCash < 1000) { //如果可投金额大于等于100 小于1000 显示最低投资金额
			$('#money').val(minInvestMoney);
		} else if(canInvestCash >= 1000) { //如果可投金额大大于等于1000的时候 显示1000  不需要判断可投金额小于100的时候  这时候 可投金额已经小于最低投资金额了
			$('#money').val(1000); //  在第一步的时候就判断了进不来这里
		}
	}
	//上面是为金额输入框复制  这里根据投资金额与 最低投资金额和 可投金额 进行判断   对加减号进行置灰
	if($("#money").val() > 0) {
		var nowMoney = Number($("#money").val().replace(/,/g, ""));
		if(nowMoney == minInvestMoney && nowMoney == canInvestCash) { //如果投资金额等于最低投资金额并且投资金额等于可投金额  加减号置灰
			$(".jian").addClass("but_in");
			$(".jia").addClass("but_in");
			$(".jia").addClass("but_in");
			$(".jian").unbind("click");
			$('.btn_m_all').removeAttr('onclick');
			$(".btn_m_all").addClass("but_in");
		} else if(nowMoney == minInvestMoney) {
			minusFlag = 1;
			$(".jian").addClass("but_in");
			$(".jian").unbind("click");
		} else if(nowMoney == canInvestCash) {
			addFlag = 1;
			$(".jia").addClass("but_in");
			$(".jia").unbind("click");
		}
		computeFun_tz();
	}

	//加号事件
	// $(".jia").click(function(){
	function addMoney() {
		var totalnum = 0;
		var nowMoney = parseInt($('#money').val());
		totalnum = nowMoney + 100;
		//点击加号之后  如果当前的金额大于等于可投金额   显示可投金额  加号置灰
		if(totalnum >= canInvestCash) {
			addFlag = 1;
			$(".jia").addClass("but_in");
			$(".jia").unbind("click")
			totalnum = canInvestCash;
		}
		//如果当前金额大于最低投资金额   减号恢复颜色绑定点击事件
		if(totalnum > minInvestMoney) {
			$(".jian").removeClass("but_in");
			if(minusFlag == 1) {
				$(".jian").bind("click", function() {
					minusMoney()
				});
			}
			minusFlag = 0;
		}
		$('#money').val(totalnum);
		payAmt(); //实付金额赋值
		computeFun_tz(); //计算预期收益
	}

	//减号事件
	function minusMoney() {
		var totalnum = 0;
		var nowMoney = parseInt($('#money').val());
		totalnum = nowMoney - 100;
		if(totalnum <= minInvestMoney) { //如果当前金额 小于等于 最低投资金额  显示最低投资金额  减号置灰
			minusFlag = 1;
			totalnum = minInvestMoney;
			$(".jian").unbind("click");
			$(".jian").addClass("but_in");
			if(totalnum < canInvestCash) {
				$(".jia").removeClass("but_in");
				if(addFlag == 1) {
					$(".jia").bind("click", function() {
						addMoney()
					});
				}
				addFlag = 0;
			}
		}
		//如果当前金额大于最低投资金额   加号恢复颜色绑定点击事件
		if(totalnum > minInvestMoney) {
			$(".jia").removeClass("but_in");
			if(addFlag == 1) {
				$(".jia").bind("click", function() {
					addMoney()
				});
			}
			addFlag = 0;
		}
		$('#money').val(totalnum);
		payAmt(); //实付金额赋值
		computeFun_tz(); //计算预期收益
	}

	// 全部
	$(".btn_m_all").click(function() {
		$("#money").val(canUseCash >= canInvestCash ? canInvestCash : canUseCash); // 谁小取谁
		var nowMoney = Number($("#money").val().replace(/,/g, ""));
		//如果当前金额等于可投金额  加号置灰
		if(nowMoney == canInvestCash) {
			if(minusFlag == 1) {
				$(".jian").removeClass("but_in");
				$(".jian").bind("click", function() {
					minusMoney()
				});
			}
			minusFlag = 0;
			$(".jia").unbind("click");
			$(".jia").addClass("but_in");
			addFlag = 1;
		}
		//如果当前金额 小于等于最低投资金额 则减号置灰
		if(nowMoney <= minInvestMoney) {
			minusFlag = 1;
			$(".jian").unbind("click");
			$(".jian").addClass("but_in");
			if(addFlag == 1) {
				$(".jia").removeClass("but_in");
				$(".jia").bind("click", function() {
					addMoney()
				});
			}
			addFlag = 0;
		}
		payAmt(); //实付金额赋值
		// digital_three($(".payAmt"),1);
		computeFun_tz(); //计算预期收益
	});

	function moneyEmit() {
		var money = Number($("#money").val().replace(/,/g, ""));
		//如果当前金额小于 最低投资金额  并且 可投金额大于最低投资金额 显示最低投资金额 减号置灰
		if(money <= minInvestMoney && canInvestCash > minInvestMoney) {
			$(this).val(minInvestMoney);
			if(addFlag == 1) {
				$(".jia").removeClass("but_in");
				$(".jia").bind("click", function() {
					addMoney()
				});
			}
			minusFlag = 1;
			$(".jian").unbind("click");
			$(".jian").addClass("but_in");
			addFlag = 0;
		}
		//如果当前金额 大于等于 可投金额 显示可投金额  加号置灰
		if(money >= canInvestCash) {
			$(this).val(canInvestCash);
			if(minusFlag == 1) {
				$(".jian").removeClass("but_in");
				$(".jian").bind("click", function() {
					minusMoney()
				});
				minusFlag = 0;
			}
			addFlag = 1;
			$(".jia").unbind("click");
			$(".jia").addClass("but_in");
		} else if(money > minInvestMoney && money < canInvestCash) {
			if(minusFlag == 1) {
				$(".jian").removeClass("but_in");
				$(".jian").bind("click", function() {
					minusMoney()
				});
				minusFlag = 0;
			}
			if(addFlag == 1) {
				$(".jia").removeClass("but_in");
				$(".jia").bind("click", function() {
					addMoney()
				});
				addFlag = 0;
			}
		}
		payAmt(); //实付金额赋值
		// digital_three($(".payAmt"),1);
		computeFun_tz(); //计算预期收益
	}

	//输入金额失焦
	$("#money").blur(moneyEmit);
	$("#money").keyup(function() {
		var money = Number($("#money").val().replace(/,/g, ""));
		//如果当前金额小于 最低投资金额  并且 可投金额大于最低投资金额 显示最低投资金额 减号置灰
		if(money <= minInvestMoney && canInvestCash > minInvestMoney) {
			//$(this).val(minInvestMoney);
			if(addFlag == 1) {
				$(".jia").removeClass("but_in");
				$(".jia").bind("click", function() {
					addMoney()
				});
			}
			minusFlag = 1;
			$(".jian").unbind("click");
			$(".jian").addClass("but_in");
			addFlag = 0;
		}
		//如果当前金额 大于等于 可投金额 显示可投金额  加号置灰
		if(money >= canInvestCash) {
			$(this).val(canInvestCash);
			if(minusFlag == 1) {
				$(".jian").removeClass("but_in");
				$(".jian").bind("click", function() {
					minusMoney()
				});
				minusFlag = 0;
			}
			addFlag = 1;
			$(".jia").unbind("click");
			$(".jia").addClass("but_in");
		} else if(money > minInvestMoney && money < canInvestCash) {
			if(minusFlag == 1) {
				$(".jian").removeClass("but_in");
				$(".jian").bind("click", function() {
					minusMoney()
				});
				minusFlag = 0;
			}
			if(addFlag == 1) {
				$(".jia").removeClass("but_in");
				$(".jia").bind("click", function() {
					addMoney()
				});
				addFlag = 0;
			}
		}
		payAmt(); //实付金额赋值
		// digital_three($(".payAmt"),1);
		computeFun_tz(); //计算预期收益
	});

	/** 加框* */
	$(".tzj1").hover(function() {
		$(this).addClass("tzj1_b");
	}, function() {
		$(this).removeClass("tzj1_b");
	});

	/*tz-detail资质文件js*/
	var swapLiLength = $(".swiperBox>ul>li").length;
	if(swapLiLength == 5 || swapLiLength > 5) {
		$(".swiperBox>ul>li").css({
			"margin-right": "15px"
		});
	}
	var swiperDivWidth = $(".swiperDiv").width();
	$(".aptitude").css({
		"width": swiperDivWidth + 80
	});
	//未实名认证层隐藏
	$('#btn2,#btn3').click(function() {
		$('#big').hide();
	});
	//时间格式
	Date.prototype.Format = function(fmt) {
		var o = {
			"M+": this.getMonth() + 1, // 月份
			"d+": this.getDate(), // 日
			"h+": this.getHours(), // 小时
			"m+": this.getMinutes(), // 分
			"s+": this.getSeconds(), // 秒
			"q+": Math.floor((this.getMonth() + 3) / 3), // 季度
			"S": this.getMilliseconds()
			// 毫秒
		};
		if(/(y+)/.test(fmt))
			fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
		for(var k in o)
			if(new RegExp("(" + k + ")").test(fmt))
				fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) :
					(("00" + o[k]).substr(("" + o[k]).length)));
		return fmt;
	};

	if(!server) {
		server = '';
	}
	/** 切换内容 tab* */
	$('div.tab_c').css('display', 'none');
	$('div.tab_c').eq(0).css('display', 'block');
	$('.hd_bd a').eq(0).addClass('cur');
	$('.tab_t a').click(function() {
		var tab_i = $('.tab_t a').index(this);
		if($('div.tab_c').eq(tab_i).css("display") == 'block') {
			return;
		}
		$(this).addClass('cur').siblings().removeClass('cur');
		var css = $(this).attr("class");
		// 已查询过的不再查询
		if(css.indexOf("query") == -1) {
			$(this).addClass('query');

			var $iteId = $("#iteId_val"),
				$userId = $("#userId_val");
			if(($iteId.length || $userId.length) && tab_i != 0) {
				var url;
				if(css.indexOf("record") != -1) { // 投标记录
					url = server + "/investments/getInvestRecord/" + $iteId.val();
				} else if(css.indexOf("repay_plan") != -1) { // 还款计划
					url = server + "/creditortransfer/repayplan?rsbId=" + this.id;
				} else if(css.indexOf("audit") != -1) { // 合规资料
					url = server + "/investments/getItemDataCheckInfo/" + $userId.val();
				} else if(css.indexOf("collateral") != -1) { // 风控措施
					url = server + "/investments/getColInfo/" + $iteId.val();
				}
				$.ajax({
					cache: true,
					type: "post",
					url: url,
					success: function(data) {
						data = $.parseJSON(data);
						if(data.success == true) {
							var da = data.body,
								tr = "";
							if(css.indexOf("record") != -1) {
								dalength = da.length > 10 ? 10 : da.length;
								if(dalength > 0) {
									$(".claimCount").text(data.code);
									for(var i = 0; i < dalength; i++) {
										tr += "<tr>" +
											"<th>" + da[i].claInvestorLoginName + "</th>" +
											"<td>" + $("#iteYearRate").text() + "%</td>" +
											"<td>" + da[i].claInitSumYuan.toFixed(2) + "元</td>" +
											"<td>" + da[i].claInitSumYuan.toFixed(2) + "元</td>" +
											"<td>" + new Date(da[i].claCreateTime).Format("yyyy-MM-dd hh:mm:ss") + "</td>" +
											"<td class='t6'>" + da[i].claStateName + "</td>" +
											"</tr>";
									}
								} else {
									tr = "<tr><td colspan='6'>暂无数据</td></tr>";
								}
								$("#item_info").append(tr);
							} else if(css.indexOf("repay_plan") != -1) { // 还款计划
								dalength = da.length;
								if(dalength > 0) {
									for(var i = 0; i < dalength; i++) {
										tr += "<tr" + ((i + 1) == dalength ? " class='last'>" : ">") +
											"<th>" + new Date(da[i].rescPlanDate).Format("yyyy-MM-dd") + "</th>" +
											"<td>" + (Number(da[i].rescPlanPrincipalYuan) + Number(da[i].rescPlanInterestYuan)).toFixed(2) + "</td>" +
											"<td class='t6'>" + da[i].rescStateFdName + "</td>" +
											"</tr>";
									}
								} else {
									tr = "<tr><td colspan='3'>暂无数据</td></tr>";
								}
								$("#repay_info").append(tr);
							} else if(css.indexOf("audit") != -1) {
								var arr = ["基本资料", "联系方式", "房产资料", "配偶资料", "单位资料", "教育背景", "财务状况", "私营业主资料", "其他"],
									state = "",
									date_time = "";
								if(da && da.ratState == 5) {
									state = "审核通过";
								} else {
									state = "待审核";
								}
								if(da && da.ratModifyTime) {
									date_time = new Date(da.ratModifyTime).Format("yyyy-MM-dd");
								} else {
									date_time = "";
								}
								for(var i = 0; i < arr.length; i++) {
									tr += "<tr>" +
										"<th>" + arr[i] + "</th>" +
										"<td>" + date_time + "</td>";
									if(state == "审核通过") {
										tr += "<td class='t6'><i></i>" + state + "</td>" +
											"</tr>";
									} else {
										tr += "<td class='t6'>" + state + "</td>" +
											"</tr>";
									}
								}
								$("#audit_info").append(tr);
							} else if(css.indexOf("collateral") != -1) {
								if(da && da.length && da.length > 0) {
									$(".title_name").text(da[0].colName);
									$(".col_content").text(da[0].colDesc);
								}
							}
						}

					}
				});
			}
		}
		$('.tab_c').eq(tab_i).show().siblings(".tab_c").hide();
	});
	/** 切换下载内容 tab* */
	$('.tab_t1 a').toggle(
		function() {
			$(this).addClass('cur').siblings().removeClass('cur');
			var i = $('.tab_t1 a').index(this);
			$('.tab_c1').eq(i).fadeIn('slow').addClass("cur_c").siblings(".tab_c1").hide().removeClass("cur_c");
			// 显示合同列表，已查询过的不再查询
			var css = $(this).attr("class");
			if(css.indexOf("query") == -1) {
				$(this).addClass('query');
				$.ajax({
					cache: true,
					type: "post",
					url: server + "/investments/getInvestorClaim?iteId=" + $("#iteId_val").val(),
					success: function(data) {
						if(data) {
							data = $.parseJSON(data);
							if(data.list && data.list.length) {
								var len = data.list.length;
								if(len > 0) {
									var da = data.list;
									var str = '';
									for(var i = 0; i < len; i++) {
										str += '<tr>' +
											'<th>' + new Date(da[i].claCreateTime).Format("MM-dd hh:mm") + '</th>' +
											'<td>' + da[i].claInitSumYuan + '元</td>' +
											'<td class="t3">';
										if(da[i].claContractInvest) {
											if(da[i].claContractInvest == 1) {
												str += '合同生成失败';
											} else if(da[i].claContractInvest == 2) {
												str += '合同生成中';
											} else {
												str += '<a href="' + server + '/investments/downloadContract2?flag=1&conId=' + da[i].claContractInvest + '" >点击下载</a>';
											}
										}
										str += '</td></tr>';
									}
									$('#con_list').append(str);
								}
							}
						}
					}
				});
			}
		},
		function() {
			$('.tab_c1.cur_c').css('display', 'none');
		});

	$("#showdiv").click(function() {
		findconlist($("#iteId_val").val(), 1);
		$(".jk_tc").show();
	});

	/** table2* */
	$(".tb2:last").addClass("last");
	$(".tzs2 dd:nth-child(6),.tzs1 dd:nth-child(4)").addClass("th2");
	$(".tzs2 dd:nth-child(1),.tzs2 dd:nth-child(6)").addClass("th");
	$(".tzs2 dd:nth-child(2),.tzs2 dd:nth-child(7)").addClass("dd2");
	$(".tzs2 dd:nth-child(3),.tzs2 dd:nth-child(8)").addClass("dd3");
	$(".tzs2 dd:nth-child(4)").addClass("dd4");
})

function payAmt() {
	var money = "";
	if($("#money").val()) {
		money = Number($("#money").val().replace(/,/g, ""));
	}
	var ticValue = Number($("#ticValue").val());
	var payAmt = money;
	var ticType = $("#ticType").val();
	if(ticType != 'INTEREST_PLUS') {
		payAmt = money - ticValue;
	}
	if(payAmt <= 0) {
		$(".payAmt").text(0);
		$("#payAmt").val(0);
	} else {
		$(".payAmt").text(payAmt);
		$("#payAmt").val(payAmt);
	}
	digital_three($(".payAmt"), 1);
}

function investment() {
	$("#errorPass").text("");
	if($("#password").val() == '') {
		$('#errorPass').text("请输入交易密码");
		$(this).removeAttr("disabled");
		return;
	};
	$("#type").val("complete");
	$("#pwd").val(toMd5($("#password").val()));
	$(".investment_sure a").addClass("btn-disabled");
	$.ajax({
		type: 'post',
		url: server + '/investments/investComplete',
		data: $('#form_login').serialize(),
		async: false,
		success: function(data) {
			data = $.parseJSON(data);
			if(data.valid) {
				$("#success_money").val(data.investSum);
				$("#success_claid").val(data.claId);
				$("#form_success").submit();
			} else {
				$("#password").val('');
				if(data.code == null) {
					$(".inforbox").hide();
					$("#errorInfo").html(data.errorInfo);
					$("#genbox").show();
				} else if("3002" == data.code) {
					$(".investment_sure a").removeClass("btn-disabled");
					$("#errorPass").text(data.errorInfo);
				} else if("3001" == data.code) {
					flag = 2;
					$(".investment_sure").unbind("click");
					$("#errorPass").text("密码错误次数过多，账号已被限制交易!一小时后自动解冻，或联系客服！");
				} else if("101" == data.code) { //余额不足
					$(".inforbox").hide();
					$("#moneyNone").show();
				} else if("200" == data.code) {
					$(".inforbox").hide();
					$("#errorInfo3").html("您还没有实名认证，不能进行资金交易！");
					$("#realNamebox").show();
				} else if("reload" == data.code) {
					$(".inforbox").hide();
					$("#relaodErrorInfo").html(data.errorInfo);
					$("#reloadbox").show();
				} else {
					$(".inforbox").hide();
					$("#errorInfo").html("数据请求失败，请刷新后再尝试！");
					$("#genbox").show();
				}
			}
		}
	});
}

function transfer() {
	$("#errorPass").text("");
	if($("#password").val() == '') {
		$('#errorPass').text("请输入交易密码");
		$(".transfer_sure").removeAttr("disabled");
		return;
	};
	$(".transfer_sure a").addClass("btn-disabled");
	$.ajax({
		type: 'post',
		url: server + '/creditortransfer/checkTransfers',
		data: {
			"claTransId": $("#claTransId_val").val(),
			"type": "complete",
			"password": $("#password").val(),
			"money": $("#money").val()
		},
		async: false,
		success: function(data) {
			data = $.parseJSON(data);
			if(data.success) {
				$("#form_transfer").submit();
			} else {
				$("#password").val('');
				if(data.code == null) {
					$(".inforbox").hide();
					$("#errorInfo").html(data.info);
					$("#genbox").show();
				} else if("five" == data.code) {
					flag = 2;
					$(".transfer_sure").unbind("click");
					$("#errorPass").text("密码错误次数过多，账号已被限制交易!一小时后自动解冻，或联系客服！");
				} else if("ppc7" == data.code) { //密码错误
					$(".transfer_sure a").removeClass("btn-disabled");
					$("#errorPass").text(data.info);
				} else if("101" == data.code) { //余额不足
					$(".inforbox").hide();
					$("#moneyNone").show();
				} else if("1" == data.code) {
					$(".inforbox").hide();
					$("#errorInfo3").html("您还没有实名认证，不能进行资金交易！");
					$("#realNamebox").show();
				} else if("reload" == data.code) {
					$(".inforbox").hide();
					$("#relaodErrorInfo").html(data.info);
					$("#reloadbox").show();
				} else {
					$(".inforbox").hide();
					$("#errorInfo").html("数据请求失败，请刷新后再尝试！");
					$("#genbox").show();
				}
			}
		}
	});
}
//绑定确认承接点击事件方法
$(".transfer_sure").bind("click", function() {
	transfer()
});
//绑定确认投资点击事件方法
$(".investment_sure").bind("click", function() {
	investment()
});
//我同意  选择和不选择  确认投资和确认承接按钮置灰的方法
$(".agreement input").click(function() {
	if(!($(".agreement input").is(":checked"))) {
		flag = 2;
		$(".transfer_sure a").addClass("btn-disabled");
		$(".investment_sure a").addClass("btn-disabled");
		$(".transfer_sure").unbind("click");
		$(".investment_sure").unbind("click");
	} else {
		$(".transfer_sure a").removeClass("btn-disabled");
		$(".investment_sure a").removeClass("btn-disabled");
		//因为置灰的时候  按钮点击事件被禁用了   所以这里还要绑定下点击事件
		$(".transfer_sure").bind("click", function() {
			transfer()
		});
		$(".investment_sure").bind("click", function() {
			investment()
		});
	}
});

//弹框 关闭事件 关闭窗口
$(".promptbox .close,.promptbox2 .close,.promptbox3 .close,.promptbox  #error_sure,.promptbox2  #error_sure,.promptbox3  #error_sure,#error_cance,#error_cance2")
	.click(function() {
		$(".promptbox").hide();
		$(".promptbox2").hide();
		$(".promptbox3").hide();
		$("#okbtn").removeAttr("disabled").removeClass("btn-disabled");
	})
//弹框 关闭事件 关闭窗口  刷新页面
$("#reload_error_sure,#reload_close").click(function() {
	$(".promptbox").hide();
	$(".promptbox2").hide();
	$(".promptbox3").hide();
	window.location.reload();
})

//交易密码移入  清空密码框
$("#password").focus(function() {
	$("#errorPass").text("");
})
//点击任何位置  忘记交易密码隐藏
$(document).bind('click', function() {
	$('.icon_text').css('display', 'none');
});
//点击问号图标  显示忘记交易密码
$('.icon_apn ,.icon_text').bind('click', function(e) {
	$('.icon_text').css('display', 'block');
	stopPropagation(e);
});

function stopPropagation(e) {
	if(e.stopPropagation) {
		e.stopPropagation();
	} else {
		e.cancelBubble = true;
	}
}

//投资详情页计算预期收益
function computeFun_tz() {
	var fee, money, earnMoney;
	var limitTime, repayType;
	var repayment = 0,
		earnMoneyNPrize;
	var ticTypeVal = $("#ticType").val();

	function compute(yearRate) {
		limitTime = parseFloat($("#iteRepayDate").val());
		money = parseFloat($("#money").val());
		fee = parseFloat(0);
		repayType = $("#iteRepayType").val();
		if("DEBX" == repayType) {
			repayType = 1; // 按月还本息
		} else if("AYHX_DQHB" == repayType) {
			repayType = 2; // 月还息到期还本
		} else if("DQHBX" == repayType) {
			repayType = 3; // 到期还本息
		} else {
			repayType = 1;
		}
		// ************** /*radio3 按月*/
		if($("#iteRepayInterval").val() == "MONTH") {
			/* 按月还本息 */
			if(repayType == 1) {
				if(yearRate > 0) {
					var _month_apr = (yearRate / (1 - fee)) / 1200; // 管理费用
					var _li = Math.pow((1 + _month_apr), limitTime);
					repayment = Math.round(money * (_month_apr * _li) / (_li - 1) *
						100) / 100; // 待收
					var detail_Repayment_Lixi; // 利息
					var detail_Lixi_Only; // 净利息
					var interest = 0;
					for(i = 0; i < limitTime; i++) {
						/*
						 * 还款利息计算 @第n个月利息 @（a*月利率-每月还款本息）*（1+月利率)^n+每月还款本息
						 */
						var _lu = Math.pow((1 + _month_apr), i);
						detail_Repayment_Lixi = (money * _month_apr - repayment) *
							_lu + repayment; // 利息
						var a = Math.round(detail_Repayment_Lixi * 100) / 100;
						detail_Lixi_Only = Math.round(a * 100) / 100;
						interest += detail_Lixi_Only;
					}
					earnMoney = interest;
				} else {
					earnMoney = Math.round(money) / 100;
				}
			}
			/* 月还息到期还本 */
			else if(repayType == 2) {
				earnMoney = money * yearRate * limitTime / 1200;
			}
			// **************/*到期还本息*/
			else if(repayType == 3) {
				earnMoney = money * yearRate * limitTime / 1200; // 利息+无奖励
			}
		}
		// **************/*radio4 按天*/
		if($("#iteRepayInterval").val() == "DAY") {
			earnMoney = money * yearRate * limitTime / 36000;
		}
		return earnMoney
	}

	// 用一步的话如下
	var a = parseFloat(compute(parseFloat($("#iteYearRatel").val())).toFixed(2));
	$("#yqje").html(fmoneys_self(a));
	$(".yqje_02").text(fmoneys_self(a));

	//计算加息利息
	if(ticTypeVal == 'INTEREST_PLUS') {
		var b = parseFloat(compute(parseFloat($("#ticValue").val())).toFixed(2));
		$(".increase-rate").html("+加息利息<i>" + fmoneys_self(b) + "</i>元");
	} else {
		$(".increase-rate").html("");
	}
};

/*项目基本情况置顶*/
$.fn.smartFloat = function() {
	var position = function(element) {
		var top = element.position().top,
			pos = element.css("position");
		$(window).scroll(function() {
			var scrolls = $(this).scrollTop();
			if(scrolls > top) {
				if(window.XMLHttpRequest) {
					element.css({
						position: "fixed",
						top: 0
					});
				} else {
					element.css({
						top: scrolls
					});
				}
			} else {
				element.css({
					position: pos,
					top: top
				});
			}
		});
	};
	return $(this).each(function() {
		position($(this));
	});
};

function scrollLis() {
	var toTop = offs.top - $(window).scrollTop();
	if(toTop == 0 || toTop < 0) {
		if(!$('#fixed').hasClass('ab')) {
			$('#fixed').addClass('ab');
			$(".fixed_bd").css({
				"padding-top": "65px"
			})
		}
	} else {
		$('#fixed').removeClass('ab');
		$(".fixed_bd").css({
			"padding-top": "10px"
		})
	}
}

var offs = $('#fixed').offset();
$(window).scroll(function() {
	scrollLis();
});

/*项目基本情况置顶 完*/

//投资详情页查看借款合同
function findconlist(iteId, pageId) {
	var dataurl = '/investments/getBorrowerContract?iteId=' + iteId + '&pageId=' + pageId;
	$.ajax({
		type: 'post',
		url: dataurl,
		dataType: 'json',
		async: false,
		success: function(data) {
			if(data && data.list && data.list.length) {
				var len = data.list.length;
				if(len > 0) {
					var da = data.list;
					var str = '';
					for(var i = 0; i < len; i++) {
						str += '<tr><th>' + da[i].useLoginName + '</th><td >';
						if(da[i].state == 0) {
							str +=
								'<a href="/investments/downloadContract2?flag=4&conId=' + da[i].conId +
								'" >点击下载</a>';
						} else if(da[i].state == 2) {
							str += '合同生成中';
						} else if(da[i].state == 1) {
							str += '合同生成失败';
						}
						str += '</td></tr>';
					}
					$('#conlist').text("");
					$('#conlist').append(str);
					$('.conpage').text("");
					var pageVar = ''; //
					var pageNum = Number(data.pageNum);
					var pageId = Number(data.pageId);
					pageVar += '<span class="prev ';
					if(pageId == 1 || pageNum <= 1) {
						pageVar += 'btn-disabled';
					}
					pageVar +=
						'" onclick="findconlist($(\'#iteId_val\').val(), ' + (pageId - 1) + ');"><</span>';
					for(var k = 1; k <= pageNum; k++) {
						if(pageId == k) {
							pageVar += '<span class="active">' + k + '</span>';
						} else {
							pageVar +=
								'<a class="btn" onclick="findconlist($(\'#iteId_val\').val(), ' + k + ');">' + k +
								'</a>';
						}
					}
					pageVar += '<span class="next ';
					if(pageNum <= 1 || pageId == pageNum) {
						pageVar += 'btn-disabled';
					}
					pageVar += '" onclick="findconlist($(\'#iteId_val\').val(), ' + (pageId + 1) + ');">></span>' +
						'共' + pageNum +
						'页 到第<input type="text" name="pageText" id="pageText" class="page_box" ' +
						"onkeyup=\"this.value=this.value.replace(/[^\\d]/g,'')\" " +
						"onafterpaste=\"this.value=this.value.replace(/[^\\d]/g,'')\" value=\"" + pageId +
						"\">页" +
						"<input type=\"button\" name=\"pageBtn\" value=\"确定\" class=\"page_button\" " +
						"onclick=\"findconlist($(\'#iteId_val\').val(), $(\'#pageText\').val());\">";
					$('.conpage').append(pageVar);
				}
			}
		}
	});
}
//投资详情页查看借款合同  完