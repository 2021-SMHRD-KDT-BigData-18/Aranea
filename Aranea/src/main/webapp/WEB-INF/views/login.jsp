<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href=".assets/css/write.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./assets/css/login.css">
</head>
<body>
<div class="header">
<div class="container">
     <div class="logo">
      <a class="logoimg" href="gomain.com"> 
      <img alt="아라냐 로고" src="images/AraneaLogo.PNG" width="200px" height="65px">
      </a>
   </div>
   </div>
   <br>
   <div class="body">
  <h2>로그인 화면</h2>
  <form action="loginSuccess.com" method="post">
    <div class="form-group">
      <label for="usr">아이디:</label>
      <input type="text" class="form-control" id="usr" name="user_id" placeholder="아이디 입력">
    </div>
    <div class="form-group">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" name="user_pw" placeholder="비밀번호 입력">
    </div>
    <button type="submit" class="btn btn-primary">로그인</button><br>
    <ul>
    <li><a class="searchid" href="searchId.com">아이디 찾기</a></li>
    <li>｜</li>
    <li><a class="searchpw" href="searchPw.com">비밀번호 변경</a></li>
    <li>｜</li>
    <li><a class="account" href="join.com">회원가입</a></li>
    </ul>
  </form>
</div>

   </div>
</body>
</html>
    