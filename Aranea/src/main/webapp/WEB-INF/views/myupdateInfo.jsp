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
	<%
	T_User user = (T_User) session.getAttribute("user");
	%>

	<div class="container">
		<div class="header">
			<div class="rose">
				<div class="create">
					<%=user.getUser_name()%>님, 환영합니다! ｜ <a href="addressSet.com">동네설정
						｜</a><a href="logout.com">로그아웃</a>
				</div>
			</div>
		</div>

		<div class="nav">
			<div class="dav">
				<div class="rav">
					<div class="logo">
						<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
							src="images/araneaLogo.png" width="136px" height="40px">
						</a>
					</div>

					<div class="search_input">
						<div class="search">
							<input type="text" placeholder="상품명, 지역명, @상점명 입력"
								class="inputTag"> <a class="searchBtn"> <img
								alt="검색버튼 아이콘" src="images/searchbtn.jpg" width="20" height="20">
							</a>
						</div>
					</div>

					<div class="twopack">
						<a class="menu button" href="goWrite.com"> <img alt="판매하기 로고"
							src="images/seller.png" width="23" height="26"> 판매하기
						</a> <a class="menu button" href="goMypage.com"> <img alt="내상점 로고"
							src="images/mystore.png" width="23" height="24"> 내 상점 ｜
						</a> <a class="menu button" href="goSpiderman.com"> <img
							alt="스파이더맨 신청 로고" src="images/mystore.png" width="23" height="24">
							스파이더맨 신청 ｜
						</a>

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
										<li><a href="ctMenwear.com">남성복</a></li>
										<li><a href="ctLadieswear.com">여성복</a></li>
										<li><a href="ctDevice.com">디지털기기</a></li>
										<li><a href="ct_appliances.com">생활가전</a></li>
										<li><a href="ctInterior.com">가구/인테리어</a></li>
										<li><a href="ctBeauty.com">뷰티/미용</a></li>
										<li><a href="ctSport.com">스포츠/레저</a></li>
										<li><a href="ctBook.com">도서</a></li>
										<li><a href="ctTicket.com">티켓/상품권</a></li>
										<li><a href="ctPet.com">반려동물용품</a></li>
									</td>
								</tr>
							</table>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="menu_list">
			<div class="pure-menu custom-restricted-width">
				<h2 class="pure-menu-heading">내 상점</h2>
				<ul class="pure-menu-list">
					<li class="pure-menu-item"><a href="bookmark.com"
						class="pure-menu-link">찜한상품</a></li>
					<li class="pure-menu-item"><a href="sellingList.com"
						class="pure-menu-link">판매내역</a></li>
					<li class="pure-menu-item"><a href="buyingList.com"
						class="pure-menu-link">구매내역</a></li>
					<li class="pure-menu-item"><a href="updateinfo.com"
						class="pure-menu-link">정보수정</a></li>
					<li class="pure-menu-item"><a href="point.com"
						class="pure-menu-link">포인트확인</a></li>
				</ul>
			</div>
		</div>



		<div class=middle>
			<form method=post action="#">
				<br>
				<h2>내 정보 수정</h2>
				<table>
					<tr>
						<th>ID</th>
						<td><span id=id><%=user.getUser_id()%></span></td>
					</tr>
					<tr>
						<th>PW</th>
						<td><input type=password name=pw id=pw disabled
							placeholder="필수 입력 사항입니다." value="<%=user.getUser_pw()%>">
							<input type=button id=pw_button value="변경" onclick="change_pw();"></td>
						<input type=hidden name=pw2 id=pw2 value="<%=user.getUser_pw()%>">
					</tr>
					<tr>
						<th>이름</th>
						<td><input type=text name=name id=name disabled
							placeholder="필수 입력 사항입니다." value="<%=user.getUser_name()%>">
							<input type=button id=name_button value="변경"
							onclick="change_name();"></td>
						<input type=hidden name=name2 id=name2
							value="<%=user.getUser_name()%>">
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" name=phone id=phone disabled
							value="<%=user.getUser_phone()%>"> <input type=button
							id=phone_button value="변경" onclick="change_phone();"></td>
						<input type=hidden name=phone2 id=phone2
							value="<%=user.getUser_phone()%>">
					</tr>
					<tr>
						<th>소개</th>
						<td><input type="text" name=intro id=intro disabled
							value="<%=user.getUser_name()%>"> <input type=button
							id=intro_button value="변경" onclick="change_intro();"></td>
						<input type=hidden name=intro2 id=intro2
							value="<%=user.getUser_name()%>">
					</tr>
				</table>
				<input disabled id=submit type=submit value="변경사항을 확정하기">
			</form>
		</div>


	</div>
	<script type="text/javascript" src="assets/JS/myupdateinfo.js"></script>
</body>
</html>