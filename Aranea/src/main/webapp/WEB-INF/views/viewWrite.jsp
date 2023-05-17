<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/viewWriting.css">
</head>
<body>
	<div class="logo">
		<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
			src="images/araneaLogo.png" width="200px" height="65px">
		</a>
	</div>

	<div id = "board">
				<table id="list">
					<tr>
						<td>상품이미지</td>
						<img src="file/${list.cm_img1}">
						<img src="file/${list.cm_img2}">
						<img src="file/${list.cm_img3}">
					</tr>
					<tr>
						<td>제목</td>
						<td>${list.cm_name }</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td>${list.cm_category }</td>
					</tr>
					<tr>
						<td>거래지역</td>
						<td>${list.loc_seq}</td>
					</tr>
					<tr>
						<td>상태(중고상품/새상품)</td>
						<td>${list.cm_status}</td>
					</tr>
					<tr>
						<td>가격</td>
						<td>${list.cm_price}</td>
					</tr>
					<tr>
						<td>설명</td>
						<td>${list.cm_desc}</td>
					</tr>
					<tr>
						<td colspan="2">
						<button id="mybtn">찜</button>
                    	<button id="chatbtn">채팅</button>
                    	<button id="buybtn">구매신청</button>
                    	<br>
                    	<br>
						<a href="gomain.com"><button>홈으로<br>돌아가기</button></a></td>
					</tr>
				</table>
	</div>
</body>
</html>