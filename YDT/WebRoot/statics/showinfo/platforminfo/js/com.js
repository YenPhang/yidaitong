//下拉菜单
$(function(){
	$('#commenu').click(function(){
			if($("#cm_bd").attr("data-display") == "0"){
				$("#cm_bd").attr("data-display","1");
				$('.cm_con,.com_menu .opa').show();
				 $('.com_menu').addClass("show");
				}else if ($("#cm_bd").attr("data-display") == "1")
				  {
					$("#cm_bd").attr("data-display","0");
				  $('.cm_con,.com_menu .opa').hide();
				  $('.com_menu').removeClass("show");
				  }
 			});
			$('#cm_bd a').click(function(){
				//$(this).addClass("cur").siblings().removeClass();
				 $('.cm_con,.com_menu .opa').hide();
				 $("#cm_bd").attr("data-display","0");
				 $('.com_menu').removeClass("show");
			});
			$('.com_menu .opa,#logo').click(function(){
				 $('.cm_con,.com_menu .opa').hide();
				 $("#cm_bd").attr("data-display","0");
				 $('.com_menu').removeClass("show");
			});
});