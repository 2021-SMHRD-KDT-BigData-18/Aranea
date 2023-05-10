<%@page import="kr.aranea.entity.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
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
	
	
	<%if(user == null){ %>
		<a href="login.com">로그인하러 가기</a>
	<%}else { %>
	<div class="logo">
		<a class="logoimg" href="gomain.com"> 
			<img alt="아라냐 로고" src="images/araneaLogo.png" width="200px" height="65px">
		</a>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h4>중고상품 글 작성</h4>
			</div>
			<div class="card-body">

				<form action="writingUpload.com" method="post" enctype="multipart/form-data">
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

					<strong>제목</strong><br> 
					<input type="text" name="title">
					<hr>

					<strong>카테고리</strong><br> 
					<select name="category"
						id="category">
						<option value="">--선택--</option>
						<option value="남성복">남성복</option>
						<option value="여성복">여성복</option>
						<option value="디지털기기">디지털기기</option>
						<option value="생활가전">생활가전</option>
						<option value="가구/인테리어">가구/인테리어</option>
						<option value="뷰티/미용">뷰티/미용</option>
						<option value="스포츠/레저">스포츠/레저</option>
						<option value="도서">도서</option>
						<option value="티켓/상품권">티켓/상품권</option>
						<option value="반려동물용품">반려동물용품</option>
					</select>
					<hr>

					<strong>거래지역설정</strong>
               			<div id="map" style="width: 100%; height: 350px;"></div>
               			<p>
		                <em>지도를 클릭해주세요!</em>
		                </p>
		                <div id="clickLatlng"></div>
			            <input type="text" name="address">
			            
			        <hr>

					<strong>상태(중고상품/새상품)</strong><br> 
					중고상품<input type="radio"
						name="condition" value="중고상품"> 
					새상품 <input type="radio"
						name="condition" value="새상품">
					<hr>

					<strong>가격</strong><br> 
					<input type="text" name="price"
						onkeyup="inputNumberFormat(this)" />
					<hr>

					<strong>설명</strong><br>
					<textarea rows="10" cols="50" name="content"></textarea>
					<hr>

					<strong>수량</strong><br> 
					<input type="number" name="counts">
					<hr>

					<button class="btn btn-primary btn-sm">작성완료</button>
				</form>

			</div>
			<div class="card-footer"></div>
		</div>
	</div>
	<%} %>
	
	<script type="text/javascript" src="assets/JS/write.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec459ef047abc9cf75674cad293a5dbb"></script>
    <script type="text/javascript" src="assets/JS/geolocation.js"></script>
</body>
</html>
