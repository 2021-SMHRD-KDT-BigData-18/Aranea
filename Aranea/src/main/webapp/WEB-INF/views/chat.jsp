<%@page import="kr.aranea.entity.T_Dealing"%>
<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="java.util.List"%>
<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./assets/css/chat.css">
<title>Insert title here</title>
</head>
<body>
	<%
	T_User user = (T_User) session.getAttribute("user");

	T_Commodity list = (T_Commodity) request.getAttribute("list");
	request.setAttribute("list", list);
	%>

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


		<!-- 채팅 div -->
		<div id="chatting">
			<div id="chatWrap">
				<div id="chatHeader">채팅</div>

				<input type="hidden" value="${user.getUser_name()}" id='chat_id'>
				<input type="hidden" value="${list.getUser_name()}" id='chat_name'>

				<div id="chatLog">
				
				</div>

				<input id="inputMessage" class="send_btn" type="text"
					autocomplete="off" size="30" onkeyup="enterkey()"
					placeholder="메시지를 입력하세요"> <input class="send_btn"
					type="submit" value="send" onclick="send()">


			</div>
		</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

	<script type="text/javascript">
		var textarea = document.getElementById("chatLog");
		var path = "ws://121.147.185.89:8081/Aranea_사본/broadcasting/";

		if ('${list.getUser_id()}' != null) {
			path += '${user.getUser_id()}' + '!' + '${list.getUser_id()}';
		} /*else if ('${user.getUser_id()}' == '111') {
			path += '123';
		}*/
		var webSocket = new WebSocket(path);
		var inputMessage = document.getElementById('inputMessage');
		webSocket.onerror = function(event) {
			onError(event)
		};
		webSocket.onopen = function(event) {
			onOpen(event)
		};
		webSocket.onmessage = function(event) {
			onMessage(event)
		};
		function onMessage(event) {
			var message = event.data.split(",!,");
			console.log(event.data);
			var buyer_name = message[0];
			var buyer_id = message[1];
	        var chat_content = message[2];
	        var seller_name = message[3];
	        var seller_id = message[4];
			if (chat_content == "") {

			} else {
				if (chat_content.match("/")) {
					if (chat_content.match(("/" + $("#chat_id").val()))) {
						var temp = chat_content.replace("/" + $("#chat_id").val(),
								"(귓속말) :").split(":");
						if (temp[1].trim() == "") {
						} else {
							$("#chatLog").html(
									$("#chatLog").html()
											+ "<p class='whisper'>"
											+ seller_name
											+ chat_content.replace("/"
													+ $("#chat_id").val(),
													"(귓속말) :") + "</p>");
						}
					} else {
					}
				} else {
					if (buyer_name == '${user.getUser_name()}') {
						$("#chatLog")
								.html(
										$("#chatLog").html()
												+ "<p class='myMsg'><b class='impress'>"
												+ chat_content
												+ "</b></p>");
					} else {
						$("#chatLog").html(
								$("#chatLog").html() + "<p class='anotherMsg'><span class='anotherName'>"
										+ seller_name +"님"+ "<br><b class='msg'>" + chat_content + "</b></p>");
					}
				}
			}
		};

		function onOpen(event) {
			/*    $("#messageWindow")
			            .html("<p class='chat_content'>채팅에 참여하였습니다.</p>");
			 */};

		function onError(event) {
			alert(event.data);
		};
		function send() {
			if (inputMessage.value == "") {
				/*$("#chatLog").html(
				        $("#chatLog").html()
				                + "<p class='chat_content'>${user.getUser_name()} : "
				                + inputMessage.value
				                + "</p>");*/
			} else {
				/*$("#chatLog").html(
				        $("#chatLog").html()
				                + "<p class='chat_content'>${user.getUser_name()} : "
				                + inputMessage.value
				                + "</p>");*/
				webSocket.send('${user.getUser_name()}' + ",!," + '${user.getUser_id()}' + ",!," + inputMessage.value 
						+ ",!," + '${list.getUser_name()}'  + ",!," + '${list.getUser_id()}'
						+ ",!," + '${user.getUser_name()}' + ",!," + '${list.getUser_name()}');
			}
			inputMessage.value = "";
		};
		//     엔터키를 통해 send함
		function enterkey() {
			if (window.event.keyCode == 13) {
				send();
			}
		};
		//     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
		window.setInterval(function() {
			var elem = document.getElementById('chatLog');
			elem.scrollTop = elem.scrollHeight;
		}, 0);
	</script>
</body>
</html>