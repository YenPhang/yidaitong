function getFormData(form) {
	var dataList = $(form).serializeArray();
	var json = {};
	$.each(dataList, function() {
		if (json[this.name] !== undefined) {
			if (!json[this.name].push) {
				json[this.name] = [json[this.name]];
			}
			json[this.name].push(this.value || '');
		} else {
			json[this.name] = this.value || '';
		}
	});
	return json;
}
//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
function requestJson(requestUrl, params, asyncFlag, successCallBack, failCallBack) {
	$.ajax({
		type : "get",
		url : requestUrl,
		dataType : "json",
		data : params,
		async : asyncFlag,
		success : function(data) {
			if (data.success) {
				successCallBack(data);
			} else {
				if(failCallBack){
					failCallBack(data);
				}else{
					alert(data.info);
				}
			}
		},
		error : function(data) {
			if (data.status == 401) {
				window.location.href = "/html/login.html";
			} else {
				alert("系统异常");
			}
		}
	});
}
