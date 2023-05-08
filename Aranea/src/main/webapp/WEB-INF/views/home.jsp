<%@page import="kr.aranea.entity.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 4 Website Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/home.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>

.div {
	width: auto;
	height: auto;
}

</style>
</head>
<body>
<%
	Account user = (Account)session.getAttribute("user");
%>
	<div class="container">
		<div class="header">
			<div class="create">
			<%if(user == null){ %>
				<a class="login" href="login.com">로그인/회원가입</a>
			<%}else { %>
			<%=user.getName()%>님, 환영합니다.
			<a href="addressSet.com">동네설정</a>
			<a href="logout.com">로그아웃</a>
			<%} %>
			</div>

		</div>
		<hr>
		
		<div class="nav">
			<div class="logo">
				<a class="logoimg" href="gomain.com"> 
				<img alt="아라냐 로고" src="images/araneaLogo.png" width="200px" height="65px">
				</a>
			</div>
			
			<div class="search_input">
				<div class="search">
					<input type="text" placeholder="상품명, 지역명, @상점명 입력"
						class="inputTag" value> 
					<a class="searchBtn">
						<img alt="검색버튼 아이콘" src="images/searchbtn.jpg" width="20"
						height="20">
					</a>
				</div>
			</div>
			
			<div class="twopack">
				<a class="seller" href="goWrite.com"> 
					<img alt="판매하기 로고" src="images/seller.png" width="23" height="26"> 판매하기
				</a> 
				<a class="mystore" href="goMypage.com"> 
					<img alt="내상점 로고" src="images/mystore.png" width="23" height="24"> 내 상점
				</a>
				
			</div>
		</div>
		<hr>
		
		<div class="side">
			<div class="category">
				<img alt="메뉴버튼" src="images/category.png" width="35" height="35">
				<span name="categoryTag">카테고리</span>
			</div>
			<div class="section">
				
				<ul><a href="#">남성복</a></ul>
				<ul><a href="#">여성복</a></ul>
				<ul><a href="#">디지털기기</a></ul>
				<ul><a href="#">생활가전</a></ul>
				<ul><a href="#">가구/인테리어</a></ul>
				<ul><a href="#">뷰티/미용</a></ul>
				<ul><a href="#">스포츠/레저</a></ul>
				<ul><a href="#">도서</a></ul>
				<ul><a href="#">티켓/상품권</a></ul>
				<ul><a href="#">반려동물용품</a></ul>
			</div>
		</div>
		
	</div>
	
	<script type="text/javascript" src="css/write.css">
	</script>

</body>
</html>