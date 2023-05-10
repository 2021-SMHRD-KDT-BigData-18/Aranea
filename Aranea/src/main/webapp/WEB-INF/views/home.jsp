<%@page import="kr.aranea.entity.Writing"%>
<%@page import="java.util.List"%>
<%@page import="kr.aranea.entity.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<script src="./js/jquery-3.6.4.min.js"></script>

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

   List<Writing> list = (List<Writing>)request.getAttribute("list");
   request.setAttribute("list", list);
%>
	<div class="container">
		<div class="header">
			<div class="create">
				<%if(user == null){ %>
				<a class="login" href="login.com">로그인/회원가입</a>
				<%}else { %>
				<%=user.getName()%>님, 환영합니다. <a href="addressSet.com">동네설정</a> <a
					href="logout.com">로그아웃</a>
				<%} %>
			</div>

		</div>
		<hr>

		<div class="nav">
			<div class="logo">
				<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
					src="images/araneaLogo.png" width="200px" height="65px">
				</a>
			</div>

			<div class="search_input">
				<div class="search">
					<input type="text" placeholder="상품명, 지역명, @상점명 입력" class="inputTag">
					<a class="searchBtn"> <img alt="검색버튼 아이콘"
						src="images/searchbtn.jpg" width="20" height="20">
					</a>
				</div>
			</div>

			<div class="twopack">
				<a class="seller" href="goWrite.com"> <img alt="판매하기 로고"
					src="images/seller.png" width="23" height="26"> 판매하기
				</a> <a class="mystore" href="goMypage.com"> <img alt="내상점 로고"
					src="images/mystore.png" width="23" height="24"> 내 상점
				</a> <a class="spiderman" href="goSpiderman.com"> <img
					alt="스파이더맨 신청 로고" src="images/mystore.png" width="23" height="26">
					스파이더맨 신청
				</a>

			</div>
		</div>
		<hr>

		<div class="side">

			<div class="category">
				<a><img alt="메뉴버튼" src="images/category.png" width="35"
					height="35">카테고리</a>
				<ul class="categorybtn">
					<li><a href="ctMenwear.com">남성복</a></li>
					<li><a href="ctLadieswear.com">여성복</a></li>
					<li><a href="ctDevice.com">디지털기기</a></li>
					<li><a href="ct_appliances">생활가전</a></li>
					<li><a href="ctInterior.com">가구/인테리어</a></li>
					<li><a href="ctBeauty.com">뷰티/미용</a></li>
					<li><a href="ctSport.com">스포츠/레저</a></li>
					<li><a href="ctBook.com">도서</a></li>
					<li><a href="ctTicket.com">티켓/상품권</a></li>
					<li><a href="ctPet.com">반려동물용품</a></li>
				</ul>
			</div>
		</div>


		<div class="main">
			<c:forEach items="${list}" var="list">

				<!-- for each문 써야함 -->
				<div class="viewWrap">
					<a href="viewWriting.com?num=${list.num }">
						<div class="viewImg">
							<img alt="상품이미지" src="file/${list.img1}" width="194" height="194">
						</div>
						<div class="viewCard">
							<div class="title">${list.title}</div>
							<div class="price">${list.price}원</div>
						</div>
					</a>
				</div>
				<!-- 여기까지 for each문 -->

			</c:forEach>
		</div>


	</div>
	<script type="text/javascript" src="assets/JS/home.js"></script>
</body>
</html>