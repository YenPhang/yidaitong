var regx = {
	email : /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/,
	// password:/^.*$/,
	trim : /(^\s+)|(\s+$)|(\s+)/,// 空格
	bad : /(^[A-Z]+$)|(^[a-z]+$)|(^[\w-]+$)/,
	name : /^[a-zA-Z0-9]+$/,
	name2 : /^[A-Za-z0-9\u4e00-\u9fa5]+$/,// 数字字母中文
	num : /^\d+$/,
	regPassword : /^(?!([a-zA-Z]+|\d+)$)[a-zA-Z\d]{6,16}$/,
	chinese : /^[\u4e00-\u9fa5]+$|^[\u4e00-\u9fa5]+\·[\u4e00-\u9fa5]+$/g,
	mobile : /^1\d{10}/,
	phone : /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/,
	idCard1 : /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/,// 身份证正则表达式(15位)
	idCard2 : /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[A-Z])$/
// 身份证正则表达式(18位)
};
// 验证文本
var validText = {
	//找回密码提示	
	findname:{
		info:"请输入您的用户名/认证邮箱/认证手机",
		error:{
			empty : "请输入您的用户名/认证邮箱/认证手机",
			feifa: "请输入合法的用户名/认证邮箱/认证手机",
			badLength: "请输入合法的用户名/认证邮箱/认证手机"
		}
	},
	//用户名验证提示	
	username : {
		onFocus : {
			focus : "4-30位字符，可由英文、数字组成"
		},
		succeed : "",
		error : {
			beUsed : "该用户名已被使用，请使用其它用户名注册",
			badLength : "长度只能在4-30位字符之间",
			badFormat : "用户名只能由英文、数字组成",
			badFormat2 : "用户名只能由英文、数字组成",
			empty : "请填写用户名"
		}
	},
	
	invitename : {
		onFocus : {
			focus : "2-30位字符，可由英文、数字、中文组成"
		},
		succeed : "",
		error : {
			noExist : "该邀请人不存在",
			badLength : "长度只能在2-30位字符之间",
			badFormat : "邀请人只能由英文、数字组成",
			badFormat2 : "邀请人只能由英文、数字、中文组成"
		}
	},
	regPassword : {// 密码，仅注册、修改新密码
		info : "6-16位，必须含有字母和数字，不能有空格",
		empty : "请输入密码",
		error : "6-16位，必须含有字母和数字，不能有空格"
	},
	pwd : {
		onFocus : "6-16位，必须含有字母和数字，不能有空格",
		succeed : "",
		error : {
			badLength : "长度在6-16位字符之间",
			badFormat : "必须同时含有字母和数字",
			badEmpty : "不能包含空格",
			bad : "弱",
			normal : "一般",
			good : "强",
			empty : "请填写密码"
		}
	},
	pwd2 : {
		onFocus : "",
		succeed : "",
		error : {
			// badLength:"密码长度只能在6-16位字符之间",
			badFormat2 : "两次输入密码不一致",
			// badFormat1:"密码只能由英文、数字及标点符号组成",
			empty : "请再次填写密码"
		}
	},
	email : {
		onFocus : "请输入常用Email",
		succeed : "",
		error : {
			beUsed : "该邮箱已被使用，请更换其它邮箱",
			badFormat : "邮箱格式不正确",
			badLength : "长度在50个字符以内",
			empty : "请填写Email"
		}
	},
	authcode : {
		onFocus : "请输入图片中的字符，不区分大小写",
		succeed : "",
		error : {
			empty : "请填写验证码"
		}
	},
	mobilecode : {
		onFocus : "请输入手机验证码",
		succeed : "",
		error : {
			empty : "请填写验证码"
		}
	},
	mobile : {
		onFocus : "请输入手机号码",
		succeed : "",
		error : {
			wrong : "请输入正确的手机号码",
			empty : "请填写手机号码"
		}
	},
	phone : {
		onFocus : "",
		succeed : "",
		error : {
			wrong : "请输入正确的电话号码",
			empty : "请填写手机号码"
		}
	},
	trueName : {
		succeed : "",
		error : {
			wrong : "请填写正确的姓名，只能含有中文或者·",
			badLength : "长度在20个字符以内",
			empty : "请填写真实姓名"
		}
	},
	cardID : {
		succeed : "",
		error : {
			wrong : "请输入正确的身份证码"
		}
	},
	itCheck : {
		error : {
			empty : "请填写动态码",
			empty1 : "请填写民族",
			empty2 : "请选择省份",
			empty3 : "请选择城市",
			empty4 : "请选择地区",
			empty5 : "请选择出生日期",
			empty6 : "请填写身份证号码",
			empty7 : "请上传证件照正面",
			empty8 : "请上传证件照反面",
			empty9 : "请填写交易密码",
			empty10 : "请填写动态码",
			empty11 : "请填写年利率",
			empty12 : "请填写借款金额",
			empty13 : "请填写标题",
			empty14 : "请填写开户银行",
			empty15 : "请填写开户行网点",
			empty16 : "请填写银行账号",
			empty17 : "请填写姓名",
			empty18 : "请填写留言",
			empty19 : "请填写收件人",
			empty20 : "请填写内容",
			empty21 : "请填写原密码",
			empty22 : "请输入答案",
			empty23 : "请输入原密保问题答案",
			empty24 : "请输入新密保问题答案",
			empty25 : "请输入充值金额",
			empty26 : "请输入转让金额",
			empty27 : "请输入提现金额",
			empty28 : "请输入借款说明",
			empty29 : "请输入抵押物信息",
			empty30 : "请输入抵押物名称",
			empty31 : "请输入验证码",
			empty32 : "请选择地址",
			empty33 : "请选择要上传的资料",
			empty34 : "请填写资料名称",
			empty35 : "请填写资料说明",
			empty36 : "请填写账户类型",
			empty37 : "请填写投标金额",
			empty38 : "请填写金额",
			empty39 : "请填写兑奖码",
			empty40 : "请填写验证码",
			empty41 : "请填写整数预期投资回报率"
		},
		no : {
			no1 : "只能输入中文",
			no2 : "只能在30个字符以内",
			no3 : "长度在16-19位之间",
			no4 : "只能输入数字",
			no5 : "只能输入正整数"
		}
	}
};
// 检测
var validFun = {
	betweenLength : function(o, _min, _max) {
		return (o.length >= _min && o.length <= _max);
	},
	maxLength : function(o, _max) {
		return (o.length <= _max);
	},
	isEmail : function(o) {
		return regx.email.test(o);
	},
	isMobile : function(o) {
		return regx.mobile.test(o);
	},
	isPhone : function(o) {
		return regx.phone.test(o);
	},
	isName : function(o) {
		return regx.name.test(o);
	},
	isName2 : function(o) {
		return regx.name2.test(o);
	},
	allNum : function(o) {
		return regx.num.test(o);
	},
	isBad : function(o) {
		return regx.bad.test(o);
	},
	isPassword2 : function(o, o2) {
		return o == o2;
	},
	hasWhite : function(o) {//不能包含空格
		return regx.trim.test(o);
	},
	notChinese : function(o) {
		return regx.chinese.test(o);
	},
	isIdCard1 : function(o) {
		return regx.idCard1.test(o);
	},
	isIdCard2 : function(o) {
		return regx.idCard2.test(o);
	},
	regPassword : function(o) {
		var reg1 = /[a-zA-Z]+/;
		var reg2 = /[0-9]+/;
		var reg3 = /\s+/;
		return reg1.test(o) && reg2.test(o) && !reg3.test(o);
	}
};

