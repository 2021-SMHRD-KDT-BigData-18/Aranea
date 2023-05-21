<%@page import="kr.aranea.entity.T_User"%>
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

<link rel="stylesheet" href="assets/css/write.css">

<link rel="stylesheet" href="assets/css/write_map.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%
	T_User user = (T_User) session.getAttribute("user");
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
			src="images/AraneaLogo.png" width="300px" height="90px">
		</a>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h3>중고상품 글 작성</h3>
			</div>
			<hr style="margin-left: 8%;">
			<div class="card-body">
				<form action="writingUpload.com" method="post"
					enctype="multipart/form-data">
					<strong>상품이미지</strong><br>
					<div>
						<span>파일 1</span><br> <input type='file' name='cm_img1'
							accept="image/png, image/gif, image/jpeg"><br>
					</div>
					<div>
						<span>파일 2</span><br> <input type='file' name='cm_img2'
							accept="image/png, image/gif, image/jpeg"><br>
					</div>
					<div>
						<span>파일 3</span><br> <input type='file' name='cm_img3'
							accept="image/png, image/gif, image/jpeg">
					</div>
					<hr>

					<strong>제목</strong><br> <input type="text" name="cm_name"
						id="cm_name">
					<hr>

					<strong>카테고리</strong><br> <select name="cm_category"
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

					<strong>거래지역설정</strong><br>
					<!-- <input type="text" name="loc_seq" id="check"> -->
					<p id="result"></p>
					<a href="javascript:openWindow();">거래지역 검색</a>
					<hr>

					<strong>상태(중고상품/새상품)</strong><br> 중고상품 <input type="radio"
						name="cm_status" value="중고상품"> 새상품 <input type="radio"
						name="cm_status" value="새상품">
					<hr>

					<strong>가격</strong><br> <input type="text" name="cm_price"
						onkeyup="inputNumberFormat(this)" /> 원
					<hr>

					<strong>설명</strong><br>
					<textarea rows="10" cols="30" name="cm_desc"></textarea>
					<hr>

					<button class="btn btn-primary btn-sm" id="submitBtn" disabled>작성완료</button>
				</form>
			</div>
			<div class="card-footer"></div>
		</div>

		<script>
  // 입력값이 모두 채워져있을 때 작성완료 버튼 활성화
  const cmNameInput = document.getElementById('cm_name');
  const categorySelect = document.getElementById('category');
  const priceInput = document.getElementsByName('cm_price')[0];
  const descTextarea = document.getElementsByName('cm_desc')[0];
  const submitBtn = document.getElementById('submitBtn');

  cmNameInput.addEventListener('input', validateInputs);
  categorySelect.addEventListener('change', validateInputs);
  priceInput.addEventListener('input', validateInputs);
  descTextarea.addEventListener('input', validateInputs);

  function validateInputs() {
    if (
      cmNameInput.value.trim() !== '' &&
      categorySelect.value !== '' &&
      priceInput.value.trim() !== '' &&
      descTextarea.value.trim() !== ''
    ) {
      submitBtn.disabled = false;
    } else {
      submitBtn.disabled = true;
    }
  }

  // 가격 입력 시 숫자 형식 변환
  function inputNumberFormat(element) {
    const { value } = element;
    const numValue = value.replace(/\D/g, '');
    element.value = numberWithCommas(numValue);
  }

  function numberWithCommas(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
  }
</script>
	</div>
	<%
	}
	%>
	<script type="text/javascript" src="assets/JS/write.js"></script>
	<script type="text/javascript" src="assets/JS/geolocation.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
</body>
</html>
