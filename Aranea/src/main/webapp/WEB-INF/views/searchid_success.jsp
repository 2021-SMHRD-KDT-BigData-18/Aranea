<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="assets/css/searchid_success.css">
</head>
<body>

	<div class="header">
        <div class="container">
      
          <div class="logo">
             <a class="logoimg" href="gomain.com">
               <img alt="아라냐 로고" src="images/AraneaLogo.PNG" width="300px" height="150px">
            </a>
          </div>
		</div>
      </div>
	 <%
	T_User user = (T_User)session.getAttribute("user");
%> 

	<div id="wrapper">
			<form action="gomain.com" method="post">
		<nav id="Update">
			<li id="banner">
				 <%=user.getUser_name() %>님의 아이디는 <%=user.getUser_id() %>
				입니다.</li>
			<ul class="actions vertical">
				<!-- DB에 저장된 회원정보 중 아이디를 출력하시오. -->
				<!-- window.location.href='다음페이지' -->
				<ul class="loginok">
					
					<br><br><br><br>
					<button type="submit" class="btn btn-primary">로그인하러가기가기</button>
					<br></ul>

			</ul>
		</nav>
			</form>
	</div>
</body>
</html>