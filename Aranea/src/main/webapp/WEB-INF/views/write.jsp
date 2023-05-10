<%@page import="kr.aranea.entity.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href=".assets/css/write.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%
	Account user = (Account) session.getAttribute("user");
	%>


	<%
	if (user == null) {
	%>
	<a href="login.com">로그인하러 가기</a>
	<%
	} else {
	%>
	<div class="logo">
		<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
			src="images/araneaLogo.png" width="200px" height="65px">
		</a>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h4>중고상품 글 작성</h4>
			</div>
			<div class="card-body">

				<form action="writingUpload.com" method="post"
					enctype="multipart/form-data">
					<strong>상품이미지</strong><br>
					<div>
						<span>파일 1</span><br> <input type='file' name='img1'
							accept="image/png, image/gif, image/jpeg"><br>
					</div>
					<div>
						<span>파일 2</span><br> <input type='file' name='img2'
							accept="image/png, image/gif, image/jpeg"><br>
					</div>
					<div>
						<span>파일 3</span><br> <input type='file' name='img3'
							accept="image/png, image/gif, image/jpeg">
					</div>
					<hr>

					<strong>제목</strong><br> <input type="text" name="title">
					<hr>

					<strong>카테고리</strong><br> <select name="category"
						id="category">
						<option value="">--선택--</option>
						<option value="menwear">남성복</option>
						<option value="ladieswear">여성복</option>
						<option value="device">디지털기기</option>
						<option value="appliances">생활가전</option>
						<option value="interior">가구/인테리어</option>
						<option value="beauty">뷰티/미용</option>
						<option value="sport">스포츠/레저</option>
						<option value="book">도서</option>
						<option value="ticket">티켓/상품권</option>
						<option value="pet">반려동물용품</option>
					</select>
					<hr>

					<strong>거래지역설정</strong>
					<div id="map" style="width: 100%; height: 350px;"></div>
					<p>
						<em>지도를 클릭해주세요!</em>
					</p>
					<div id="clickLatlng"></div>


					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec459ef047abc9cf75674cad293a5dbb"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 10
						// 지도의 확대 레벨 
						};

						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
						if (navigator.geolocation) {

							// GeoLocation을 이용해서 접속 위치를 얻어옵니다
							navigator.geolocation.getCurrentPosition(function(
									position) {

								var lat = position.coords.latitude, // 위도
								lon = position.coords.longitude; // 경도

								var locPosition = new kakao.maps.LatLng(lat,
										lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

								// 마커와 인포윈도우를 표시합니다
								displayMarker(locPosition);

							});

						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

							var locPosition = new kakao.maps.LatLng(33.450701,
									126.570667);

							displayMarker(locPosition, message);
						}

						// 지도에 마커와 인포윈도우를 표시하는 함수입니다
						function displayMarker(locPosition) {

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : locPosition
							});

							// 지도 중심좌표를 접속위치로 변경합니다
							map.setCenter(locPosition);

							kakao.maps.event.addListener(map, 'click',
									function(mouseEvent) {

										// 클릭한 위도, 경도 정보를 가져옵니다 
										var latlng = mouseEvent.latLng;

										// 마커 위치를 클릭한 위치로 옮깁니다
										marker.setPosition(latlng);

										var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
									    message += '경도는 ' + latlng.getLng() + ' 입니다';
									    
									    var resultDiv = document.getElementById('clickLatlng'); 
									    resultDiv.innerHTML = message;
									});
						}
					</script>
					<input type="text" name="address">
					<hr>

					<strong>상태(중고상품/새상품)</strong><br> 중고상품<input type="radio"
						name="condition" value="used"> 새상품 <input type="radio"
						name="condition" value="new">
					<hr>

					<strong>가격</strong><br> <input type="text" name="price"
						onkeyup="inputNumberFormat(this)" />
					<hr>

					<strong>설명</strong><br>
					<textarea rows="10" cols="50" name="content"></textarea>
					<hr>

					<strong>수량</strong><br> <input type="number" name="counts">
					<hr>

					<button class="btn btn-primary btn-sm">작성완료</button>
				</form>

			</div>
			<div class="card-footer"></div>
		</div>
	</div>
	<%
	}
	%>
	<script type="text/javascript" src="assets/JS/write.js"></script>
</body>
</html>