//检测input框有没有信息提示，没有就给它加一个
function checkChild(input){
	if (!input.child) {
		var child = $("<span></span>");
		$(input).parents("li").append(child);
		input.child = child;
	}
}
// 错误信息提示方法
var validShow = {
	onFocus : function(input, val) {
		checkChild(input);
		input.child.attr("class", "f_info").html(val);
	},
	//用户输入信息有误
	wrong : function(input, val) {
		//先生成一个备用信息提示框
		checkChild(input);
		input.child.attr("class", "f_wrong").html(val);
		input.sta = 0;//不可以submit
	},
	right : function(input) {
		checkChild(input);
		input.child.attr("class", "f_right").html("&nbsp;");
		input.sta = 1;//可以submit
	},
	//用户输入没问题，不打勾的
	none : function(input) {
		//已有信息框就干掉
		if (input.child) {
			input.child.remove();
			input.child = "";// 否则if(input.child)一直为false
		}
		input.sta = 1;//允许submit
	},
	
	//检查表单能不能提交
	form_submit : function() {
		var flag = false;
		for ( var i = 0; i < $(".i_text").length; i++) {//先检查所有的sta
			if ($(".i_text")[i].sta != 0) {
				flag = true;
			} else {
				flag = false;
				break;
			}
		}
		;
		return flag;
	}
};

