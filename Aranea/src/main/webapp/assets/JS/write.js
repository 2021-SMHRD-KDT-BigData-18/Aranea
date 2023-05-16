
// 가격 => , 표현하는 코드
function inputNumberFormat(obj) {
	obj.value = comma(uncomma(obj.value));
}

function comma(str) {
	str = String(str);
	return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function uncomma(str) {
	str = String(str);
	return str.replace(/[^\d]+/g, '');
}

// 자식 -> 부모 팝업창
function openWindow() {

	window2 = window.open("writeMap.com", "PopupWin", "width=500,height=600");

	// 부모 -> 자식 정보전달
	// window2.test = '12345';


}

