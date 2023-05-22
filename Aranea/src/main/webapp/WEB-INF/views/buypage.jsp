<%@page import="kr.aranea.entity.T_Location"%>
<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="kr.aranea.entity.T_User"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/buypage.css">
<script type="text/javascript" src="assets/JS/home.js"></script>

</head>
<style>
.container {
	width: 1920px;
	height: 900px;
}

.payment {
	padding: 30px;
	width: 100%;
	height: 980px;
	margin-left: 30px;
}

.payment1 {
	position: relative;
	padding-bottom: 50px;
	box-sizing: border-box;
	line-height: 1.5;
	overflow: scroll;
	width: 100%;
	height: 100%;
}

.paymenthead {
	position: relative;
	flex-shrink: 0;
	flex-basis: 3.125rem;
	line-height: 3.125rem;
	font-weight: bold;
	color: rgb(30, 29, 41);
	border-bottom: 10px solid rgb(187, 7, 11);
	z-index: 1;
}

.containerbody {
	
}

.paymentheader {
	width: 100%;
	background-color: white;
}

.Generalpayment {
	display: flex;
}

.Generalpayment>div {
	display: flex;
	width: calc(( 100% - 60px)- 16px);
}

.pay {
	width: auto;
	height: auto;
	margin-left: 8.8%;
}

.paybutton {
	width: 241.19px;
	height: 50px;
	background-color: white;
	border: 1px solid rgb(187, 7, 11);
}

.paytext {
	margin-left: 17.5%;
	margin-top: 35px;
	margin-bottom: 35px;
	border: 2px solid rgb(187, 7, 11);
}

.Point {
	padding: 30px;
}

.paytext>div:not(:first-child) {
	display: none;
}

.money {
	padding: 30px 20px;
	border: 1px solid rgb(229, 229, 229);
	border-radius: 5px;
	font-size: 1rem;
}

.money>div {
	display: flex;
}

.money1 {
	flex-direction: column;
	box-sizing: border-box;
	font-family: Pretendard, "Noto Sans KR", -apple-system,
		BlinkMacSystemFont, "Helvetica Neue", Arial, sans-serif;
	font-weight: normal;
	color: rgb(30, 29, 41);
	outline: 0px;
}
</style>
<body>
	<%
	T_Commodity list = (T_Commodity)request.getAttribute("list");
	request.setAttribute("list", list);
	
    T_User user = (T_User) session.getAttribute("user");

%>


	<div class="container">
		<div class="containerbody">


			<div class="payment">

				<section class="paymentheader">
					<div class="paymenthead">

						<div class="paymentheadbody">
							<div>
								<!--  이전화면  -->
								<a href="gomain.com"> <img alt="" src="images/화살표.png"
									width="30" height="30"></a>
							</div>



							<div style="display: flex; width: 300; height: 300;">


								<img
									src="http://211.228.63.186:8081/Aranea/file/${list.cm_img1} "
									width="300" height="300">
									<div style="width: 100%; margin-left: 20px;">
											<div class="title" style="height:10%;"><h1> ${list.cm_name}</h1></div><br>
										<div class="price "style="height:10%;"><h1>${list.cm_price}원</h1></div>
									</div>
							</div>

						</div>







					</div>

				</section>
				<div class="payment1">
					<!--결제내용  -->
					<br> <br>
					<h4>결제 수단</h4>
					<br>
					<div class="Generalpayment"></div>
					<div class="paybtn">
						<div class="pay">
							<button class="paybutton" id="tossbutton">토스페이</button>
							<button class="paybutton" id="kakaobutton">카카오페이</button>
							<button class="paybutton" id="phonebutton">휴대폰결제</button>

						</div>

						<div class="paytext" style="width: 583px; height: 257px">

							<div class="payevent" id="toss">
								<div>
									• 토스페이로 10만원 이상 결제 시 3,000원 무제한 즉시할인 번개케어상품 최대 3만원 할인 <br>
									• 번개케어 대상 상품을 토스페이로 50/100만 원 이상 결제 시 2/3만원 즉시할인 생애 첫 결제 <br>
									• 토스페이 3만 원 이상 결제 즉시 3천 원 캐시백 • 토스페이 생애 첫 결제 유저 대상 기간내 1회 지급 <br>
									• 현금영수증은 토스페이에서 발급 가능
								</div>
							</div>
							<div class="payevent" id="kakao">
								<div>카카오페이페이</div>
								<div>카카오페에피에피에피에피에페이</div>
							</div>
							<div class="payevent" id="phone">
								<div>핸드폰결제</div>
								<div>결제결제핸드폰결제</div>
							</div>
						</div>
						<!--결제수단  -->


						<div class="Point" style="border-top: 1px solid lightgray;">


							<!-- 아라냐 포인트 -->
							<div>
								<h4>아라냐포인트</h4>
							</div>
							<div>

								<input type="number" inputmode="numeric" placeholder="0"
									class="Text__Input-sc-aev30u-1 gysZwV UsePoint__Text-sc-1n4ffxr-0 hCMKfo">

								<button>

									<div>전액사용</div>
								</button>
							</div>

						</div>
						<!-- 아라냐 포인트 -->

						<div class="amount"
							style="border-top: 10px solid rgb(187, 7, 11); margin-bottom: 20px;">
							<div style="margin-top: 20px;">
								<h4>결제 금액</h4>
							</div>
							<div class="money1">
								<div class="money"
									style="border: 1px solid lightgray; margin-top: 20px;">
									<div
										style="display: flex; justify-content: space-between; margin-bottom: 5px;">
										<div style="color: rgb(127, 127, 127)">상품금액</div>
										<strong style="font-weight: 700;"> 5000만원</strong>

									</div>
									<div
										style="display: flex; justify-content: space-between; margin-bottom: 5px;">
										<div style="color: rgb(127, 127, 127)">포인트 사용</div>
										<strong style="font-weight: 700;"> 5000만원</strong>

									</div>

									<div
										style="display: flex; justify-content: space-between; margin-bottom: 5px; border-top: 2px solid lightgray; margin-top: 20px;">


										<div style="font-weight: bold; margin-top: 20px;">
											<h4>결제금액</h4>
										</div>




										<strong
											style="font-weight: 700; margin-top: 20px; font-size: 20px; color: rgb(216, 12, 24);">
											5000만원${list.cm_price} 이거랑 ${user.getUser_point()} 이거  뺴야되는데 포인트가안나오넹 ㅋ </strong>
									</div>

								</div>
							</div>
						</div>
						<!--결제금액 -->
						<a href="gomatching.com">
							<button class="btn btn-primary"
								style="background-color: red; border: red; width: 50%; height: 70px; align-items: center; margin-left: 25%;">결제하기</button>
						</a>

					</div>

				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


	<script>
		$(document).ready(function() {
			$('.paybutton').click(function() {
				var id = $(this).attr('id');
				$('.payevent').hide();
				$('#' + id.substring(0, id.length - 6)).show();
			});
		});
		
<%-- 		 var cmPrice = <%=list.cm_price%>; // list.cm_price 값 가져오기
		  var userPoint = <%=user.getUser_point()%>; // user.getUser_point() 값 가져오기
		  
		  var result = cmPrice - userPoint; // 두 값의 차 계산
		  
 --%>	
	</script>


</body>

</body>
</html>