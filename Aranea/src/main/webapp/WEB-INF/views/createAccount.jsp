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
               <img alt="아라냐 로고" src="../araneaLogo.png" width="300px" height="150px">
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

      <input type="text" class="form-control" name="user_id" id="user_idcheck">
      <p id="idresult"> </p><!-- 아이디 중복체크  -->
    </div>
    
    <div class="form-group">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" name="user_pw">
    </div>
    
    <div class="form-group">
      <label for="nm">닉네임</label>
      <input type="text" class="form-control" name="user_name" id="user_namecheck">
      <p id="nameresult"> </p><!-- 닉네임 중복체크  -->
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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script type="text/javascript">
			
				$(document).ready(function(){
					
					// 이메일 중복체크 기능
					// 사용자가 input태그에 입력했을 때 실행
					var input = $('#user_idcheck');
				
					// 바뀌는 이벤트
					// change : 값이 변경되면 입력과 동시 X
					// input : 값이 입력되면 
					input.on("input", user_idCheck);
					
					
				});
				
				// 함수이름(emailCheck)와 각 태그의 id 이름이 같으면 함수가 인식을 못해서 오류!!
				function user_idCheck(){
					
					// input에 입력된 값이 DB에 있는지 확인
					// select * from member where email = \#{email}
					// input에 입력된 값
					// this : 이벤트 대상
					var value = $(this).val();
					console.log(value);
					
					// check.do라고 요청(CheckCon)
					// Post 방식
					// 입력받은 값을 가지고
					// 비동기통신(ajax) 방식
				
				
				$.ajax({
					url : 'check.com',
					type : 'post',
					data : {
						"user_id" : value
					},
					success : function(res){
						console.log(res);
						
						// 만약 사용가능하다면
						// p태그 안에 사용가능한 이메일입니다.
						var p = $('#idresult');
						
						if(res == "true"){
							// 사용가능한 아이디입니다.
							p.html('사용이 가능한 이메일 입니다.');
							p.css("color", "green"); // css("style 이름", "값")
						}else {
							// 사용 불가능한 아이디입니다.
							p.html("사용이 불가능한 아이디 입니다.").css("color", "red");
						}
						
					},
					error : function(e){
						alert("요청 실패");
					}
				});
			}
				

				$(document).ready(function(){
					
					// 이메일 중복체크 기능
					// 사용자가 input태그에 입력했을 때 실행
					var input = $('#user_namecheck');

					// 바뀌는 이벤트
					// change : 값이 변경되면 입력과 동시 X
					// input : 값이 입력되면 
					input.on("input", user_nameCheck);
					
					
				});

				// 함수이름(emailCheck)와 각 태그의 id 이름이 같으면 함수가 인식을 못해서 오류!!
				function user_nameCheck(){
					
					// input에 입력된 값이 DB에 있는지 확인
					// select * from member where email = \#{email}
					// input에 입력된 값
					// this : 이벤트 대상
					var value = $(this).val();
					console.log(value);
					
					// check.do라고 요청(CheckCon)
					// Post 방식
					// 입력받은 값을 가지고
					// 비동기통신(ajax) 방식


				$.ajax({
					url : 'check1.com',
					type : 'post',
					data : {
						"user_name" : value
					},
					success : function(res){
						console.log(res);
						
						// 만약 사용가능하다면
						// p태그 안에 사용가능한 이메일입니다.
						var p = $('#nameresult');
						
						if(res == "true"){
							// 사용가능한 아이디입니다.
							p.html('사용이 가능한 닉네임 입니다.');
							p.css("color", "green"); // css("style 이름", "값")
						}else {
							// 사용 불가능한 아이디입니다.
							p.html("사용이 불가능한 닉네임 입니다.").css("color", "red");
						}
						
					},
					error : function(e){
						alert("요청 실패");
					}
				});
				}
				
			</script>







</body>
</html>