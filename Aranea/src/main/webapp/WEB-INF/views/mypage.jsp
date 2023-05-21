<%@page import="kr.aranea.entity.T_Chat"%>
<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="kr.aranea.entity.T_User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 4 Website Example</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/mypage.css">
</head>
<body>
	<div class="allcontainer">
		<%
		T_User user = (T_User) session.getAttribute("user");

		List<T_Commodity> list = (List<T_Commodity>) request.getAttribute("list");
		request.setAttribute("list", list);
		
		List<T_Chat> list2 = (List<T_Chat>)request.getAttribute("list2");
		request.setAttribute("list2", list2);
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
						<%=user.getUser_name()%>님, 환영합니다! ｜<a href="addressSet.com">동네설정
							｜</a> <a href="logout.com">로그아웃</a>
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
								src="images/AraneaLogo.png" width="300px" height="90px">
							</a>
						</div>

						<div class="search_input">
							<div class="search">
								<input type="text" placeholder="상품명, 지역명, @상점명 입력"
									class="inputTag"> <a class="searchBtn"> <img
									alt="검색버튼 아이콘" src="images/searchbtn.jpg" width="20"
									height="20">
								</a>
							</div>
						</div>

						<div class="twopack">
							<%
							if (user == null) {
							%>
							<a class="menu button" href="login.com"> <img alt="판매하기 로고"
								src="images/seller.png" width="23" height="26"> 판매하기
							</a> <a class="menu button" href="login.com"> <img alt="내상점 로고"
								src="images/mystore.png" width="23" height="24"> 내 상점 ｜
							</a> <a class="menu button" href="login.com"> <img
								alt="스파이더맨 신청 로고" src="images/mystore.png" width="23"
								height="24"> 스파이더맨 신청 ｜
							</a>

							<%
							} else {
							%>
							<a class="menu button" href="goWrite.com"> <img alt="판매하기 로고"
								src="images/seller.png" width="23" height="26"> 판매하기
							</a> <a class="menu button" href="goMypage.com"> <img
								alt="내상점 로고" src="images/mystore.png" width="23" height="24">
								내 상점 ｜
							</a> <a class="menu button" href="goSpiderman.com"> <img
								alt="스파이더맨 신청 로고" src="images/mystore.png" width="23"
								height="24"> 스파이더맨 신청 ｜
							</a>
							<%
							}
							%>

						</div>
					</div>
					<div class="side">

						<div class="category">
							<a><img alt="메뉴버튼" src="images/category.png" width="35"
								height="35">카테고리</a>
							<ul class="categorybtn">
								<table>
									<tr bgcolor="white">
										<td>
											<li><a href="category.com?cm_category=남성복">남성복</a></li>
											<li><a href="category.com?cm_category=여성복">여성복</a></li>
											<li><a href="category.com?cm_category=디지털기기">디지털기기</a></li>
											<li><a href="category.com?cm_category=생활가전">생활가전</a></li>
											<li><a href="category.com?cm_category=가구/인테리어">가구/인테리어</a></li>
											<li><a href="category.com?cm_category=뷰티/미용">뷰티/미용</a></li>
											<li><a href="category.com?cm_category=스포츠/레저">스포츠/레저</a></li>
											<li><a href="category.com?cm_category=도서">도서</a></li>
											<li><a href="category.com?cm_category=티켓/상품권">티켓/상품권</a></li>
											<li><a href="category.com?cm_category=반려동물용품">반려동물용품</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
					</div>
				</div>


			</div>

		</div>
		<!--수정 컨테이너 헤더  -->



		<!--수정 컨테이너 바디  -->
		<div class="containerbody">
			<div class="listContainer">
				<div class="list">
					<a href="bookmark2.com" class="item">
						<div class="text">찜한상품</div>
					</a> <a href="sellingList.com" class="item">
						<div class="text">
							판매내역<span class="circle"></span>
						</div>
					</a> <a href="buyingList.com" class="item">
						<div class="text">
							구매내역<span class="circle"></span>
						</div>
					</a> <a href="updateinfo.com" class="item">
						<div class="text">정보수정</div>
					</a> <a href="point.com" class="item">
						<div class="text">채팅</div>
					</a>
				</div>

			</div>
			<div class="info">
				<div class="hello">
					<h2>내 정보</h2>
				</div>
				<div class="profile-info">
					<%-- 사용자 정보가 있다면 --%>
					<%
					if (user != null) {
					%>
					<div class="profile-name">
						<%=user.getUser_name()%>님
					</div>
					<div class="profile-details">
						<p>
							ID :
							<%=user.getUser_id()%>
						</p>
						<p>
							전화번호 :
							<%=user.getUser_phone()%>
						</p>
						<p>
							계좌번호 :
							<%=user.getUser_v_account()%>
						</p>
						<p>
							아라냐포인트 :
							<%=user.getUser_point()%>
							점
						</p>
						<p>
							아라냐머니 :
							<%=user.getUser_account_balance()%>
							원
							<%-- 추가적인 프로필 정보를 여기에 표시하세요 --%>
					</div>
					<%
					} else {
					%>
					<div class="profile-name">로그인이 필요합니다.</div>
					<%
					}
					%>
				</div>
			</div>
		</div>
		<!-- 컨테이너 바디 -->
	</div>
	<script type="text/javascript" src="assets/JS/home.js"></script>
</body>
</html>