<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href=".assets/css/write.css">
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<a class="logoimg" href="gomain.com"> 
			<img alt="아라냐 로고" src="images/araneaLogo.png" width="200px" height="65px">
		</a>
	</div>

	<div class="container">
		<h2>내 상점</h2>
		<div class="card">
			<div class="card-body">
				<div class="basket">
					<a class="basketlist" href="#">관심목록</a>
				</div>

				<div class="sell">
					<a class="selllist" href="#">판매내역</a>
				</div>

				<div class="buying">
					<a class="buyinglist" href="#">구매내역</a>
				</div>

				<div class="changeinf">
					<a class="inflist" href="#">정보수정</a>
				</div>
				
				<div class="checkpoint">
					<a class="pointlist" href="#">포인트 확인</a>
				</div>
			</div>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>