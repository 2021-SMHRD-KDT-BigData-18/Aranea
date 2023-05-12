<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
	<div class="logo">
		<a class="logoimg" href="gomain.com"> 
		<img alt="아라냐 로고" src="images/logoimg.png" width="300" height="60">
		</a>
	</div>
  <h2>아이디 찾기</h2>
  <form action="searchIdSuccess.com" method="post">
    <div class="form-group">
      <label for="usr">닉네임</label>
      <input type="text" class="form-control" id="usr" name="user_name">
    </div>
    <div class="form-group">
      <label for="pwd">전화번호</label>
      <input type="text" class="form-control" id="tel" name="user_phone">
    </div>
    <button type="submit" class="btn btn-primary">완료</button>
  </form>
</div>

</body>
</html>
