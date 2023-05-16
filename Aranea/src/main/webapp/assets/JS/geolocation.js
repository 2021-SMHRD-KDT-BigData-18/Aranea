// api => 좌표로 주소를 얻어내기
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		level: 2 // 지도의 확대 레벨
	};

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// geolocation api
if (navigator.geolocation) {

	// GeoLocation을 이용해서 접속 위치를 얻어옵니다
	navigator.geolocation.getCurrentPosition(function(position) {

		var lat = position.coords.latitude, // 위도
			lon = position.coords.longitude; // 경도

		var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다


		map.setCenter(locPosition);

	});

} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

	var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
	map.setCenter(locPosition);

}


// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
	infowindow = new kakao.maps.InfoWindow({ zindex: 1 }); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			var add = result[0].address.address_name;
			var latlng = mouseEvent.latLng;

			var detailAddr = '<div>지번 주소 : ' + add + '</div>';

			$('#LOC_NAME').val(add);
			$('#LAT').val(latlng.getLat());
			$('#LNG').val(latlng.getLng());


			var content = '<div class="bAddr">' +
				'<span class="title">거래장소 정보</span>' +
				detailAddr +
				'</div>';

			// 마커를 클릭한 위치에 표시합니다 
			marker.setPosition(mouseEvent.latLng);
			marker.setMap(map);

			// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
			infowindow.setContent(content);
			infowindow.open(map, marker);
		}
	});
});

// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
	searchAddrFromCoords(map.getCenter());
});

function searchAddrFromCoords(coords, callback) {
	// 좌표로 행정동 주소 정보를 요청합니다
	geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
}

function searchDetailAddrFromCoords(coords, callback) {
	// 좌표로 법정동 상세 주소 정보를 요청합니다
	geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}


// '선택완료' 누른 후 자동 창 닫기
<<<<<<< HEAD
function javascript() {
	setTimeout(self.close, 100);
=======
function javascript(){
	var data = $('#LOC_NAME').val();
	
	$(opener.document).find('#result').html(data);
	
	// 부모 -> 자식 정보 제공
	// console.log(window.test);
	
	window.close();
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/Aranea.git
}

<<<<<<< HEAD

// 장소명 db에서 가져오기

var loc_btn = $('#loc_btn');

// 2. button 태그에 이벤트 부여
btn.on('click', request);

// 호이스팅 
function request() {
	
	var loc_p = $('#result');

	// 3. ajax를 사용해서 비동기 방식으로 요청 보내기
	$.ajax({
		url: 'write.jsp', // 어디로?
		type: 'post', // Get? post?
		data: {
			// data : "data1=value1&data2=value2..."
			// key : value
			"LOC_NAME": add

		}, // 보낼 데이터
		dataType: "json", // 응답받는 데이터 형식이 무엇인지
		success: function() {// 응답입니다~~

			loc_p.html("사용가능한 이메일 입니다.");

		},
		error: function() {
			// 요청이 실패하면 실행될 콜백함수
			p.html("사용가능한 이메일 입니다.");
		}
	});

}
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/Aranea.git
