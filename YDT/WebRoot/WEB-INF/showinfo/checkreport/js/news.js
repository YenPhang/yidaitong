// JavaScript Document
	//头部导航
	$("#_nav a").hover(function(){
		$(this).addClass("showbg");	
		},function(){
			$(this).removeClass("showbg");		
		}).click(function(){
			$(this).parents("ul").find("a").removeClass("on");
			$(this).addClass("on");		
	});
	
	//左侧列表
		$('.tit_big span').css('cursor','pointer');	   
		  $('.tit_big span').click(function(){
				var obj=$(this);
			if(obj.hasClass('tit_open')){
				obj.removeClass('tit_open').addClass('tit_close');
				obj.next('.normal_sub').hide();
				}else{
					obj.removeClass('tit_close').addClass('tit_open');
				obj.siblings('span').removeClass().addClass('tit_close');
				obj.siblings('.normal_sub').hide();
				obj.next('.normal_sub').show();
			}
		});
		
		
	//文章切换
	$('.fd').click(function(){
		$('.linkpark').find("span").removeClass('abc');
		$('.linkpark').find('.xinre').hide();
		$(this).addClass("abc");
		$('.xinre').eq($(this).index()).show();
	});
	
	function _search(id,name){	
		$("#keyword").val(name);
		$("#"+id).submit(); 
		}
	
	//点击搜索
	$(".serch").click(function(){
		if($("#keyword").val()!=""){
			$("#helpform").submit(); 
		}
	});