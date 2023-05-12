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
	T_User user = (T_User) session.getAttribute("user");
	%>

	<%if(user == null){ %>
		<a href="login.com">로그인하러 가기</a>
	<%}else { %>
	<div class="spiderman">
		<a class="logoimg" href="gomain.com"> 
			<img alt="아라냐 로고" src="images/araneaLogo.png" width="200px" height="65px">
		</a>
	</div>
	<%} %>
</body>
</html>