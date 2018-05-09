//caizhiqin:注册部分、借款部分、认证部分和资料部分所使用的输入校验插件

var regx = {
	email : /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/,
	trim : /(^\s+)|(\s+$)|(\s+)/,
	mobile : /^((13[0-9])|(15[^4])|(18[0-9])|(17[0,1,3-8])|(14[5-8])|(166)|(198)|(199))+\d{8}$/,
	phone : /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/,
	name : /^[a-zA-Z0-9]+$/,
	regPassword : /^(?!([a-zA-Z]+|\d+)$)[a-zA-Z\d]{6,16}$/,
	inviter : /^[A-Za-z0-9\u4e00-\u9fa5]+$/,// 数字字母中文
	num : /^\d+$/,
	idCard1 : /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/,// 身份证正则表达式(15位)
	idCard2 : /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$/
};

// 提示文本
var validText = {
	general : {// 下拉框
		info : "请选择",
		empty : "请选择"
	},

	loginName : {// 登录用户名
		info : "请输入手机号/用户名/邮箱",
		empty : "请输入手机号/用户名/邮箱",
		error : "4-30位字符，只可由英文、数字组成"
	},

	regName : {// 注册用户名
		info : "4-30位字符，只可由英文、数字组成",
		empty : "请输入用户名",
		error : "4-30位字符，只可由英文、数字组成"
	},

	findName : {// 找回密码用户名
		info : "请输入您的用户名/认证邮箱/认证手机",
		empty : "请输入您的用户名/认证邮箱/认证手机",
		error : "请输入合法的用户名/认证邮箱/认证手机"
	},

	inviter : {// 邀请人
		info : "请输入邀请人用户名",
		error : "请输入正确的邀请人用户名"
	},

	regPassword : {// 密码，仅注册、修改原密码
		info : "6-16位，必须含有字母和数字，不能有空格",
		empty : "请输入密码",
		error : "6-16位，必须含有字母和数字，不能有空格"
	},
	
	password : {// 密码
		info : "请输入6-16位字母和数字组合的密码",
		empty : "请输入密码",
		error : "请输入6-16位字母和数字组合的密码"
	},

	password2 : {// 确认密码
		info : "请确认密码",
		empty : "请确认密码",
		error : "两次输入密码不一致"
	},

	imgCode : {// 图片验证码
		info : "请输入图片中的字符，不区分大小写",
		empty : "请填写验证码"
	},

	mobile : {// 手机号
		info : "请输入正确的手机号码",
		empty : "请输入正确的手机号码",
		error : "请输入正确的手机号码",
		bindReady : "该手机号已被其他用户绑定"
	},

	phone : {
		info : "请输入正确的电话号码",
		error : "请输入正确的电话号码"
	},

	email : {// 邮箱
		info : "请输入您用于认证的邮箱地址",
		empty : "请输入您用于认证的邮箱地址",
		error : "请输入正确的邮箱地址",
		bindReady : "该邮箱已被其他用户使用"
	},

	mobileCode : {// 手机验证码
		info : "请输入手机收到的验证码",
		empty : "请填写验证码"
	},

	emailCode : {// 手机验证码
		info : "请输入邮箱收到的验证码",
		empty : "请填写验证码"
	},

	iteYearRate : {// 年利率
		info : "小于等于20",
		empty : "请填写投资回报率",
		error : "不在允许范围"
	},

	iteLimitYuan : {// 借款金额
		info : "100-100W",
		empty : "请填写借款金额",
		error : "不在允许范围"
	},

	iteTitle : {// 借款标题
		info : "输入借款标题",
		empty : "请填写标题"
	},

	itdName : {// 抵押物名称
		info : "请输入抵押物名称",
		empty : "请输入抵押物名称"
	},

	itdContent : {// 抵押物内容
		info : "请输入抵押物信息",
		empty : "请输入抵押物信息"
	},

	trueName : {// 真实姓名
		info : "请输入真实姓名",
		empty : "请输入真实姓名",
		error : "只能含有中文或者·,长度在20个字符以内"
	},

	IDCard : {// 身份证
		info : "请输入您的身份证号码",
		empty : "请输入您的身份证号码",
		error : "请输入正确的证件号码"
	},

	bankBranch : {// 银行卡支行
		info : "请填写开户行网点",
		empty : "请填写开户行网点",
		error : "请填写正确的开户行网点"
	},

	bankNumber : {// 银行卡卡号
		info : "请输入银行卡帐号",
		empty : "请输入银行卡帐号",
		error : "请输入正确的银行卡帐号"
	},
	
	loanAmount : {// 贷款金额
		info : "请输入贷款金额",
		empty : "请输入贷款金额",
		error : "请输入贷款金额"
	}
	
};

