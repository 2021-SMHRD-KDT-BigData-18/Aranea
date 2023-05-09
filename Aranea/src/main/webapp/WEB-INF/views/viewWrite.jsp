<%@page import="kr.aranea.entity.Writing"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div id = "board">
				<table id="list">
					<tr>
						<td>상품이미지</td>
						<img src="file/${list.img1}">
						<img src="file/${list.img2}">
						<img src="file/${list.img3}">
					</tr>
					<tr>
						<td>제목</td>
						<td>${list.title }</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td>${list.category }</td>
					</tr>
					<tr>
						<td>거래지역</td>
						<td>${list.address }</td>
					</tr>
					<tr>
						<td>상태(중고상품/새상품)</td>
						<td>${list.condition }</td>
					</tr>
					<tr>
						<td>가격</td>
						<td>${list.price }</td>
					</tr>
					<tr>
						<td>설명</td>
						<td>${list.content }</td>
					</tr>
					<tr>
						<td>수량</td>
						<td>${list.counts }</td>
					</tr>
					<tr>
						<td colspan="2"><a href="gomain.com"><button>홈으로 돌아가기</button></a></td>
					</tr>
				</table>
	</div>
</body>
</html>