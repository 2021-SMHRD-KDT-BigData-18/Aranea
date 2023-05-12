<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	T_User user = (T_User)session.getAttribute("user");
%>
	<div id="wrapper">
			<form action="searchIdSuccess.com" method="post">
		<nav id="Update">
			<ul class="actions vertical">
				<!-- DB에 저장된 회원정보 중 아이디를 출력하시오. -->
				<li><%=user.getUser_name() %>님의 아이디는 <%=user.getUser_id() %>입니다.</li>
				<!-- window.location.href='다음페이지' -->
				<li><a href="login.com">로그인하기</a></li>
			</ul>
		</nav>
			</form>
	</div>
</body>
</html>