<%@page import="kr.aranea.entity.T_Commodity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	border: 0;
	outline: 0;
	vertical-align: baseline;
}

ul, li, ol, dl, dd, dt {
	list-style: none;
}

img, video {
	vertical-align: top;
	border: 0;
}

input, select, textarea, button {
	font: inherit;
	color: inherit;
	vertical-align: middle;
	border-radius: 0;
}

a, a:hover, a:focus {
	text-decoration: none;
	color: inherit;
}

address {
	font-style: normal;
}

table {
	border-collapse: collapse;
}

.container {
	display: flex;
	justify-content: center;
}

.body {
	margin-left: 37%;
	margin-right: 35%;
	border: 1px solid black;
	justify-content: center;
	width: 500px;
	height: 300px;
}

.header {
	width: 100%;
	padding: 100px;
}

</style>
<%
	T_Commodity list = (T_Commodity)request.getAttribute("list");
	request.setAttribute("list", list);
%>
<body>
	<div class="header">
		<div class="container">
			<div class="logo">
				<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
					src="images/ARANEALOG2.png" width="300px" height="90px">
				</a>
			</div>
		</div>
	</div>

	<div class="body">
		<h3 style="display: flex; justify-content: center; margin-top: 50px;padding: 50px;">
			 스파이더맨 매칭을 선택 해주세요
		</h3>

  
  <button class="btn btn-primary"style="background-color: white; border:2px solid rgb(187,7,11); width: 35%; height: 50px; align-items: center;
  margin-left:11%;" onclick="location.href='needSpider.com?cm_seq=${list.cm_seq}'">
  스파이더맨 신청하기
  </button>
   <button class="btn btn-primary"style="background-color: white; border:2px solid rgb(187,7,11); width: 35%; height: 50px; align-items: center;
  margin-left:8%;">
  <a href="gomain.com" >
  홈페이지로 돌아가기
  </button>

	</div>


</body>
</html>
