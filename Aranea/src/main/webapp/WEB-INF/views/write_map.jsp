<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href=".assets/css/write_map.css">
<title>Insert title here</title>

</head>
<body>
	<form action="writeMapUpload.com" method="post">
		<div class="map_wrap">
			<div id="map" style="width: 80%; height: 500px;"></div>
			<div class="hAddr"></div>
<<<<<<< HEAD
			<input name="LOC_NAME" id="LOC_NAME"> 
			<input name="LAT" id="LAT"> 
			<input name="LNG" id="LNG"> 
			<input type="submit" value="선택완료" id="save_bt" onclick='window.close();'>
=======
			<input  name="LOC_NAME" id="LOC_NAME"> 
			<input  name="LAT" id="LAT"> 
			<input  name="LNG" id="LNG"> 
			<button onclick='javascript()'>선택완료</button>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/Aranea.git
		</div>
	</form>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec459ef047abc9cf75674cad293a5dbb&libraries=services"></script>
	<script type="text/javascript" src="assets/JS/geolocation.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
</body>
</html>