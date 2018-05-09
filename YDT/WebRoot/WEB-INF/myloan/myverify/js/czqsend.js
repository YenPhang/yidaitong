$(function() {
	// ////////////////////////////////给已登录用户发短信1///////////////////////////////////////////
	var waitLogin = 60;
	var flagLogin = 1;// 1可以点,0不可以点
	var flagVoiceLogin = 1;//语音验证码,1可以点,0不可以点
	var voLogin=true;
	function timeLogin(o) {
		if (waitLogin == 0) {
			o.removeAttribute("disabled");
			$("#sendLogin").html("再次发送<br />验证码");
			$("#sendLogin").removeClass('disabled');
			if(voLogin){
				$(".voice").html("点击获取 <i class='voiLogin' >语音验证码</i>").removeClass("orgColor");
			}else{
				$(".voice").html("重新获取 <i class='voiLogin' >语音验证码</i>").removeClass("orgColor");
			}
			waitLogin = 60;
		} else {
			o.setAttribute("disabled", true);
			$("#sendLogin").html(+waitLogin + "秒后<br />可再次发送");
			$("#sendLogin").addClass('disabled');
			$(".voice").html("没有收到短信？可以在"+waitLogin+"秒后获取语音验证码").addClass("orgColor");
			waitLogin--;
			if (waitLogin == 0) {
				flagLogin = 1;
				flagVoiceLogin = 1;
			}
			setTimeout(function() {
				timeLogin(o);
			}, 1000);
		}
	}
	function getVoiceCodeLogin(){
		voLogin=false;
		$("#sendLogin").attr("disabled", true);
		$("#sendLogin").html(+ waitLogin + "秒后<br />可再次发送").addClass('disabled');
		$(".voice").html("请您注意收听来电").addClass("orgColor");
		if(waitLogin==0){
			flagVoiceLogin=1;
			o=document.getElementById("sendLogin");
			timeLogin(o);
		}else{
			waitLogin--;
			setTimeout(function(){
				getVoiceCodeLogin();
			},1000);
		}
	}
	//给已登录用户发送语音验证码
	$(document).on('click', '.voiLogin', function() {
		if (flagVoiceLogin == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendVoiceLogin",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagVoiceLogin = 0;
				} else {
					alert(result.info);
				}
			}
		});
		if(flagVoiceLogin==0){
			getVoiceCodeLogin();
		}
	});
	
	// 给已登录用户发验证码
	$("#sendLogin").click(function() {
		if (flagLogin == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendLogin",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagLogin = 0;
				} else {
					alert(result.info);
				}
			}
		});
		if (flagLogin == 0) {
			timeLogin(this);
		}
	});

	// ////////////////////////////给已登录用户发短信2/////////////////////////////////////////////
	var waitLogin2 = 60;
	var flagLogin2 = 1;// 1可以点,0不可以点
	var flagVoiceLogin2 = 1;// 1可以点,0不可以点
	var voLogin2=true;
	function timeLogin2(o) {
		if (waitLogin2 == 0) {
			o.removeAttribute("disabled");
			$("#sendLogin2").html("再次发送<br />验证码");
			$("#sendLogin2").removeClass('disabled');
			if(voLogin2){
				$(".voice").html("点击获取 <i class='voiLogin2' >语音验证码</i>").removeClass("orgColor");
			}else{
				$(".voice").html("重新获取 <i class='voiLogin2' >语音验证码</i>").removeClass("orgColor");
			}
			waitLogin2 = 60;
		} else {
			o.setAttribute("disabled", true);
			$("#sendLogin2").html(+waitLogin2 + "秒后<br />可再次发送");
			$("#sendLogin2").addClass('disabled');
			$(".voice").html("没有收到短信？可以在"+waitLogin2+"秒后获取语音验证码").addClass("orgColor");
			waitLogin2--;
			if (waitLogin2 == 0) {
				flagLogin2 = 1;
				flagVoiceLogin2 = 1;
			}
			setTimeout(function() {
				timeLogin2(o);
			}, 1000);
		}
	}
	function getVoiceCodeLogin2(){
		voLogin2=false;
		$("#sendLogin2").attr("disabled", true);
		$("#sendLogin2").html(+ waitLogin2 + "秒后<br />可再次发送").addClass('disabled');
		$(".voice").html("请您注意收听来电").addClass("orgColor");
		if(waitLogin2==0){
			flagVoiceLogin2=1;
			o=document.getElementById("sendLogin2");
			timeLogin2(o);
		}else{
			waitLogin2--;
			setTimeout(function(){
				getVoiceCodeLogin2();
			},1000);
		}
	}
	//给已登录用户发送语音验证码
	$(document).on('click', '.voiLogin2', function() {
		if(flagVoiceLogin2 == 0){
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendVoiceLogin",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagVoiceLogin2 = 0;
				} else {
					alert(result.info);
				}
			}
		});
		if(flagVoiceLogin2 == 0){
			getVoiceCodeLogin2();
		}
	});
	// 给已登录用户发验证码
	$("#sendLogin2").click(function() {
		if (flagLogin2 == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendLogin",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagLogin2 = 0;
				} else {
					alert(result.info);
				}
			}
		});
		if (flagLogin2 == 0) {
			timeLogin2(this);
		}
	});
	// ////////////////////////////给已登录用户发短信3-账户提现/////////////////////////////////////////////
    var waitLogin3 = 60;
    var flagLogin3 = 1;// 1可以点,0不可以点
    var flagVoiceLogin3 = 1;// 1可以点,0不可以点
    var voLogin3=true;
    function timeLogin3(o) {
        if (waitLogin3 == 0) {
            o.removeAttribute("disabled");
            $("#sendLogin3").html("再次发送<br />验证码");
            $("#sendLogin3").removeClass('disabled');
            if(voLogin3){
                $(".voice").html("点击获取 <i class='voiLogin3' >语音验证码</i>").removeClass("orgColor");
            }else{
                $(".voice").html("重新获取 <i class='voiLogin3' >语音验证码</i>").removeClass("orgColor");
            }
            waitLogin3 = 60;
        } else {
            o.setAttribute("disabled", true);
            $("#sendLogin3").html(+waitLogin3 + "秒后<br />可再次发送");
            $("#sendLogin3").addClass('disabled');
            $(".voice").html("没有收到短信？可以在"+waitLogin3+"秒后获取语音验证码").addClass("orgColor");
            waitLogin3--;
            if (waitLogin3 == 0) {
                flagLogin3 = 1;
                flagVoiceLogin3 = 1;
            }
            setTimeout(function() {
                timeLogin3(o);
            }, 1000);
        }
    }
    function getVoiceCodeLogin3(){
        voLogin2=false;
        $("#sendLogin3").attr("disabled", true);
        $("#sendLogin3").html(+ waitLogin3 + "秒后<br />可再次发送").addClass('disabled');
        $(".voice").html("请您注意收听来电").addClass("orgColor");
        if(waitLogin3==0){
            flagVoiceLogin3=1;
            o=document.getElementById("sendLogin3");
            timeLogin3(o);
        }else{
            waitLogin3--;
            setTimeout(function(){
                getVoiceCodeLogin3();
            },1000);
        }
    }
    //给已登录用户发送语音验证码
    $(document).on('click', '.voiLogin3', function() {
        if(flagVoiceLogin3 == 0){
            return false;
        }
        $.ajax({
                   type : "post",
                   url : "/sendVoiceLogin",
                   data : "",
                   async : false,
                   success : function(datas) {
                       result = $.parseJSON(datas);
                       if (result.success) {
                           flagVoiceLogin3 = 0;
                       } else {
                           alert(result.info);
                       }
                   }
               });
        if(flagVoiceLogin3 == 0){
            getVoiceCodeLogin3();
        }
    });
    // 给已登录用户发验证码
    $("#sendLogin3").click(function() {
        if (flagLogin3 == 0) {
            return false;
        }
        $.ajax({
                   type : "post",
                   url : "/sendWithdrawalCode",
                   data : "",
                   async : false,
                   success : function(datas) {
                       result = $.parseJSON(datas);
                       if (result.success) {
                           flagLogin3 = 0;
                       } else {
                           alert(result.info);
                       }
                   }
               });
        if (flagLogin3 == 0) {
            timeLogin3(this);
        }
    });
	// ///////////////////////////给指定手机号发短信////////////////////////////////////////////
	var waitWhite = 60;
	var flagWhite = 1;// 1可以点,0不可以点
	var flagVoiceWhite = 1;// 语音验证码 1可以点,0不可以点
	var voWhite=true;
	function timeWhite(o) {
		if (waitWhite == 0) {
			o.removeAttribute("disabled");
			$("#sendWhite").html("再次发送<br />验证码");
			$("#sendWhite").removeClass('disabled');
			if(voWhite){
				$(".voice").html("点击获取 <i class='voiWhite' >语音验证码</i>").removeClass("orgColor");
			}else{
				$(".voice").html("重新获取 <i class='voiWhite' >语音验证码</i>").removeClass("orgColor");
			}
			waitWhite = 60;
		} else {
			o.setAttribute("disabled", true);
			$("#sendWhite").html(+waitWhite + "秒后<br />可再次发送");
			$("#sendWhite").addClass('disabled');
			$(".voice").html("没有收到短信？可以在"+waitWhite+"秒后获取语音验证码").addClass("orgColor");
			waitWhite--;
			if (waitWhite == 0) {
				flagWhite = 1;
				flagVoiceWhite = 1;
			}
			setTimeout(function() {
				timeWhite(o);
			}, 1000);
		}
	}
	
	function getVoiceCodeWhite(){
		voWhite=false;
		$("#sendWhite").attr("disabled", true);
		$("#sendWhite").html(+ waitWhite + "秒后<br />可再次发送").addClass('disabled');
		$(".voice").html("请您注意收听来电").addClass("orgColor");
		if(waitWhite==0){
			flagVoiceWhite = 1;
			o=document.getElementById("sendWhite");
			timeWhite(o);
		}else{
			waitWhite--;
			setTimeout(function(){
				getVoiceCodeWhite();
			},1000);
		}
	}
	// 给指定号码发送语音验证码
	$(document).on('click', '.voiWhite', function() {
		if (flagVoiceWhite == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendVoiceLogBor",
			data : {
				mobile : $("#mobile").val(),
				imgCode : $("#imgCodev").val()
			},
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagVoiceWhite = 0;
				} else {
					$("#imgCode").attr({src : "/validCode?" + new Date().getTime()});
					alert(result.info);
				}
			}
		});
		if(flagVoiceWhite == 0){
			getVoiceCodeWhite();
		}
	});
	
	// 给指定号码发验证码
	$("#sendWhite").click(function() {
		if (!validFun.isMobile($("#mobile").val())) {
			return false;
		}
		if (flagWhite == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendWhiteLogBor",
			data : {
				mobile : $("#mobile").val(),
				imgCode : $("#imgCodev").val()
			},
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagWhite = 0;
				} else {
					$("#imgCode").attr({src : "/validCode?" + new Date().getTime()});
					alert(result.info);
				}
			}
		});
		if (flagWhite == 0) {
			timeWhite(this);
		}
	});

	// ////////////////////////////给已登录用户发邮箱验证码1////////////////////////////
	var waitEmailCode = 60;
	var flagEmailCode = 1;// 1可以点,0不可以点
	function timeEmailCode(o) {
		if (waitEmailCode == 0) {
			o.removeAttribute("disabled");
			$("#sendEmailCode").html("再次发送<br />验证码");
			$("#sendEmailCode").removeClass('disabled');
			waitEmailCode = 60;
		} else {
			o.setAttribute("disabled", true);
			$("#sendEmailCode").html(+waitEmailCode + "秒后<br />可再次发送");
			$("#sendEmailCode").addClass('disabled');
			waitEmailCode--;
			if (waitEmailCode == 0) {
				flagEmailCode = 1;
			}
			setTimeout(function() {
				timeEmailCode(o);
			}, 1000);
		}
	}
	// 给用户发送邮箱验证码
	$("#sendEmailCode").click(function() {
		if (flagEmailCode == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/unBindEmail",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagEmailCode = 0;
				} else {
					alert(result.info);
				}
			}
		});
		if (flagEmailCode == 0) {
			timeEmailCode(this);
		}
	});

	// ///////////////////////////////给已登录用户发验证码2///////////////////////////////////////
	var waitEmailCode2 = 60;
	var flagEmailCode2 = 1;// 1可以点,0不可以点
	function timeEmailCode2(o) {
		if (waitEmailCode2 == 0) {
			o.removeAttribute("disabled");
			$("#sendEmailCode2").html("再次发送<br />验证码");
			$("#sendEmailCode2").removeClass('disabled');
			waitEmailCode2 = 60;
		} else {
			o.setAttribute("disabled", true);
			$("#sendEmailCode2").html(+waitEmailCode2 + "秒后<br />可再次发送");
			$("#sendEmailCode2").addClass('disabled');
			waitEmailCode2--;
			if (waitEmailCode2 == 0) {
				flagEmailCode2 = 1;
			}
			setTimeout(function() {
				timeEmailCode2(o);
			}, 1000);
		}
	}
	// 给用户发送邮箱验证码
	$("#sendEmailCode2").click(function() {
		if (flagEmailCode2 == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/unBindEmail",
			data : "",
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagEmailCode2 = 0;
				} else {
                    $(".fasterr .info2").html(result.info)
                    $(".fasterr-box").show();
				}
			}
		});
		if (flagEmailCode2 == 0) {
			timeEmailCode2(this);
		}
	});
	
	//////////////////// 给找回密码密码用户发验证码//////////////////////////
	var waitFind = 60;
	var flagFind = 1;// 1可以点,0不可以点
	var flagVoiceFind = 1;//语音验证码 1可以点,0不可以点
	var voFind=true;
	$("#sendFind").disabled = false;
	function timeFind(o) {
		if (waitFind == 0) {
			$(o).removeAttr("disabled");
			$("#sendFind").html("再次发送<br />验证码");
//			$("#sendFind").removeAttr('disabled');
			$("#sendFind").removeClass('disabled');
			if(voFind){
				$(".voice").html("点击获取 <i id = 'voiFind' >语音验证码</i>").removeClass("orgColor");
			}else{
				$(".voice").html("重新获取 <i id = 'voiFind' >语音验证码</i>").removeClass("orgColor");
			}
			waitFind = 60;
		} else {
			$(o).attr("disabled", "disabled");
			$("#sendFind").html(+waitFind + "秒后<br />可再次发送");
			$("#sendFind").attr("disabled", "disabled");
			$(".voice").html("没有收到短信？可以在"+waitFind+"秒后获取语音验证码").addClass("orgColor");
			waitFind--;
			if (waitFind == 0) {
				flagFind = 1;
				flagVoiceFind = 1;
			}
			setTimeout(function() {
				timeFind(o);
			}, 1000);
		}
	}
	
	function getVoiceCodeFind(){
		voFind=false;
		$("#sendFind").attr("disabled", true);
		$("#sendFind").html(+ waitFind + "秒后<br />可再次发送").addClass('disabled');
		$(".voice").html("请您注意收听来电").addClass("orgColor");
		if(waitFind==0){
			flagVoiceFind=1;
			o=document.getElementById("sendFind");
			timeFind(o);
		}else{
			waitFind--;
			setTimeout(function(){
				getVoiceCodeFind();
			},1000);
		}
	}
	// 发送语音验证码
	$(document).on('click', '#voiFind', function() {
		if (flagVoiceFind == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendVoiceFind",
			data : {
				imgCode : $("#imgCodev").val()
			},
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagVoiceFind = 0;
				} else {
					$("#imgCode").attr({src : "/validCode?" + new Date().getTime()});
					alert(result.info);
				}
			}
		});
		if(flagVoiceFind == 0){
			getVoiceCodeFind();
		}
	});
    //发送短信验证码
	$('#sendFind').click(function() {
		if (flagFind == 0) {
			return false;
		}
		$.ajax({
			type : "post",
			url : "/sendFind",
			data : {
				imgCode : $("#imgCodev").val()
			},
			async : false,
			success : function(datas) {
				result = $.parseJSON(datas);
				if (result.success) {
					flagFind = 0;
				} else {
					$("#imgCode").attr({src : "/validCode?" + new Date().getTime()});
					alert(result.info);
				}
			}
		});
		if(flagFind==0){
			timeFind(this);
		}
	});
});