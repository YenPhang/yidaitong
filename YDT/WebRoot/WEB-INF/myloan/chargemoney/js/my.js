$(function() {
	//my图表切换
	$('.qh').click(function(){
		$('.ex_l').find('span').removeClass('abc');
		$('.tb').hide();
		$(this).addClass('abc');
		$('.tb').eq($(this).index()).show();
	});

	//top2移入 移出
	$('.spa1').mouseover(function(){
			$('.wz1').show();	
		}).mouseout(function(){
			$('.wz1').hide();	
		});
	$('.spa2').mouseover(function(){
			$('.wz2').show();	
		}).mouseout(function(){
			$('.wz2').hide();	
		});
	$('.spa3').mouseover(function(){
			$('.wz3').show();	
		}).mouseout(function(){
			$('.wz3').hide();	
		});
	$('.spa4').mouseover(function(){
			$('.wz4').show();	
		}).mouseout(function(){
			$('.wz4').hide();	
		});	
		
	//friend图表切换
	$('.qh').click(function(){
		$('.fds').find("span").removeClass('abc');
		$('.fds').find('.afrom').hide();
		$(this).addClass("abc");
		$('.afrom').eq($(this).index()).show();
	});
	
	//查看详情 显示隐藏
	//$('.ld,.rd').find('.btns').click(function(){
		//$('.ld,.rd').find('.tba').hide();
		//$(this).parent().parent().next().toggle();
	//});
	
//	$('.tz').find('.btns').click(function(){
//		var the = $(this).parents('.xx').find('.tba');   //创建jQuery对象,因下边用到这个对象太多，增加性能.
//		the.addClass('aa');							     //为当前要显示的内容添加class.
//		$('.ld,.rd').find('.tba').not('.aa').hide();  //隐藏所有其他table(除了当前要显示的这个table),目的在于，不要影响下边的toggle,否则会冲突.
//		the.removeClass('aa');				//这步就用不到aa了,可以删除了，因为每次点击,都只能有一个aa,就是当前对应的table.
//		//$('.ld').find('.tba').eq($(this).parents('.xx').index()-1).toggle();
//		//$(this).parents('.xx').index()-1是正确的索引，看看这个吧，四个.xx的元素是兄弟元素，索引才正确，之前那种$(this).index()指的是input，input没有别的兄弟节点，只有他自己一个，所以每次都是0.
//		the.toggle();                
//	});

	//zqzr撤回 蒙版
	$('.pd1').click(function(){
		$(".zqclose").fadeIn(); 
	});
	$('.pd5').click(function(){
		$(".srclose").fadeIn(); 
	});
	
	
	
	
	/*//hyyq复制文字到剪切版
	$(document).ready(function(){
		$('.copy1').zclip({
			path : '../lvjs/my/ZeroClipboard.swf',
			copy : $('.copy2').html()
		});//点btn复制cont里边的内容
	});*/
	
	//zdtb开关
	$("#Btn").click(function(){
		var opin = $('input[name="openClose"]').val();
		if(opin!='1'){
			$.post("/userRealState",function(data){
		        var data=$.parseJSON(data);
				if(!data){
					$("#big").show();
				}else{
					$.post("/userMobile",function(data){
				        var data=$.parseJSON(data);
						if(!data){
							$("#big2").show();
						}else{
							$("#Btn").attr("class","on");
							$(".cjbd").show();
							$(".guize").show();	
							$(".kg1").show();
							$(".kg").hide();
							$('input[name="openClose"]').val('1');
							$.ajax({
								type:'POST',
								url:'/autobid/openClose',
								data:{'openClose':$('input[name="openClose"]').val()},
								success:function(data){
								},
								error:function(request){
									alert('请求失败，请重试！');
								}
							});
						}
					});
				}
			});
		}else{
			$(this).attr("class","off");
			$(".cjbd").hide();	
			$(".guize").hide();		
			$(".kg1").hide();
			$(".kg").show();	
			$('input[name="openClose"]').val('2');
			$.ajax({
				type:'POST',
				url:'/autobid/openClose',
				data:{'openClose':$('input[name="openClose"]').val()},
				success:function(data){
				},
				error:function(request){
					alert('请求失败，请重试！');
				}
			});
		}
	});
	
	//选中
	var onOff1=true;
	$(".guize h5").click(function(){
		//alert(1)
		if(onOff1){
			$(this).attr("class","H5_on");	
		}else{
			$(this).attr("class","H5_off");
		}
		onOff1 = !onOff1;
	});
	
	
	var ckFlag=0;
	$('.tz').find('.findDetail').click(function(){
		var the = $(this).parents('.xx').find('.tba');   //创建jQuery对象,因下边用到这个对象太多，增加性能.
		var theLength = the.find('tr').length;
		var rsbid = $(this).parents('.xx').find('.rsbid').val();
		var claId = $(this).parents('.xx').find('.claId').val();
		console.log(rsbid)
		the.addClass('aa');							     //为当前要显示的内容添加class.
		if (ckFlag == 1) {
			return;
		} else {
			ckFlag = 1;
		}
		var url = "/investors/queryDetail";
		var param = {rsbId : rsbid, claId: claId};
		var htmlStr = "";
		if(theLength==0){
			$.post(url,param,function(data){
			    var dataObj = $.parseJSON(data).queryDetailPojos;
			    var ticType = $.parseJSON(data).ticketType;
			    console.log(ticType)
				htmlStr+='<thead><tr>'+
				'<th>收款日期</th>'+
				'<td>收款期数/总期数</td>'+
				'<td>应收本金(元)</td>'+
                '<td>应收利息(元)</td>';
			    if(ticType=='INTEREST_PLUS'){
                    htmlStr += '<td>加息利息(元)</td>';
                }
                htmlStr += '<td>利息管理费(元)</td>'+
                '<td>实际利息(元)</td>'+
                '<td>逾期天数(天)</td>'+
                '<td>逾期罚息(元)</td>'+
                '<td>状态</td>'+'</tr></thead><tbody>';
				for(var i=0;i<dataObj.length;i++){
					htmlStr += '<tr class=\"borb\">'+
						'<td>'+new Date(dataObj[i].rescPlanDate).Format('yyyy-MM-dd')+'</td>'+
						'<td class=\"ybsb\">'+dataObj[i].rescNo+'/'+dataObj[i].rescTotalNo+'</td>'+
						'<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescPlanPrincipal/100).toFixed(2)+'</span></td>'+
						'<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescPlanInterest/100).toFixed(2)+'</span></td>';
                        if(ticType=='INTEREST_PLUS'){
                            htmlStr += '<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescPlanIncreaseInterest/100).toFixed(2)+'</span></td>';
                        }
                        htmlStr +=
						'<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescPlanInterestPm/100).toFixed(2)+'</span></td>'+
						'<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescPlanInterestPn/100 + ((dataObj[i].rescPlanIncreaseInterest)?dataObj[i].rescPlanIncreaseInterest/100:0)).toFixed(2)+'</span></td>'+
                        '<td>'+dataObj[i].rescOverdueDays+'</td>'+
						'<td class=\"ybsb\"><span class="moneyThree">'+(dataObj[i].rescShouldLateCharge/100).toFixed(2)+'</span></td>';
                        if((dataObj[i].rescStateDesc.indexOf("-"))!=-1){
                            var rescStateDesc=dataObj[i].rescStateDesc.substring(dataObj[i].rescStateDesc.indexOf("-")+1);
                            htmlStr+='<td>'+rescStateDesc+'</td>'+'</tr>';
						}else{
                            htmlStr+='<td>'+dataObj[i].rescStateDesc+'</td>'+'</tr>';
						}

				}
				htmlStr+='</tbody>';
				the.append(htmlStr);
				ckFlag=0;

			});
		}else
			ckFlag=0;
		$('.ld,.rd').find('.tba').not('.aa').fadeOut();  //隐藏所有其他table(除了当前要显示的这个table),目的在于，不要影响下边的toggle,否则会冲突.
		the.removeClass('aa');				//这步就用不到aa了,可以删除了，因为每次点击,都只能有一个aa,就是当前对应的table.
		//$('.ld').find('.tba').eq($(this).parents('.xx').index()-1).toggle();
		//$(this).parents('.xx').index()-1是正确的索引，看看这个吧，四个.xx的元素是兄弟元素，索引才正确，之前那种$(this).index()指的是input，input没有别的兄弟节点，只有他自己一个，所以每次都是0.
		the.fadeToggle();               
	});
	

	//时间格式
	Date.prototype.Format = function(fmt)   
	{ 
	  var o = {   
	    "M+" : this.getMonth()+1,                 //月份   
	    "d+" : this.getDate(),                    //日   
	    "h+" : this.getHours(),                   //小时   
	    "m+" : this.getMinutes(),                 //分   
	    "s+" : this.getSeconds(),                 //秒   
	    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
	    "S"  : this.getMilliseconds()             //毫秒   
	  };   
	  if(/(y+)/.test(fmt))   
	    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	  for(var k in o)   
	    if(new RegExp("("+ k +")").test(fmt))   
	  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
	  return fmt;   
	};



    var sbFlag=0;
    $('.tz').find('.findSDetail').click(function(){
        var server=$("#hideServer").val();
        var the = $(this).parents('.xx').find('.tba');   //创建jQuery对象,因下边用到这个对象太多，增加性能.
        var theLength = the.find('tr').length;
        var rsbid = $(this).parents('.xx').find('.rsbid').val();
        the.addClass('aa');							     //为当前要显示的内容添加class.
        if (sbFlag == 1) {
            return;
        } else {
            sbFlag = 1;
        }
        var url =server+"/substitute/queryDetail";
        var param = {rsbId : rsbid};
        var htmlStr = "";
        if(theLength==0){
            $.post(url,param,function(data){
                var dataObj = eval("("+data+")");
                htmlStr+='<thead><tr>'+
                    '<th>代偿日期</th>'+
                    '<td>当前期数/总期数</td>'+
                    '<td>代偿本金(元)</td>'+
                    '<td>代偿利息(元)</td>'+
                    '<td>逾期天数(天)</td>'+
                    '<td>逾期罚息(元)</td>'+
                    '<td>操作</td>'+'</tr></thead><tbody>';
                for(var i=0;i<dataObj.length;i++){
                    htmlStr +='<tr class=\"borb\">'+
                        '<td>'+new Date(dataObj[i].rescRepayTime).Format('yyyy-MM-dd')+'</td>'+
                        '<td class=\"ybsb\">'+dataObj[i].rescNo+'/'+dataObj[i].rescTotalNo+'</td>'+
                        '<td class=\"ybsb\"><span class="moneyThree">'+dataObj[i].rescRepayPrincipalYuan.toFixed(2)+'</span></td>'+
                        '<td class=\"ybsb\"><span class="moneyThree">'+dataObj[i].rescRepayInterestYuan.toFixed(2)+'</span></td>'+
                        '<td>'+dataObj[i].rescOverdueDays+'</td>'+
                        '<td class=\"ybsb\"><span class="moneyThree">'+dataObj[i].rescShouldLateChargeYuan.toFixed(2)+'</span></td>'+
                        '<td>';
						if(dataObj[i].info==null){
                            htmlStr+='<div class="blue"><a href="'+server+'/investments/downloadContract2?flag=12&conId='+dataObj[i].conId +'" >下载《债权转让合同》</a></div>';
						}else{
                            htmlStr+= '<div class="blue"><a>'+dataObj[i].info+'</a></div>';
						}
                    	htmlStr+='</td></tr>';
                }
                htmlStr+='</tbody>';
                the.append(htmlStr);
                sbFlag=0;

            });
        }else
            sbFlag=0;
        $('.ld,.rd').find('.tba').not('.aa').fadeOut();  //隐藏所有其他table(除了当前要显示的这个table),目的在于，不要影响下边的toggle,否则会冲突.
        the.removeClass('aa');				//这步就用不到aa了,可以删除了，因为每次点击,都只能有一个aa,就是当前对应的table.
        the.fadeToggle();
    });
	
});	






