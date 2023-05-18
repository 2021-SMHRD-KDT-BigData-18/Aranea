<%@page import="kr.aranea.entity.T_Commodity"%>
<%@page import="kr.aranea.entity.T_User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="assets/css/viewWriting.css">
<link rel="stylesheet" href="assets/css/home.css">
</head>

<style>
 .imglist {
    display: flex;
    justify-content: center;
    align-items: center;
    float:left;
    margin-right: 3%;
  }
  .imglist{
  margin-top:2%;
  margin-left: 2%;
  }

  .imglist img {
    width: 500px; /* 원하는 너비 값으로 설정하세요 */
    height: 500px; /* 원하는 높이 값으로 설정하세요 */
    object-fit: cover; /* 이미지를 컨테이너에 맞게 조정 */
    margin-right: 10px; /* 이미지 사이에 간격을 추가 */

  }
  .
  #board{
  width: 100%;
  height: 100%;
  paddin-top:30px;
  
  }
 
  
  ul{
  margin-bottom: 10%;
  
  }
  .writetitle{
  width:500px;
  height:500px;
  margin-top: 2%;
  margin-left:50%;
  background-color: white;
  border: 2px solid crimson;
  border-radius:5%;
  
  }
  .container{
  height: 100%;
  }
  .description{
  margin-top: 2%;
  margin-left:2%;
  margin-right:5%;
  border-top:2px dashed crimson;
  border-bottom:2px dashed crimson;
  
  }
  
</style>

<body>
   <%
   T_User user = (T_User) session.getAttribute("user");
%>

   <div class="container">
      <div class="header">
         <div class="rose">
            <div class="create">
               <%
               if (user == null) {
               %>
               <a class="login" href="login.com">로그인/회원가입</a>
               <%
               } else {
               %>
               <%=user.getUser_name()%>님, 환영합니다! ｜<a href="addressSet.com">동네설정
                  ｜</a> <a href="logout.com">로그아웃</a>
               <%
               }
               %>
            </div>
         </div>
      </div>

      <div class="nav">
         <div class="dav">
            <div class="rav">
               <div class="logo">
                  <a class="logoimg" href="gomain.com"> <img alt="아라냐 로고"
                     src="images/araneaLogo.png" width="136px" height="40px">
                  </a>
               </div>

               <div class="search_input">
                  <div class="search">
                     <input type="text" placeholder="상품명, 지역명, @상점명 입력"
                        class="inputTag"> <a class="searchBtn"> <img
                        alt="검색버튼 아이콘" src="images/searchbtn.jpg" width="20" height="20">
                     </a>
                  </div>
               </div>

               <div class="twopack">
                  <a class="menu button" href="goWrite.com"> <img alt="판매하기 로고"
                     src="images/seller.png" width="23" height="26"> 판매하기
                  </a> <a class="menu button" href="goMypage.com"> <img alt="내상점 로고"
                     src="images/mystore.png" width="23" height="24"> 내 상점
                  </a> <a class="menu button" href="goSpiderman.com"> <img
                     alt="스파이더맨 신청 로고" src="images/mystore.png" width="23" height="24">
                     스파이더맨 신청
                  </a>
                  
               </div>
            </div>
            <br>
            <div class="side">

					<div class="category">
						<a><img alt="메뉴버튼" src="images/category.png" width="35"
							height="35">카테고리</a>
						<ul class="categorybtn">
							<table>
								<tr bgcolor="white">
									<td>
										<li><a href="category.com?cm_category=남성복">남성복</a></li>
										<li><a href="category.com?cm_category=여성복">여성복</a></li>
										<li><a href="category.com?cm_category=디지털기기">디지털기기</a></li>
										<li><a href="category.com?cm_category=생활가전">생활가전</a></li>
										<li><a href="category.com?cm_category=가구/인테리어">가구/인테리어</a></li>
										<li><a href="category.com?cm_category=뷰티/미용">뷰티/미용</a></li>
										<li><a href="category.com?cm_category=스포츠/레저">스포츠/레저</a></li>
										<li><a href="category.com?cm_category=도서">도서</a></li>
										<li><a href="category.com?cm_category=티켓/상품권">티켓/상품권</a></li>
										<li><a href="category.com?cm_category=반려동물용품">반려동물용품</a></li>
									</td>
								</tr>
							</table>
						</ul>
					</div>
				</div>
			</div>


      </div>
      
   <!--    <div class="cardWrap">

         for each문 써야함

         여기까지 for each문

      </div> -->

      <script type="text/javascript" src="assets/JS/home.js"></script>
      <div id="board">
                     <table id="list">
         
            
                           <div class="realimglist">
                                 <div class="imglist">
                                 <img id=imglist1 src="http://211.228.63.186:8081/Aranea/file/${list.cm_img1}">
                                 <img id=imglist2 src="http://211.228.63.186:8081/Aranea/file/${list.cm_img2}">
                                 <img id=imglist3 src="http://211.228.63.186:8081/Aranea/file/${list.cm_img3}">
                                 </div>
               
                           </div>
               
                     </table>
            
            
                        <div class="writetitle">   <!-- 글씨  -->
                           
            
                              <ul>
                                 <li>◾ 제목</li>
                                 <br>
                                 <li>${list.cm_name }</li>
                                 
                                 <li>◾ 판매자</li><br>
                                 <li>${list.user_name }</li><br>
                              
                                 </li>◾ 가격</li><br>
                                 </li>${list.cm_price}</li><br>
                              </ul>
            
                              <tr>
                                 <td>◾ 카테고리</td><br>
                                 <td>${list.cm_category }</td><br>
                              </tr>
                              <tr>
                                 <td>◾ 거래지역</td><br>
                                 <td>${select.loc_name}</td><br>
                              </tr>
                              <tr>
                                 <td>◾ 상태(중고상품/새상품)</td><br>
                                 <td>${list.cm_status}</td><br>
                              </tr>
                              
                              <tr>
                                 <td colspan="2">
                                    <button id="mybtn">❤찜</button>
                                    <button id="chatbtn">✉채팅</button>
                                    <button id="buybtn">✔구매신청</button> <br> <br> <a
                                    href="gomain.com"><button>
                                          홈으로<br>돌아가기
                                       </button></a>
                                 </td>
                              </tr>
                     </div>
      </div>
                     <div class="description">
                             <ul>
                              <li>설명</li>
                              <li>${list.cm_desc}</li>
                              </ul>
                              
                             
                             
                     </div>
      <script type="text/javascript" src="assets/JS/home.js"></script>
      
      
      
      <script>
      $(document).ready(function() {
            $(".category>a").click(function() {
                  $(this).next("ul").toggleClass("categorybtn");
               });
            });</script>




<script>
            
  $(document).ready(function() {
    var currentImg = 1;
    var totalImgs = 3;

    function showImage(index) {
      $(".imglist img").hide(); // Hide all images
      $("#imglist" + index).show(); // Show the selected image
    }

    // Function to change to the next image
    function nextImage() {
      currentImg++;
      if (currentImg > totalImgs) {
        currentImg = 1;
      }
      showImage(currentImg);
    }

    // Set an interval to automatically switch images every 3 seconds
    var interval = setInterval(nextImage, 2000);

    // Stop the slideshow when the mouse is over the image
    $(".imglist img").hover(
      function() {
        clearInterval(interval);
      },
      function() {
        interval = setInterval(nextImage, 2000);
      }
    );

    // Initially show the first image
    showImage(currentImg);
  });
</script></body>
</html>