// 主动检测
var validFun = {
	betweenLength : function(o, _min, _max) {// 长度
		return (o.length >= _min && o.length <= _max);
	},
	maxLength : function(o, _max) {
		return (o.length <= _max);
	},
	allNum : function(o) {
		return regx.num.test(o);
	},
	hasWhite : function(o) {// 不能包含空格
		return regx.trim.test(o);
	},
	isName : function(o) {// 用户名正则
		return regx.name.test(o);
	},
	isInviter : function(o) {// 邀请人正则
		return regx.inviter.test(o);
	},
	isMobile : function(o) {// 手机号正则
		return regx.mobile.test(o);
	},
	isPhone : function(o) {
		return regx.phone.test(o);
	},
	isIdCard1 : function(o) {// 身份证正则1
		return regx.idCard1.test(o);
	},
	isIdCard2 : function(o) {// 身份证正则2
		return regx.idCard2.test(o);
	},
	isEmail : function(o) {
		return regx.email.test(o);
	},
	isPassword2 : function(o, o2) {
		return o == o2;
	},
	regPassword : function(o) {
		var reg1 = /[a-zA-Z]+/;
		var reg2 = /[0-9]+/;
		var reg3 = /\s+/;
		return reg1.test(o) && reg2.test(o) && !reg3.test(o);
	}
};

// 信息展示
var validShow = {
	// 用户点击输入框提示
	onFocus : function(input, val) {
		checkChild(input);
		input.child.attr("class", "f_info").html(val);
	},

	// 用户输入信息有误
	wrong : function(input, val) {
		checkChild(input);// 先生成一个备用信息提示框
		input.child.attr("class", "f_wrong").html(val);
		input.sta = 0;// 不可以submit
	},

	// 用户输入信息正确
	right : function(input) {
		checkChild(input);
		input.child.attr("class", "f_right").html("&nbsp;");
		input.sta = 1;// 可以submit
	},

	// 用户输入正确但不打勾
	none : function(input) {
		if (input.child) {
			input.child.remove();// 已有信息框就干掉
			input.child = "";// 否则if(input.child)一直为false
		}
		input.sta = 1;// 允许submit
	},

	// 检查表单能不能提交
	form_submit : function(these) {
		var flag = false;
		for ( var i = 0; i < $(these).length; i++) {
			if ($(these)[i].sta == 1) {// 如果所有input元素的sta都是1才可以提交
				flag = true;
			} else {
				flag = false;
				break;
			}
		}
		return flag;
	}
};

// 检测input框有没有信息提示，没有就给它加一个
function checkChild(input) {
	if (!input.child) {
		var child = $("<span></span>");
		$(input).parents("li").append(child);
		input.child = child;
	}
}

