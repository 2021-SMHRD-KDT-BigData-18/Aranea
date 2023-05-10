/**
 * 
 */

// 카테고리 설정 코드
$(document).ready(function() {
	$(".category>a").click(function() {
		$(this).next("ul").toggleClass("categorybtn");
	});
});
