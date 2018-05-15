
$(function() {	
		var lineChartData = {
			labels :  $("#month").val().split(","),
			datasets : [
				{
					label: "My First dataset",
					fillColor : "rgba(46,167,224,0.1)",
					strokeColor : "rgba(46,167,224,1)",
					pointColor : "rgba(255,255,225,1)",
					pointStrokeColor : "#2ea7e0",
					pointHighlightFill : "#f60",
					pointHighlightStroke : "rgba(220,220,220,1)",
					data:  $("#money").val().split(",")
				}
			]

		}
		
		var lineChartData1 = {
				labels : $("#replayMonth").val().split(","),
				datasets : [
					{
						label: "My First dataset",
						fillColor : "rgba(46,167,224,0.1)",
						strokeColor : "rgba(46,167,224,1)",
						pointColor : "rgba(255,255,225,1)",
						pointStrokeColor : "#2ea7e0",
						pointHighlightFill : "#f60",
						pointHighlightStroke : "rgba(220,220,220,1)",
						data: $("#replayMoney").val().split(",")
					}
				]

			}


	var radarChartData = {
		//labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
		labels: ["地区", "学历", "稳定性", "企业性质", "收入水平"],
		datasets: [
						{
				label: "My Second dataset",
				fillColor: "rgba(151,187,205,0.2)",
				strokeColor: "rgba(151,187,205,1)",
				pointColor: "rgba(151,187,205,1)",
				pointStrokeColor: "#fff",
				pointHighlightFill: "#fff",
				pointHighlightStroke: "rgba(151,187,205,1)",
				data: [$("#usaScoreArea").val(),
				       $("#usaScoreDegree").val(),
				       $("#usaScoreStability").val(),
				       $("#usaScoreEnterprise").val(),
				       $("#usaScoreIncome").val()
				       ]
			}
		]
	};

	window.onload = function(){
		var ctx = document.getElementById("canvasline").getContext("2d");
		window.myLine = new Chart(ctx).Line(lineChartData, {
			responsive2: true
		});	
		var ctx1 = document.getElementById("canvasline1").getContext("2d");
		window.myLine1 = new Chart(ctx1).Line(lineChartData1, {
			responsive1: true
		});
		/*window.myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData, {
			responsive: true
		});*/
	}
});



$(function() {
	//my图表切换
	$('.exp1').click(function(){
		$('.ex_l_bd').attr('style','margin-left:0')
		$(this).addClass('abc').siblings().removeClass('abc');
		})
	$('.exp2').click(function(){
		$('.ex_l_bd').attr('style','margin-left:-527px')
		$(this).addClass('abc').siblings().removeClass('abc');
		})


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
	
});

/****开始滚动*****/
function AutoScroll(obj){
    $(obj).find(".scroll:first").animate({
        marginTop:"-40px"
    },500,function(){
        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
    });
}
$(document).ready(function(){
    setInterval('AutoScroll(".scrolldiv")',4000);
});
/****结束滚动*****/





