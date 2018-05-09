//是否支持
$(function(){ 
	//判断浏览器是否支持placeholder属性
	supportPlaceholder = 'placeholder' in document.createElement('input');
	if(!supportPlaceholder){
		// alert("您的浏览器不支持placeholder，我们将使用js处理");
		$('input').each(function(){
			if($(this).attr("placeholder")){
				var text = $(this).attr('placeholder'), defaultValue = $(this).val();
				
			    /*if(!defaultValue){
			    	$(this).val(text).addClass("phcolor");
			    }
		 
			    $(this).focus(function(){
					if($(this).val() == text){
						$(this).val("");
					}
			    });

			    $(this).blur(function(){
					if($(this).val() == ""){
						$(this).val(text).addClass("phcolor");
					}
				});

				//输入的字符不为灰色
			    $(this).keydown(function(){
					$(this).removeClass("phcolor");
				});*/
			    
				if(!defaultValue){
			 		var placetext='<i class="pholder">'+text+'</i>';	
					$(this).parent().append(placetext);
					
					$(".pholder").click(function(){
						$(this).parent().children("input").focus();
						$(this).remove();
					});
					
					$(this).focus(function(){
						$(this).parent().children(".pholder").remove();
						if($("input[name=password]") && $("input[name=password]").val() && $("input[name=password]").val()!=''){
							$("input[name=password]").parent().children(".pholder").remove();
						}
					});
					$(this).blur(function(){
						if(!$(this).val() || $(this).val() == ""){
							$(this).parent().append(placetext);
						}
					});
					$(this).keyup(function(){
						$(this).parent().children(".pholder").remove();
						if($("input[name=password]") && $("input[name=password]").val() && $("input[name=password]").val()!=''){
							$("input[name=password]").parent().children(".pholder").remove();
						}
					});
			    }else {
					$(this).parent().children(".pholder").remove();
			    }
			}
		});
	}
});

$(".inp").click(function(){
	$(this).children("input").focus();
	$(this).children(".pholder").remove();
});
$("input.i_text").focus(function(){
	$(this).parent().css("border-color","#2ea7e0");
});
$("input.i_text").blur(function(){
	$(this).parent().css("border-color","#cfcfcf");
});

