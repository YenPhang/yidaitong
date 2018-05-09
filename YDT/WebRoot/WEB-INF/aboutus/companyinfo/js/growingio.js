/*获取cookies*/
function getQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r != null){
		//setCookie("friendId ","\""+ unescape(r[2]+"\""));
 		return unescape(r[2]);
	}
 	return null; 
}
var userId = getQueryString('_userId');
var birthYear = getQueryString('_birthYear');
var gender = getQueryString('_gender');
/*GrowingIO 接入*/
//var userId=$.cookie('_userId');
var _vds = _vds || [];
window._vds = _vds;
(function(){
  _vds.push(['setAccountId', '84873cbf3be76fe4']);
  if(userId != null && userId != ''){
  	_vds.push(['setCS1', 'userId', userId]);
  	_vds.push(['setCS2', 'gender', gender]);
	_vds.push(['setCS3', 'birthYear', birthYear]);
  }
  (function() {
    var vds = document.createElement('script');
    vds.type='text/javascript';
    vds.async = true;
    vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(vds, s);
  })();
})();
