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

		List<T_Chat> list2 = (List<T_Chat>) request.getAttribute("list2");
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

									<a class="menu button1" href="#"> <img alt="스파이더맨 신청 로고"
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
					<div class="profile-buttons">
						<div class="profile-buttons">
						<div class="bttn">
							<form method="get" action="https://testapi.openbanking.or.kr/oauth/2.0/authorize">
							  <input type="hidden" name="response_type" value="code"/>
							  <input type="hidden" name="client_id" value="c68bcbdd-fd89-40a9-95a7-b0c73e070208"/>
							  <input type="hidden" name="redirect_uri" value="https://openapi.openbanking.or.kr/v2.0/transfer/deposit/acnt_num"/>
							  <input type="hidden" name="scope" value="login inquiry transfer"/>
							  <input type="hidden" name="state" value="b80BLsfigm9OokPTjy03elbJqRHOfGSY"/>
							  <input type="hidden" name="auth_type" value="0"/>
							  <button>입금</button>
							  
							</form>
						</div>
						<div class="bttn">
							<form method="get" action="https://testapi.openbanking.or.kr/oauth/2.0/authorize">
							  <input type="hidden" name="response_type" value="code"/>
							  <input type="hidden" name="client_id" value="c68bcbdd-fd89-40a9-95a7-b0c73e070208"/>
							  <input type="hidden" name="redirect_uri" value="https://openapi.openbanking.or.kr/v2.0/transfer/deposit/acnt_num"/>
							  <input type="hidden" name="scope" value="login inquiry transfer"/>
							  <input type="hidden" name="state" value="b80BLsfigm9OokPTjy03elbJqRHOfGSY"/>
							  <input type="hidden" name="auth_type" value="0"/>
							  <button>출금</button>
							</form>
						</div>
					</div>
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
	<script type="text/javascript">
	// 사이즈 지정해서 열기
	function open(){
	  window.open("https://twww.openbanking.or.kr/apt/mobileweb/authorizeNewGW?sessionID=b73738f8-9329-4983-b99c-681b6dad8495&action=Grant&api_tran_id=5c031e8d-92df-4e38-850c-0af25ae80655&gw_svc_id=faf66bd6cafdf009a37caaac77ba5194&gw_app_key=c68bcbdd-fd89-40a9-95a7-b0c73e070208&response_type=code&client_id=c68bcbdd-fd89-40a9-95a7-b0c73e070208&client_info=&redirect_uri=https://openapi.openbanking.or.kr/v2.0/transfer/deposit/acnt_num&scope=login+inquiry+transfer&auth_type=0&lang=kor&state=b80BLsfigm9OokPTjy03elbJqRHOfGSY"
			  , "_blank", "width=500, height=500");
	}
	</script>
</body>
</html>