// 页面加载checkInput方法
(function($) {
	$.fn.checkInput = function(obj) {
		var settings = $.extend({
			//isLname : false,
			//vaUrl : "",
			//name : null,
			//email : null,
			//password : null,
			//password2 : null
		}, obj);
		$(this).focus(function() {//聚焦时直接提示
			showInfor(this, 1);
		}).blur(function() {//失焦时验证信息
			blurFun(this);
			
		});
		function trim(val) {// ie7 8不支持trim函数 所以要定义一下
			return val.replace(/(^\s*)|(\s*$)/g, "");
		}
		;
		//失焦先判断用户是否输入了内容再做信息提示
		function blurFun(this_obj) {
			if ((trim(this_obj.value)) == "") {//内容为空时怎么办
				if ($(this_obj).attr("class").indexOf("notEmpty") != -1) {//如果要求非空
					showInfor(this_obj, 2);//提示内容不能为空
				} else {
					validShow.none(this_obj);
				}
			} else {
				showInfor(this_obj, 3);//用户输入了内容
			}
		}
		;
		//信息提示方法
		function showInfor(it, num) {// num:1提示信息 2空白 3错误和正确
			switch (it.name) {
			//登录用户名检查，只要保证不为空即可，没有聚焦规则
			case settings.logname:
				if (num == 2) {
					validShow.wrong(it, validText.username.error.empty);
				} else {
					validShow.none(it); //登录的时候只处理用户点了输入用户名再离开没输入东西的情况
				}
				break;
			//登录密码检查，非空无空格长度合理，没有聚焦规则
			case settings.logpassword:
				if (num == 2) {
					validShow.wrong(it, validText.pwd.error.empty);//没输入密码是不行的
				} else if (num == 3) {
					if (validFun.hasWhite(it.value)) {//如果包含空格提示不能包含空格
						validShow.wrong(it, validText.pwd.error.badEmpty);
					} else if (!validFun.betweenLength(it.value, 6, 16)) {//然后长度得对
						validShow.wrong(it, validText.pwd.error.badLength);
					} else {//没空格长度合理就OK
						validShow.none(it);
					}
				}
				break;
			//登录验证码，非空，没有聚焦规则
			case settings.authcode:
				if (num == 2) {
					validShow.wrong(it, validText.authcode.error.empty);//没输入验证码是不行的
				} else if (num == 3) {//正确不用管
					validShow.none(it);
				}
				break;	
			//手机验证码，非空
			case settings.mobilecode:
				if (num == 1) {
					validShow.onFocus(it, validText.mobilecode.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.mobilecode.error.empty);// 没输入验证码是不行的
				}else {
					validShow.none(it);
				}
				break;
			//注册用户名检查
			case settings.name:
				if (num == 1) {
					validShow.onFocus(it, validText.username.onFocus.focus);//提示输入规则
				} else if (num == 2) {//输入空的情况
					validShow.wrong(it, validText.username.error.empty);
				} else {//非空先验证各种规则
					if (!validFun.isName(it.value) || validFun.allNum(it.value)) {
						validShow.wrong(it, validText.username.error.badFormat);
					} else {//再验证长度
						if (!validFun.betweenLength(it.value, 4, 30)) {
							validShow.wrong(it,
									validText.username.error.badLength);
						} else {
							//var server = $("#hideServer").val();
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
				}
				break;
				//注册密码检查
			case settings.regPassword:
				if (num == 1) {
					validShow.onFocus(it, validText.regPassword.info);
				} else if (num == 2) {
					validShow.wrong(it, validText.regPassword.error);
				} else {
					if (validFun.hasWhite(it.value)) {
						validShow.wrong(it, validText.regPassword.error);
					} else if (!validFun.betweenLength(it.value, 6, 16)) {
						validShow.wrong(it, validText.regPassword.error);
					} else if (!validFun.regPassword(it.value)) {
						validShow.wrong(it, validText.regPassword.error);
					} else if (/[\u4e00-\u9fa5]+/i.test(it.value)) {// 汉中文
						validShow.wrong(it, validText.regPassword.error);
					} else {
						validShow.right(it);
					}
				}
				break;	
			//注册密码检查
			case settings.password:
				if (num == 1) {
					validShow.onFocus(it, validText.pwd.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.pwd.error.empty);
				} else {
					if (validFun.hasWhite(it.value)) {
						validShow.wrong(it, validText.pwd.error.badEmpty);
					} else if (!validFun.betweenLength(it.value, 6, 16)) {
						validShow.wrong(it, validText.pwd.error.badLength);
					} else if (/[\u4e00-\u9fa5]+/i.test(it.value)) {// 汉中文
						validShow.wrong(it, validText.pwd.error.badFormat);
					} else {
						validShow.right(it);
					}
				}
				break;		
			//注册确认密码检查
			case settings.password2:
				if (num == 2) {
					validShow.wrong(it, validText.pwd2.error.empty);
				} else if (num == 3) {
					if (!validFun
							.isPassword2($("#userDraftLoginPswd").val(), it.value)) {
						validShow.wrong(it, validText.pwd2.error.badFormat2);
					} else {
						validShow.right(it);
					}
				}
				break;
			//检查email
			case settings.email:
				if (num == 1) {
					validShow.onFocus(it, validText.email.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.email.error.empty);
				} else {
					if (!validFun.isEmail(it.value)) {
						validShow.wrong(it, validText.email.error.badFormat);
					} else if (!validFun.maxLength(it.value, 50)) {
						validShow.wrong(it, validText.email.error.badLength);
					} else {
						if ($(it).siblings(".f_right").length == 0) {
							if ($(it).hasClass("checkOnly")) {// 检测唯一性
								$.ajax({
									type : "post",
									url : "/register/checkEmail",
									data : "email=" + $(it).val(),
									success : function(data) {
										data = $.parseJSON(data);
										if (data.success) {
											validShow.right(it);
										} else {
											validShow.wrong(it, "邮箱已存在，请重新输入");
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
			//检查邀请人
			case settings.invitename:
				if (num == 1) {
					validShow.onFocus(it, validText.invitename.onFocus.focus);
				} else if (num == 2) {
					validShow.wrong(it, validText.invitename.error.empty);
				} else {
					if (!validFun.isName2(it.value)
							|| validFun.allNum(it.value)) {
						validShow.wrong(it,
								validText.invitename.error.badFormat2);
					} else {
						if (!validFun.betweenLength(it.value, 2, 30)) {
							validShow.wrong(it,
									validText.invitename.error.badLength);
						} else {
							//var server = $("#hideServer").val();
							if ($(it).siblings(".f_right").length == 0) {
								if ($(it).hasClass("checkOnly")) {// 检测friend
									$
											.ajax({
												type : "post",
												url : "/register/checkFirend",
												data : "firendName="
														+ $(it).val(),
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
				}
				break;
			//找回密码用户信息规则
			case settings.findname:
				if (num == 1) {
					validShow.onFocus(it, validText.findname.info);//提示输入规则
				} else if (num == 2) {//输入空的情况
					validShow.wrong(it, validText.findname.error.empty);
				} else {// 非空先验证各种规则
					//全是数字
					if(validFun.allNum(it.value)){
						if(it.value.length==11&&validFun.isMobile(it.value)){
							//手机号可以
						}else{
							validShow.wrong(it, validText.findname.error.feifa);
							return;
						}
					}else{//不全是数字
						if(validFun.isName2(it.value)||validFun.isEmail(it.value)){
							//登录名和email也可以
						}else{
							validShow.wrong(it, validText.findname.error.feifa);
							return;
						}
					}
					//往下接着走
					if (!validFun.betweenLength(it.value, 4, 50)) {
						validShow.wrong(it,
								validText.findname.error.badLength);
					} else {
						validShow.right(it);
					}
				}
				break;
			//注册时的手机号码检查
			case settings.mobile:
				if (num == 1) {
					validShow.onFocus(it, validText.mobile.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.mobile.error.empty);
				} else {
					if (!validFun.isMobile(it.value)) {
						validShow.wrong(it, validText.mobile.error.wrong);
					} else {
						if ($(it).siblings(".f_right").length == 0) {
							if ($(it).hasClass("checkOnly")) {// 检测唯一性
								$
										.ajax({
											type : "post",
											url : "/register/checkPhones",
											data : "phones=" + $(it).val(),
											success : function(data) {
												data = $.parseJSON(data);
												if (data.success) {
													validShow.right(it);
												} else {
													validShow.wrong(it,
															"手机号码已被使用，请重新输入");
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
				
				
				
				
			case settings.bindName:
				if (num == 2) {
					validShow.wrong(it, validText.username.error.empty);
				} else if (num == 1) {
					validShow.none(it);
				} else {
					var server = $("#hideServer").val();
					$.ajax({
						type : "post",
						url : "/register/dietitian",
						data : "name=" + $(it).val(),
						success : function(data) {
							data = $.parseJSON(data);
							var rel = data.responseMdl;
							var not_userinfo = "对不起,不存在这个帐号！<a href=" + server
									+ '/' + settings.vaUrl + '/bindreg'
									+ ">点击注册此帐号</a>";
							if (!rel.success) {
								validShow.none(it);
							} else {
								validShow.wrong(it, not_userinfo);
							}
						}
					});
				}
				break;
			
			case settings.email2:
				if (num == 2) {
					validShow.wrong(it, validText.email.error.empty);
				} else if (num == 3) {
					if (!validFun.isEmail(it.value)) {
						validShow.wrong(it, validText.email.error.badFormat);
					} else if (!validFun.maxLength(it.value, 50)) {
						validShow.wrong(it, validText.email.error.badLength);
					} else {
						validShow.none(it);
					}
				}
				break;
			
			case settings.password_trans:
				if (num == 1) {
					validShow.onFocus(it, validText.pwd.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.pwd.error.empty);
				} else {
					if (validFun.hasWhite(it.value)) {
						validShow.wrong(it, validText.pwd.error.badEmpty);
					} else if (!validFun.betweenLength(it.value, 6, 16)) {
						validShow.wrong(it, validText.pwd.error.badLength);
					} else {
						//var server = $("#hideServer").val();
						if ($(it).siblings(".f_right").length == 0) {
							$.ajax({
								type : "post",
								url : "/safe/contrastPassword",
								data : "newPwd=" + toMd5($(it).val()),
								success : function(data) {
									data = $.parseJSON(data);
									if (data == -1) {
										validShow.wrong(it, "新交易密码不能与登录密码一致");
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
				break;
			
			
			case settings.trueLName:
			case settings.trueName:
				if (num == 2) {
					validShow.wrong(it, validText.trueName.error.empty);
				} else if (num == 3) {
					if (!/^[\u4e00-\u9fa5]+$|^[\u4e00-\u9fa5\·]+$/g
							.test(it.value)) {
						validShow.wrong(it, validText.trueName.error.wrong);
					} else if (!validFun.maxLength(it.value, 20)) {
						validShow.wrong(it, validText.trueName.error.badLength);
					} else {
						validShow.none(it);
					}
				}
				break;
			
			case settings.sendcode:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.mobile:
				if (num == 1) {
					validShow.onFocus(it, validText.mobile.onFocus);
				} else if (num == 2) {
					validShow.wrong(it, validText.mobile.error.empty);
				} else {
					if (!validFun.isMobile(it.value)) {
						validShow.wrong(it, validText.mobile.error.wrong);
					} else {
						//var server = $("#hideServer").val();
						if ($(it).siblings(".f_right").length == 0) {
							if ($(it).hasClass("checkOnly")) {// 检测唯一性
								$
										.ajax({
											type : "post",
											url : "/register/checkPhones",
											data : "phones=" + $(it).val(),
											success : function(data) {
												data = $.parseJSON(data);
												if (data.success) {
													validShow.right(it);
												} else {
													validShow.wrong(it,
															"手机号码已存在，请重新输入");
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
			case settings.find_mobile:
			case settings.find_mobile2:
				if (num == 2) {
					validShow.wrong(it, validText.mobile.error.empty);
				} else if (num == 3) {
					if (!validFun.isMobile(it.value)) {
						validShow.wrong(it, validText.mobile.error.wrong);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.phone:
			case settings.phone2:
				if (num == 2) {
					validShow.wrong(it, validText.phone.error.empty);
				} else if (num == 3) {
					if (!validFun.isPhone(it.value)) {
						validShow.wrong(it, validText.phone.error.wrong);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.find_email:
				if (num == 2) {
					validShow.wrong(it, validText.email.error.empty);
				} else if (num == 3) {
					if (!validFun.isEmail(it.value)) {
						validShow.wrong(it, validText.email.error.badFormat);
					} else if (!validFun.maxLength(it.value, 50)) {
						validShow.wrong(it, validText.email.error.badLength);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.selectCheck:// select!!!!!
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty1);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.selectS:// select!!!!!
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty2);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.selectC:// select!!!!!
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty3);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.selectQ:// select!!!!!
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty4);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.birthday:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty5);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.cardID:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty6);
				} else if (num == 3) {
					if (!validFun.isIdCard1(it.value)
							&& !validFun.isIdCard2(it.value)) {
						validShow.wrong(it, validText.cardID.error.wrong);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.cardIDImg:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty7);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.cardIDImg2:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty8);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.tradPassword:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty9);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.captchaGo:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty10);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.imgCode:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty40);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.nianlilv:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty41);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.money:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty12);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.takeTit:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty13);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.bankName:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty14);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.bankWeb:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty15);
				} else if (num == 3) {
					if (/[^\u4e00-\u9fa5]+/g.test(it.value)) {
						validShow.wrong(it, validText.itCheck.no.no1);
					} else if (!validFun.maxLength(it.value, 30)) {
						validShow.wrong(it, validText.itCheck.no.no2);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.cardNo:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty16);
				} else if (num == 3) {
					if (!validFun.allNum(it.value)) {
						validShow.wrong(it, validText.itCheck.no.no4);
					} else if (!validFun.betweenLength(it.value, 16, 19)) {
						validShow.wrong(it, validText.itCheck.no.no3);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.a_name:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty17);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.say_content:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty18);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.mes_name:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty19);
				} else if (num == 3) {
					if (!validFun.isName(it.value) || validFun.allNum(it.value)) {
						validShow.wrong(it, validText.username.error.badFormat);
					} else {
						if (!validFun.betweenLength(it.value, 4, 30)) {
							validShow.wrong(it,
									validText.username.error.badLength);
						} else {
							validShow.none(it);
						}
					}
				}
				break;
			case settings.content:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty20);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.pass_old:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty21);
				} else if (num == 3) {
					if (validFun.hasWhite(it.value)) {
						validShow.wrong(it, validText.pwd.error.badEmpty);
					} else if (!validFun.betweenLength(it.value, 6, 16)) {
						validShow.wrong(it, validText.pwd.error.badLength);
					} else {
						validShow.none(it);
					}
				}
				break;
			case settings.answer1:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty22);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.answer_old:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty23);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.answer_new:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty24);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.recharge:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty25);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.zhuanrang:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty26);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.tixian:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty27);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.shuoming:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty28);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.itdContent:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty29);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.itdName:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty30);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.authcode2:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty31);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.addr:
			case settings.addr1:
			case settings.addr2:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty32);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.infor_card:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty33);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.infor_card_tit:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty34);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.infor_card_info:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty35);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.bankType:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty36);
				} else if (num == 3) {
					validShow.none(it);
				}
				break;
			case settings.couponTicNo:
				if(num==2){
					validShow.wrong(it,validText.itCheck.error.empty39);
				}else if(num==3){
					validShow.none(it);	
				}
			break;
			/* 自动投标--------------------------start */
			case settings.bidSum:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty37);
				} else if (num == 3) {
					var v = Number(it.value.replace(/,/g, ''));
					var limitUp = Number($('#limitUp').val());
					var limitDown = Number($('#limitDown').val());
					if (v < limitDown || v > limitUp) {
						validShow.wrong(it, '最小金额为' + limitDown + '元，最大金额为'
								+ limitUp + '元');
					} else {
						validShow.right(it);
					}
				}
				break;
			case settings.saveSum:
				if (num == 2) {
					validShow.wrong(it, validText.itCheck.error.empty38);
				} else if (num == 3) {
					var v = it.value.replace(/,/g, '');
					if (!validFun.allNum(v)) {
						validShow.wrong(it, validText.itCheck.no.no5);
					} else if (v > 100000000) {
						validShow.wrong(it, '最大金额为100,000,000元');
					} else {
						validShow.right(it);
					}
				}
				break;
			case settings.downRate:
				var up = $('#yearRateUp');
				var yearRateDownVal = $("#yearRateDown").val();
				var yearRateUpVal = $("#yearRateUp").val();
				var yearRateDownVal = Number(yearRateDownVal);
				var yearRateUpVal = Number(yearRateUpVal);
				if (num == 2) {
					$(".up_down_f").html(validText.itCheck.error.empty41);
					$("#f_sub").attr("disabled","true");
				} else if (num == 3) {
					if (!validFun.allNum(it.value)) {
						$(".up_down_f").html(validText.itCheck.no.no4);
						$("#f_sub").attr("disabled","true");
					} else if (it.value > 100) {
						$(".up_down_f").html('预期投资回报率不能大于100%');
						$("#f_sub").attr("disabled","true");
					} else if (up.val() != '') {
						if (parseInt(it.value) > parseInt(up.val())) {
							$(".up_down_f").html('预期投资回报率区间设置有误');
							$("#f_sub").attr("disabled","true");
						} else {
							$(".up_down_f").html('');
							if($("#autoDis").prop("checked")){
								if(yearRateDownVal!=""&&yearRateDownVal<=100&&yearRateUpVal!=""&&yearRateUpVal<=100&&yearRateDownVal<=yearRateUpVal){
									$("#f_sub").removeAttr("disabled");
								}
							}else{
								$("#f_sub").attr("disabled","true");
							}
						}
					} else {
						$(".up_down_f").html('');
					}
				}
				break;
			case settings.upRate:
				var down = $('#yearRateDown');
				var yearRateDownVal = $("#yearRateDown").val();
				var yearRateUpVal = $("#yearRateUp").val();
				var yearRateDownVal = Number(yearRateDownVal);
				var yearRateUpVal = Number(yearRateUpVal);
				if (num == 2) {
					$(".up_down_f").html(validText.itCheck.error.empty41);
					$("#f_sub").attr("disabled","true");
				} else if (num == 3) {
					if (!validFun.allNum(it.value)) {
						$(".up_down_f").html(validText.itCheck.no.no4);
						$("#f_sub").attr("disabled","true");
					} else if (it.value > 100) {
						$(".up_down_f").html('预期投资回报率不能大于100%');
						$("#f_sub").attr("disabled","true");
						   $('#yearRateDown').blur(function(){
								var upVal = $('#yearRateUp').val();
						     	if(upVal>100){
						        	$(".up_down_f").text('预期投资回报率不能大于100%');
						        	$("#f_sub").attr("disabled","true");
						     	}
						    });  
					}
					 else if (down.val() != '') {
						if (parseInt(it.value) < parseInt(down.val())) {
							$(".up_down_f").html('预期投资回报率区间设置有误');
							$("#f_sub").attr("disabled","true");
							 $('#yearRateDown').blur(function(){
								var upVal = $('#yearRateUp').val();
						     	if(upVal>100){
						        	$(".up_down_f").text('预期投资回报率不能大于100%');
						        	$("#f_sub").attr("disabled","true");
						     	}
						    });  

						} else {
							$(".up_down_f").html('');
							if($("#autoDis").prop("checked")){
								if(yearRateDownVal!=""&&yearRateDownVal<=100&&yearRateUpVal!=""&&yearRateUpVal<=100&&yearRateDownVal<=yearRateUpVal){
									$("#f_sub").removeAttr("disabled");
								}
							}else{
								$("#f_sub").attr("disabled","true");
							}
						}
					} else {
						$(".up_down_f").html('');
					}
				}
				break;
			/* 自动投标 ----------------------end */
			default:
				if (num == 3) {
					validShow.none(it);
				}
			}
		}
		;

		//表单提交最终验证
		$("#f_submit").on("click", function() {
			var arr = $(this).parents("form").find(".i_text");//找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);//挨个进行失焦校验
			}

			var flag = validShow.form_submit();//看看能不能提交
			if (flag) {
				return true;
			} else {
				return false;
			}
		});

		//注册表单提交最终验证
		$("#r_submit").on("click", function() {
			if($("#email").val().length>0){
				$('.el').click();//针对注册部分返回修改手机号码的特殊处理
			}
			var arr = $(this).parents("form").find(".i_text");//找到所有的i_text
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);//挨个进行失焦校验
			}

			var flag = validShow.form_submit();//看看能不能提交
			if (flag) {
				return true;
			} else {
				return false;
			}
		});

		$(".landing_submit").on("click", function() {
			var arr = $(this).parents("form").find(".info_input");
			for ( var i = 0; i < arr.length; i++) {
				blurFun(arr[i]);
			}

			var flag = validShow.form_submit();
			if (flag) {
				return true;
			} else {
				return false;
			}
		});
	};
})(jQuery);
// placeholder
function isPlaceholder() {
	var input = document.createElement("input");
	return "placeholder" in input;
}
