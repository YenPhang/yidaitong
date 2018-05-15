jQuery(document).ready(function(){
	jQuery("#noticelist").click(function() {
	jQuery("#bd1").css({
		"display": "block"
	});
	jQuery("#bd2").css({
		"display": "none"
	});
});
jQuery("#addnotice").click(function() {
	jQuery("#bd1").css({
		"display": "none"
	});
	jQuery("#bd2").css({
		"display": "block"
	});
});
	
})
