<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="kr.aranea.entity.T_User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="assets/css/viewWriting.css">
<script type="text/javascript" src="assets/JS/home.js"></script>

</head>


<body>

	<div class="allcontainer">


		<%
      T_User user = (T_User) session.getAttribute("user");
   %>

		<!--수정 컨테이너 헤더  -->
		<div class="containerheader">


			<div class="header">
				<div class="rose">
					<div class="create">

						<% if (user==null) { %>
						<a class="login" href="login.com">로그인/회원가입</a>
						<% } else { %>
						<%=user.getUser_name()%>님, 환영합니다! 
						<div style="width: 15px;">     </div>
							<a href="logout.com">로그아웃</a>
						<% } %>
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

						<div class="search_input">
							<div class="search">
								<input type="text" placeholder="상품명, 지역명, @상점명 입력"
									class="inputTag"> <a class="searchBtn"> <img
									alt="검색버튼 아이콘" src="images/123.png" width="20" height="20">
								</a>
							</div>
						</div>

						<div class="twopack">
							<%  if(user == null){ %>
							<a class="menu button" href="login.com"> <img alt="판매하기 로고"
								src="images/KakaoTalk_20230520_190952023.png" width="23"
								height="26"> 판매하기
							</a> <a class="menu button" href="login.com"> <img alt="내상점 로고"
								src="images/KakaoTalk_20230520_191255450.png" width="23"
								height="24"> 내 상점 ｜
							</a> <a class="menu button" href="login.com"> <img
								alt="스파이더맨 신청 로고" src="images/pngegg.png" width="23" height="24">
								스파이더맨 신청 ｜
							</a>

							<%} else{ %>
							<a class="menu button" href="goWrite.com"> <img alt="판매하기 로고"
								src="images/KakaoTalk_20230520_190952023.png" width="23"
								height="26"> 판매하기
							</a> <a class="menu button" href="goMypage.com"> <img
								alt="내상점 로고" src="images/KakaoTalk_20230520_191255450.png"
								width="23" height="24"> 내 상점 ｜
							</a> <a class="menu button" href="goSpiderman.com"> <img
								alt="스파이더맨 신청 로고" src="images/pngegg.png" width="23" height="24">
								스파이더맨 신청 ｜
							</a>
							<%} %>

						</div>
					</div>
					<div class="side">

						<div class="category">
							<a><img alt="메뉴버튼" src="images/카테카테카테카테고리.png" width="20"
								height="25">   카테고리</a>
							<ul class="categorybtn">
								<table>
									<tr bgcolor="white">
										<td>
											<li id="catebtn"><a href="category.com?cm_category=남성복">남성복</a></li>
											<li id="catebtn"><a href="category.com?cm_category=여성복">여성복</a></li>
											<li id="catebtn"><a href="category.com?cm_category=디지털기기">디지털기기</a></li>
											<li id="catebtn"><a href="category.com?cm_category=생활가전">생활가전</a></li>
											<li id="catebtn"><a href="category.com?cm_category=가구/인테리어">가구/인테리어</a></li>
											<li id="catebtn"><a href="category.com?cm_category=뷰티/미용">뷰티/미용</a></li>
											<li id="catebtn"><a href="category.com?cm_category=스포츠/레저">스포츠/레저</a></li>
											<li id="catebtn"><a href="category.com?cm_category=도서">도서</a></li>
											<li id="catebtn"><a href="category.com?cm_category=티켓/상품권">티켓/상품권</a></li>
											<li id="catebtn"><a href="category.com?cm_category=반려동물용품">반려동물용품</a></li>
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


			<div class="board">
				<div class="board1">
					<div class="boardImg">
						<div class="imglist">
							<img id=imglist1
								src="http://210.223.207.43:8081/Aranea/file/${list.cm_img1}">
							<img id=imglist2
								src="http://210.223.207.43:8081/Aranea/file/${list.cm_img2}">
							<img id=imglist3
								src="http://210.223.207.43:8081/Aranea/file/${list.cm_img3}">

						</div>

					</div>





				</div>




				<div class="writecontainer">
					<!-- 글씨  -->
					<div class="writetitle_container">
						<div class="writetitle">
							<div class="writeheader">
								<div id="name">
									<div id="name_title">${list.cm_name }</div>
									<br>

									<div id="name_price">${list.cm_price}</div>

								</div>

							</div>



							<div id="sellinfo">

								<div id="username_info">


									<div id="username_info_info">판매자</div>


									<div id="username_info_name">${list.user_name }</div>


								</div>


								<div id="category_info">

									<div id="category_info_info">카테고리</div>
									<div id="category_info_category">${list.cm_category }</div>
								</div>
								<div id="loc_info">
									<div id="loc_info_info">거래지역</div>
									<div id="loc_info_loc">${select.loc_name}</div>
								</div>
								<div id="status_info">
									<div id="status_info_info">상태</div>
									<div id="status_info_status">${list.cm_status}</div>
								</div>
							</div>
						</div>
					</div>
					<div id="footerbtn">
						<button id="mybtn"
							onclick="location.href='bookmark.com?cm_seq=${list.cm_seq}'">찜</button>
						<button id="chatbtn"
							onclick="location.href='chat.com?cm_seq=${list.cm_seq}'">✉채팅</button>
						<button id="buybtn"
							onclick="location.href='buypage.com?cm_seq=${list.cm_seq}'">✔구매신청</button>
					</div>
				</div>
			</div>
			<div class="description">
				<strong id="product">상품정보</strong>
				<div>${list.cm_desc}</div>
			</div>
			<script type="text/javascript" src="assets/JS/home.js"></script>
			<script type="text/javascript" src="assets/JS/viewWriting.js"></script>
		</div>
		<!-- 컨테이너 바디 -->

	</div>
	<!-- 올컨테이너  -->



</body>

</html>