// 页面加载checkInput方法
(function($) {
	$.fn.checkInput = function(obj) {
		var settings = $.extend({}, obj);

		// 聚焦是1，blur为空时是2，blur非空时是3
		$(this).focus(function() {// 聚焦时直接提示
			showInfor(this, 1);
		}).blur(function() {// 失焦时验证信息
			blurFun(this);
		});

		function trim(val) {// ie7 8不支持trim函数 所以要定义一下
			return val.replace(/(^\s*)|(\s*$)/g, "");
		}

		// 失焦判断
		function blurFun(this_obj) {
			if ((trim(this_obj.value)) == "") {// 没值
				if ($(this_obj).attr("class").indexOf("notEmpty") != -1) {// 如果要求非空
					showInfor(this_obj, 2);// 没值提示
				} else {
					validShow.none(this_obj);// 不要求为空那么忽略空值输入
				}
			} else {
				showInfor(this_obj, 3);// 有值
			}
		}

		// 信息提示 num:1输入提示 2没值提示 3对错提示
		function showInfor(it, num) {
			switch (it.name) {
			case settings.loginName:// 登录用户名
				if (num == 1) {
					validShow.onFocus(it, validText.loginName.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.loginName.empty);
				} else {
					validShow.none(it);
				}
				break;

			case settings.regName:// 注册用户名
				if (num == 1) {
					validShow.onFocus(it, validText.regName.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.regName.empty);
				} else {
					if (!validFun.isName(it.value) || validFun.allNum(it.value)
							|| !validFun.betweenLength(it.value, 4, 30)) {
						validShow.wrong(it, validText.regName.error);
					} else {
						if ($(it).siblings(".f_right").length == 0) {
							if ($(it).hasClass("checkOnly")) {// 检测唯一性
								$.ajax({
									type : "post",
									url : "/register/checkLoginName",
									data : "loginName=" + $(it).val(),
									success : function(data) {
										data = $.parseJSON(data);
										if (!data.success) {
											validShow.wrong(it, data.info);
										} else {
											validShow.right(it);
										}
									}
								});
							} else {
								validShow.right(it);
							}
						}
					}
				}
				break;

			case settings.findName:// 密码找回用户名
				if (num == 1) {
					validShow.onFocus(it, validText.findName.info);// 提示输入规则
				} else if (num == 2) {// 输入空的情况
					validShow.wrong(it, validText.findName.empty);
				} else {
					// 全是数字
					if (validFun.allNum(it.value)) {
						if (it.value.length == 11
								&& validFun.isMobile(it.value)) {
							// 手机号可以
						} else {
							validShow.wrong(it, validText.findName.error);
							return;
						}
					} else {// 不全是数字
						if (validFun.isInviter(it.value)
								|| validFun.isEmail(it.value)) {
						} else {
							validShow.wrong(it, validText.findName.error);
							return;
						}
					}
					validShow.none(it);
				}
				break;

			case settings.password:// 密码
				if (num == 1) {
					validShow.onFocus(it, validText.password.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.password.empty);
				} else if (num == 3) {
					if (validFun.hasWhite(it.value)
							|| !validFun.betweenLength(it.value, 6, 16)) {
						validShow.wrong(it, validText.password.error);
					} else {
						validShow.none(it);
					}
				}
				break;

			case settings.regPassword:// 注册密码
				if (num == 1) {
					validShow.onFocus(it, validText.regPassword.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.regPassword.empty);
				} else if (num == 3) {
					if (validFun.hasWhite(it.value)
							|| !validFun.betweenLength(it.value, 6, 16) || !validFun.regPassword(it.value)) {
						validShow.wrong(it, validText.regPassword.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			case settings.regPassword2:// 注册确认密码
				if (num == 1) {
					validShow.onFocus(it, validText.password2.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.password2.empty);
				} else if (num == 3) {
					if (!validFun.isPassword2($("#userDraftLoginPswd").val(),
							it.value)) {
						validShow.wrong(it, validText.password2.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			// 检查邀请人
			case settings.inviter:
				if (num == 1) {
					validShow.onFocus(it, validText.inviter.info);
				} else {
					if (!validFun.isInviter(it.value)
							|| validFun.allNum(it.value)
							|| !validFun.betweenLength(it.value, 2, 30)) {
						validShow.wrong(it, validText.inviter.error);
					} else {
						if ($(it).siblings(".f_right").length == 0) {
							if ($(it).hasClass("checkOnly")) {// 检测friend
								$
										.ajax({
											type : "post",
											url : "/register/checkFirend",
											data : "firendName=" + $(it).val(),
											success : function(data) {
												data = $.parseJSON(data);
												if (!data.success) {
													validShow.wrong(it,
															data.info);
												} else {
													$(
															'input[name="userDraftFirendId"]')
															.val(data.body);
													validShow.right(it);
												}
											}
										});
							} else {
								validShow.right(it);
							}
						}
					}
				}
				break;

			case settings.mobile:// 绑定手机号
			case settings.mobile3:
				if (num == 1) {
					validShow.onFocus(it, validText.mobile.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.mobile.empty);
				} else if (num == 3) {
					if (!validFun.isMobile(it.value)) {
						validShow.wrong(it, validText.mobile.error);
					} else {
						if ($(it).parent().siblings(".f_right").length == 0) {// 如果已经检测过了则不再需要检测
							if ($(it).hasClass("checkBind")) {
								$
										.ajax({
											async : false,
											type : "post",
											url : "/register/checkPhones",
											data : "phones=" + $(it).val(),
											success : function(data) {
												data = $.parseJSON(data);
												if (data.success) {
													validShow.right(it);
												} else {
													validShow
															.wrong(
																	it,
																	validText.mobile.bindReady);
												}
											}
										});
							} else {
								validShow.right(it);
							}
						}
					}
				}
				break;

			case settings.email:// 邮箱
				if (num == 1) {
					validShow.onFocus(it, validText.email.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.email.empty);
				} else if (num == 3) {
					if (!validFun.isEmail(it.value)
							|| !validFun.maxLength(it.value, 50)) {
						validShow.wrong(it, validText.email.error);
					} else {
						if ($(it).parent().siblings(".f_right").length == 0) {// 如果已经检测过了则不再需要检测
							if ($(it).hasClass("checkBind")) {
								$.ajax({
									async : false,
									type : "post",
									url : "/register/checkEmail",
									data : "email=" + $(it).val(),
									success : function(data) {
										data = $.parseJSON(data);
										if (data.success) {
											validShow.right(it);
										} else {
											validShow.wrong(it,
													validText.email.bindReady);
										}
									}
								});
							} else {
								validShow.right(it);
							}
						}
					}
				}
				break;

			case settings.imgCode:// 图片验证码
				if (num == 1) {
					validShow.onFocus(it, validText.imgCode.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.imgCode.empty);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;

			case settings.mobileCode:// 手机验证码
			case settings.mobileCode1:
			case settings.mobileCode2:
			case settings.mobileCode3:
			case settings.mobileCode4:
			case settings.mobileCode5:
				if (num == 1) {
					validShow.onFocus(it, validText.mobileCode.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.mobileCode.empty);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;

			case settings.emailCode:// 邮箱验证码
			case settings.emailCode2:// 邮箱验证码
				if (num == 1) {
					validShow.onFocus(it, validText.emailCode.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.emailCode.empty);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;

			case settings.iteYearRate:// 借款年利率
				if (num == 1) {
					validShow.onFocus(it, validText.iteYearRate.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.iteYearRate.empty);
				} else if (num == 3) {
					if ($(it).val() > 20 || $(it).val() < 1) {
						validShow.wrong(it, validText.iteYearRate.error);
					} else {
						var rate = $(it).val();
						$(it).val(parseFloat(changeTwoDecimal_f(rate)));
						validShow.right(it);
					}
				}
				break;

			case settings.iteLimitYuan:// 借款金额
				if (num == 1) {
					validShow.onFocus(it, validText.iteLimitYuan.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.iteLimitYuan.empty);
				} else if (num == 3) {
					if ($(it).val() > 1000000 || $(it).val() < 100) {
						validShow.wrong(it, validText.iteLimitYuan.error);
					} else {
						var rate = $(it).val();
						$(it).val(parseFloat(changeTwoDecimal_f(rate)));
						validShow.right(it);
					}
				}
				break;

			case settings.iteTitle:// 借款标题
				if (num == 1) {
					validShow.onFocus(it, validText.iteTitle.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.iteTitle.empty);
				} else if (num == 3) {
					validShow.right(it);
				}
				break;

			case settings.itdName:// 抵押物名称
				if (num == 1) {
					validShow.onFocus(it, validText.itdName.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.itdName.empty);
				} else if (num == 3) {
					validShow.right(it);
				}
				break;

			case settings.itdContent:// 抵押物内容
				if (num == 1) {
					validShow.onFocus(it, validText.itdContent.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.itdContent.empty);
				} else if (num == 3) {
					validShow.right(it);
				}
				break;

			case settings.trueName:// 真实姓名
				if (num == 1) {
					validShow.onFocus(it, validText.trueName.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.trueName.empty);
				} else if (num == 3) {
					if (!/^[\u4e00-\u9fa5]+$|^[\u4e00-\u9fa5\·]+$/g
							.test(it.value)
							|| !validFun.maxLength(it.value, 20)) {
						validShow.wrong(it, validText.trueName.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			case settings.IDCard:// 身份证
				if (num == 1) {
					validShow.onFocus(it, validText.IDCard.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.IDCard.empty);
				} else if (num == 3) {
					if (!validFun.isIdCard1(it.value)
							&& !validFun.isIdCard2(it.value)) {
						validShow.wrong(it, validText.IDCard.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			case settings.bankName:// 下拉框
			case settings.areaCode:
				if (num == 2) {
					// validShow.wrong(it,validText.general.empty);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;

			case settings.bankBranch:// 银行支行
				if (num == 1) {
					validShow.onFocus(it, validText.bankBranch.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.bankBranch.empty);
				} else if (num == 3) {
					if (!(/^[\u4E00-\u9FA5A-Za-z0-9]+$/g.test(it.value))
							|| !/[\u4E00-\u9FA5A]/.test(it.value.charAt(0)) || !validFun.maxLength(it.value, 30)) {
						validShow.wrong(it, validText.bankBranch.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			case settings.bankNumber:// 银行卡号
				if (num == 1) {
					validShow.onFocus(it, validText.bankNumber.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.bankNumber.empty);
				} else if (num == 3) {
					if (!validFun.allNum(it.value)
							|| !validFun.betweenLength(it.value, 16, 19)) {
						validShow.wrong(it, validText.bankNumber.error);
					} else {
						validShow.right(it);
					}
				}
				break;

			case settings.phone://电话
			case settings.phone2:
				if (num == 1) {
					validShow.onFocus(it, validText.phone.info);
				} else if (num == 3) {
					if (!validFun.isPhone(it.value)) {
						validShow.wrong(it, validText.phone.error);
					} else {
						validShow.right(it);
					}
				}
				break;
				
			case settings.loanAmount:// 贷款金额
				if (num == 1) {
					validShow.onFocus(it, validText.loanAmount.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.loanAmount.empty);
				} else if (num == 3) {
					if($(it).val() > 0)
						validShow.right(it);
					else
						validShow.wrong(it, validText.loanAmount.empty);
				}
				break;
				
			default:
				if (num == 3) {
					validShow.none(it);
				}
			}
		}

		// 一般表单提交验证
		$(".f_submit").on("click", function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				return true;
			} else {
				return false;
			}
		});

		// 我的资料特殊
		$("._buttonAll").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				flag = true;
			} else {
				return false;
			}

			var addr = $(".nowAddr"), $this = $(this);
			for ( var i = 0; i < addr.length; i++) {
				var $addr = $(addr[i]);
				if ($addr.val() == "") {
					flag = false;
				}
			}
			if (!flag) {
				alert("请填写现居住地址");
				return false;
			} else {
				if ($this.attr("class").indexOf("addrNowSure") > -1) {
					$(".tc_f2").fadeIn();
				}
			}
		});

		// 银行卡解绑邮箱验证
		$(".sendEmail2").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/unBindBankCheck",
					data : {
						emailCode : $("input[name=emailCode2]").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".bank_bd13").show();
							$(".bank_bd12").hide();
						} else {
                            $(".fasterr .info2").html(result.info)
                            $(".fasterr-box").show();
						}
						return false;
					}
				});
			}
		});

		// 银行卡解绑手机验证
		$(".bank_btn12_1").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/unBindBankCheck",
					data : {
						mobileCode : $("input[name=mobileCode5]").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".bank_bd13").show();
							$(".bank_bd12").hide();
						} else {
							alert(result.info);
						}
					}
				});
			}
		});

		// 银行卡绑定第一步
		$(".bank_btn").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				if ($("#area0").val() == "") {
					alert("请选择地区");
					return false;
				}
				$(".bank_bd2").show();
				$(".bank_bd1").hide();
			}
		});

		// 银行卡绑定第二步
		$(".bank_btn2").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/bindBankCard",
					data : {
						mobileCode : $("input[name=mobileCode4]").val(),
						bankBranch : $("input[name=bankBranch]").val(),
						bankNumber : $("input[name=bankNumber]").val(),
						bankName : $("#bankName").val(),
						areaCode : $("#area0").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".bank_bd3").show();
							$(".bank_bd2").hide();
						} else {
							alert(result.info);
						}
						return false;
					}
				});
			}
		});

		// 邮箱解绑
		$(".email_btn11").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/unBindEmailCheck",
					data : {
						emailCode : $("input[name=emailCode]").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".email_bd13").show();
							$(".email_bd11").hide();
						} else {
							alert(result.info);
						}
						return false;
					}
				});
			}
		});

		// 邮箱认证
		$(".email_btn").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/mailcomplete",
					data : {
						email : $("#email").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".email_bd2").show();
							$(".email_bd1").hide();
						} else {
							alert(result.info);
						}
						return false;
					}
				});
			}
		});

		// 实名认证
		$(".ajax_submit").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$(this).text("认证中，请稍候...");
				$(this).attr("disabled", "disabled");
				$.ajax({
					type : "post",
					url : "/certification/ceraudit",
					data : {
						trueName : $("input[name=trueName]").val(),
						IDCard : $("input[name=IDCard]").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".real_bd2").show();
							$(".real_bd1").hide();
							if($(".fix_r .ul_v .hbgif").css("display")=='none'){
								$(".newtask").hide();
							}else {
								$(".newtask").show();
							}
						} else {
							$("#authSpan").removeClass("f_right").addClass("f_wrong");
							$("#authText").html(result.info);
							$(".real_bd2").show();
							$(".real_bd1").hide();
						}
					}
				});
			}
		});

		// 修改手机第一步
		$(".phone_btn11").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/checkCode",
					data : {
						mobileCode : $("#mobileCode2").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".phone_bd12").show();
							$(".phone_bd11").hide();
						} else {
							alert(result.info);
						}
					}
				});
			}
		});

		// 修改手机第二步
		$(".phone_btn12").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/dissociated",
					data : {
						mobileCode : $("#mobileCode3").val(),
						newMobile : $("#mobile3").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".phone_bd13").show();
							$(".phone_bd12").hide();
						} else {
							alert(result.info);
						}
					}
				});
			}
		});

		// 绑定手机号
		$(".phone_btn").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				$.ajax({
					type : "post",
					url : "/certification/complete",
					data : {
						mobileCode1 : $("#mobileCode1").val(),
						mobile1 : $("#mobile1").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							$(".phone_bd2").show();
							$(".phone_bd1").hide();
						} else {
							alert(result.info);
						}
					}
				});
			}
		});

		// 申请借款
		$(".diya_submit").click(
				function() {
					// 校验抵押物勾选和文本框
					var diyaList = $(".table_copy tr").length;
					var diyaDescript = $(".ke-edit-iframe").contents().find(
							".ke-content").text();
					if (diyaList == 1) {
						alert("请选择抵押物信息");
						return false;
					}
					if (diyaDescript == "") {
						alert("请填写借款说明");
						return false;
					}

					// 日期参数特殊处理
					if ($("#iteRepayInterval").val() == 1) {
						$("#iteRepayDate").val($("#iteRepayDate1").val());
					} else {
						$("#iteRepayDate").val($("#iteRepayDate2").val());
					}

					var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
					for ( var i = 0; i < arr.length; i++) {
						blurFun(arr[i]);// 全部失焦校验
					}
					var flag = validShow.form_submit(arr);// 看看能不能提交
					if (flag) {
						return true;
					} else
						return false;
				});
		
		//我要借款 快速申请借款
		$(".tijiao").click(function() {
			var arr = $(this).parents("form").find(".i_text");// 找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);// 全部失焦校验
			}
			var flag = validShow.form_submit(arr);// 看看能不能提交
			if (flag) {
				//校验验证码并对手机号加密
				$.ajax({
					type : "post",
					url : "/borrowing/validate",
					data : {
						mobile : $("#mobile").val(),
						mobileCode : $("#mobileCode").val()
					},
					async : false,
					success : function(datas) {
						result = $.parseJSON(datas);
						if (result.success) {
							//校验成功后发送请求搜贷网
							$.ajax({
								type: 'get',
								async: false,
								url  : $("#soudaila_url").val() + '/admin?module=fastAppRest&action=defaultView&messageJson={%22MOBILE%22:%22' + $("#mobilemi").val() + '%22,%22NAME%22:%22' + encodeURI($("#trueName").val(), "UTF-8") + 
											'%22,%22LOCALAREACODE%22:%22' + encodeURI($("#city").val(),"UTF-8") + '%22,%22MONEYRANGE%22:%22' + $("#loanAmount").val() + '%22}',
								dataType: 'jsonp',
								jsonp: 'jsonpcallback',
								success : function(datas){
									var code = datas.code;
									if(code == 1)
									{
										$(".srclose").fadeIn(); 
										$("#goon").attr('href','/borrowing/goon?appliorinfoid=' + datas.APPLIORINFOID + '&applytmpcode=' + datas.APPLYTMPCODE + '&soudaila_url=' + $("#soudaila_url").val());
									}
									else
									{
										alert(datas.message);
									}
								},
								error: function(XMLHttpRequest, textStatus, errorThrown) {
								}
							});
						} else {
							alert(result.info);
						}
					}
				
				});
			} else {
				return false;
			}
		});
	};
})(jQuery);

// 保留两位小数
function changeTwoDecimal_f(x) {
	var f_x = parseFloat(x);
	if (isNaN(f_x)) {
		alert('function:changeTwoDecimal->parameter error');
		return false;
	}
	f_x = Math.round(f_x * 100) / 100;
	var s_x = f_x.toString();
	var pos_decimal = s_x.indexOf('.');
	if (pos_decimal < 0) {
		pos_decimal = s_x.length;
		s_x += '.';
	}
	while (s_x.length <= pos_decimal + 2) {
		s_x += '0';
	}
	return s_x;
}

$(function() {
	$(".numberOnly").keyup(function() {
		this.value = this.value.replace(/[^\d]/g, '');
	});
	// 我的资料全局提交
	$("#win_sure").click(function() {
		$(".tc_f2").fadeIn();
	});
});