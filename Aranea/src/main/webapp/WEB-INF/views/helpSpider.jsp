<%@page import="kr.aranea.entity.T_Need_Spider"%>
<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="java.util.List"%>
<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/home.css">
<link rel="stylesheet" href="./assets/css/sellingList.css">
<script type="text/javascript" src="assets/JS/home.js"></script>
</head>
<body>
	<div class="allcontainer">
		<%
		T_User user = (T_User) session.getAttribute("user");
		
		List<T_Need_Spider> list = (List<T_Need_Spider>)request.getAttribute("list");
		request.setAttribute("list", list);
		
		%>

		<!--수정 컨테이너 헤더  -->
		<div class="containerheader">


			<div class="header">
				<div class="rose">
					<div class="create">

						<%
						if (user == null) {
						%>
						<a class="login" href="login.com">로그인/회원가입</a>
						<%
						} else {
						%>
						<%=user.getUser_name()%>님, 환영합니다!
						<div style="width: 15px;"></div>
						<a href="logout.com">로그아웃</a>
						<%
						}
						%>
					</div>
				</div>
			</div>

			<div class="nav">
				<div class="dav">
					<div class="rav">
						<div class="logo">
							<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
								src="images/ARANEALOG2.png" width="300px" height="90px">
							</a>
						</div>

						<form action="goSerachText.com" method="post">
							<div class="search_input">
								<div class="search">
									<input type="text" name="searchContent" placeholder="키워드 검색"
										class="inputTag" onkeyup="enterkey()"> <input
										type="image" src="images/123.png" width="32" height="32">


								</div>
							</div>
						</form>

						<div class="twopack">
							<%
							if (user == null) {
							%>
							<a class="menu button" href="login.com"> <img alt="판매하기 로고"
								src="images/KakaoTalk_20230520_190952023.png" width="32"
								height="32"> 판매하기
							</a> <a class="menu button" href="login.com"> <img alt="내상점 로고"
								src="images/KakaoTalk_20230520_191255450.png" width="32"
								height="32"> 내 정보 ｜
							</a> <a class="menu button" href="login.com"> <img
								alt="스파이더맨 신청 로고" src="images/pngegg.png" width="32" height="32">
								스파이더맨 신청 ｜
							</a>

							<%
							} else {
							%>
							<a class="menu button" href="goWrite.com"> <img alt="판매하기 로고"
								src="images/KakaoTalk_20230520_190952023.png" width="32"
								height="32"> 판매하기
							</a> <a class="menu button" href="goMypage.com"> <img
								alt="내상점 로고" src="images/KakaoTalk_20230520_191255450.png"
								width="32" height="32"> 내 정보 ｜
							</a>

							<c:choose>
								<c:when test="${user.getSpider_yn() eq 'y'}">

									<a class="menu button" href="#"> <img alt="스파이더맨 신청 로고"
										src="images/pngegg.png" width="32" height="32"> 스파이더맨
										요청목록 ｜
									</a>

								</c:when>

								<c:otherwise>

									<a class="menu button" href="goSpiderman.com"> <img
										alt="스파이더맨 신청 로고" src="images/pngegg.png" width="32"
										height="32"> 스파이더맨 신청 ｜
									</a>

								</c:otherwise>

							</c:choose>
							<%
							}
							%>

						</div>
					</div>
					<div class="side">

						<div class="category">
							<a><img alt="메뉴버튼" src="images/카테카테카테카테고리.png" width="20"
								height="25"> 카테고리</a>
							<ul class="categorybtn">
								<table>
									<tr bgcolor="white">
										<td>
											<li id="catebtn"><a href="category.com?cm_category=남성복">남성복</a></li>
											<li id="catebtn"><a href="category.com?cm_category=여성복">여성복</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=디지털기기">디지털기기</a></li>
											<li id="catebtn"><a href="category.com?cm_category=생활가전">생활가전</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=가구/인테리어">가구/인테리어</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=뷰티/미용">뷰티/미용</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=스포츠/레저">스포츠/레저</a></li>
											<li id="catebtn"><a href="category.com?cm_category=도서">도서</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=티켓/상품권">티켓/상품권</a></li>
											<li id="catebtn"><a
												href="category.com?cm_category=반려동물용품">반려동물용품</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
					</div>
				</div>


			</div>
			<div id="board">
			<h1>요청</h1>
			<table id="list">
				<tr>
					<th>이미지</th>
					<th>상품명</th>
					<th>가격</th>
					<th>카테고리</th>
					<th>거래장소</th>
					<th>요청인</th>

				</tr>
				<c:forEach items="${list}" var="item">
					<tr id="ho"
						onclick="location.href='aaa.com?cm_seq=${item.cm_seq}'">
						<td><img alt="상품이미지"
							src="http://210.223.207.43:8081/Aranea/file/${item.cm_img1}"
							width="150" height="150"></td>
						<td>${item.cm_name}</td>
						<td>${item.cm_price}원</td>
						<td>${item.cm_category}</td>
						<td>${item.loc_name}</td>
						<td>${item.user_name}</td>

					</tr>
				</c:forEach>
			</table>
		</div>



		</div>
	</div>

</body>
</html>