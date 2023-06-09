<%@page import="kr.aranea.entity.T_User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aranea 스파이더맨 신청</title>
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
<link rel="stylesheet" href="assets/css/spiderman.css">
</head>
<body>
	<%
	T_User user = (T_User) session.getAttribute("user");
	%>

	<%
	if (user == null) {
	%>
	<a href="login.com">로그인하러 가기</a>
	<%
	} else {
	%>
	<div class="container">
		<div class="header">

			<div class="logo">
				<a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
					src="images/ARANEALOG2.png" width="300px" height="90px">
				</a>
			</div>

		</div>


		<div class="body">
			<br>
			<h2>스파이더맨 신청</h2>
			<form action="spidermanSuccess.com" method="post">
				<div class="form-group">
					<label for="usr">이름</label> <input type="text" class="form-control"
						id="name-input" name="user_name">
				</div>

				<div class="form-group">
					<label for="tel">전화번호</label> <input type="text"
						class="form-control" id="phone-input" name="user_phone">
				</div>

				<div class="form-group">
					<label for="act">계좌번호</label> <input type="text"
						class="form-control" id="account-input" name="user_v_account">
				</div>

				<li class="checkBox check03">
					<ul class="clearfix">
						<li>Aranea 스파이더맨에 대한 안내(필수)</li>
						<li class="checkBtn"><input type="checkbox"
							id="agree-checkbox" name="chk"></li>
					</ul> <textarea class="no-resize" readonly>여러분을 환영합니다.
Aranea 스파이더맨은 불안하기만한 중거거래에 있어서 보다 더 안전하고 확실한 거래를 하기위해 만들어진 '검수자'역할 입니다. 스파이더맨이 됨으로써 전보다 더 나은 중고거래문화를 만들어 나가길 바라며 스파이더맨이 되고나면 올바른 중고거래문화를 만들어나가는대 앞장서서 노력해주시길 바랍니다.
       </textarea>
				</li>
				<button type="submit" class="btn btn-primary" id="submit-button"
					disabled onclick="alert('  신청완료! \n\n  스파이더맨 승인은 일정시간 소요됩니다');">신청
					완료</button>
			</form>
		</div>
	</div>

	<script>
		const nameInput = document.getElementById('name-input');
		const phoneInput = document.getElementById('phone-input');
		const accountInput = document.getElementById('account-input');
		const agreeCheckbox = document.getElementById('agree-checkbox');
		const submitButton = document.getElementById('submit-button');

		nameInput.addEventListener('input', toggleSubmitButton);
		phoneInput.addEventListener('input', toggleSubmitButton);
		accountInput.addEventListener('input', toggleSubmitButton);
		agreeCheckbox.addEventListener('change', toggleSubmitButton);

		function toggleSubmitButton() {
			if (nameInput.value.trim() !== '' && phoneInput.value.trim() !== ''
					&& accountInput.value.trim() !== ''
					&& agreeCheckbox.checked) {
				submitButton.disabled = false;
			} else {
				submitButton.disabled = true;
			}
		}
	</script>
	<%
	}
	%>
</body>
</html>