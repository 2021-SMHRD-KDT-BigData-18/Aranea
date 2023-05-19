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
 <link rel="stylesheet" href="assets/css/createAccount.css">
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


      <div class="body">

   
   <br>
  <h2>회원가입 화면</h2>
  <form action="createAccount.com">
    <div class="form-group">
            <label for="usr">아이디</label>

      <input type="text" class="form-control" name="user_id">
    </div>
    
    <div class="form-group">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" name="user_pw">
    </div>
    
    <div class="form-group">
      <label for="nm">닉네임</label>
      <input type="text" class="form-control" name="user_name">
    </div>
    
    <div class="form-group">
      <label for="tel">전화번호</label>
      <input type="text" class="form-control" name="user_phone">
    </div>
    
    <div class="form-group">
      <label for="act">계좌번호</label>
      <input type="text" class="form-control" name="user_v_account">
    </div>
    <button type="submit" class="btn btn-primary">회원가입 완료</button>
  </form>
</div>



</body>
</html>