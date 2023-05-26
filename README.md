# 아라냐(Aranea) 

## 팀명 : 스파이더맨
## 👀서비스 소개
 <li>서비스명 : 안전하고 품질 확인이 가능한 중고거래 웹 서비스</li>
 <li>서비스 설명 : 기존 중고 플랫폼과는 다르게 '스파이더맨'이라는 검수자를 추가한 시스템이다.</li>
구매자와 판매자가 1:1 거래를 할 때 스파이더맨도 함께 거래에 참여하여 상품의 품질을 확인하고 안전한 분위기를 형성하는 역할을 담당한다.</li>

## 📅 프로젝트 기간
2023.05.10 ~ 2023.05.26 (2주 반)

## ⭐ 주요 기능

##  기술스택
|구분|내용|
|------|---|
|사용언어|<img src="https://user-images.githubusercontent.com/130940590/241094900-462f9dd5-900c-4d75-829a-32d09b7b38d6.png"> |
|라이브러리|<img src="https://user-images.githubusercontent.com/130940590/241096022-42acfffa-c7f3-49b6-823e-12d56a93f0bd.png">  |
|개발도구|<img src="https://user-images.githubusercontent.com/130940590/241096754-4356e85e-0328-4b49-89c4-3c22d994655d.png"> |
|서버환경|<img src="https://user-images.githubusercontent.com/130940590/241096925-e6a06e97-d198-491c-9baa-948a5f8f7d03.png"> |
|데이터베이스|<img src="https://user-images.githubusercontent.com/130940590/241097085-b713c90a-fb9f-4186-86b6-cf123934f729.png"> |
|협업도구|<img src="https://user-images.githubusercontent.com/130940590/241097188-9c213634-a8c0-4658-98d3-211b2b48e5cd.png"> |

## ⚙ 시스템 아키텍처(구조)

<img src="https://user-images.githubusercontent.com/130714531/241093670-22572e27-0de3-4d83-a78f-7b6a54eeff38.png">

<br>

## 📌 SW유스케이스

<br>

<img src="https://user-images.githubusercontent.com/130940590/241100079-6b94474f-91c2-4ead-95ee-cc82643f37e8.png">



<br>

## 📌 서비스 흐름도

<br>


<img src="https://user-images.githubusercontent.com/130940590/241100791-fb6b04a7-0e7e-453a-8776-2e98c24cbb14.png" width="1012px">




<br>

## 📌 ER다이어그램

<br>


<img src="https://user-images.githubusercontent.com/130940590/241101185-385eb45e-addb-4e68-ac50-83def93ea0af.png"  width="1012px">


## 🖥 화면 구성

<메인페이지>

<br>

<img src="https://user-images.githubusercontent.com/130940590/241101851-c66bcfdd-c92e-4acc-bbbe-5cfdccc0fb68.png" width="1012">

<br>

<카테고리 페이지>
<br>

<img src="https://user-images.githubusercontent.com/130940590/241102744-25442b91-6187-4397-86b1-62fe6d6b9c44.png" width="1012">

<br>

<웹화면 키워드 검색>

<br>

<img src="https://user-images.githubusercontent.com/130940590/241103083-a81070b6-ad74-4242-b585-387e4670a524.png" width="1012">

<br>

<웹화면 상품정보>

<br>

<img src="https://user-images.githubusercontent.com/130940590/241103373-fb6a7562-3155-4fd9-870e-db005a13fd94.png"  width="1012">

<br>

<판매글작성>

<br>

<img src="https://user-images.githubusercontent.com/130940590/241104480-8c39cc4f-ecee-4286-ab0c-3410eab2eec9.png" width = "1012">

<br>

<스파이더맨 매칭>

<br>

<img src="https://user-images.githubusercontent.com/130940590/241104657-123f87af-71a2-45f0-a53f-984417398be9.png"  width="1012">

<br>


<스파이더맨 신청>

<br>

![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/f7414af0-3a6f-4628-a03c-186ef683723e)

<br>


<내정보>

<br>

![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/4df338d1-4733-4074-b3a1-2d9f23ffe5b3)

<br>

<결제>

<br>

![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/1bb9ce73-a3dd-4fee-8bb1-ce78cdf258d0)

<br>

<구매신청>

<br>

![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/936771c6-dfc6-4dee-ba62-97e748af08b9)

<br>


<지도>

<br>


![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/063b83c4-e28f-4269-ad17-a5847a8b977f)


<br>

<채팅>

<br>

![image](https://github.com/2021-SMHRD-KDT-BigData-18/Aranea/assets/130940590/fddf9c57-09d6-4c0e-a5a1-ad1a971dd042)

<br>




## 🤾‍♂️ 트러블슈팅



트러블 슈팅
<li>지도 api</li>
카카오맵 api 중 'geolocation으로 마커 표시하기'와 '좌표로 주소를 얻어내기'를 사용하여
현재 위치를 기반으로 지도가 보여지고 원하는 위치에 좌표를 찍어 주소를 db에 저장하는 기능을 구현.

문제 1. JS에서 변수로 선언된 데이터들을 db에 저장하는 부분에서 어려움을 겪었다.

해결방안 1. 
<input type="text">로 코드를 작성하여 view 화면에 불필요한 데이터들이 출력되는 상황이 생겼다.
이를 해결하기 위해서 <input type="hidden">으로 변경 후 JS에서 각각의 input id에 값을 지정하여 문제 해결

해결방안 2. 
위도와 경도를 확인하기 위해서 '좌표로 주소를 얻어내기'의 .latlng를 각각 .getlat와 .getlng로 분리하여 db에 저장


문제 2. 거래지역을 설정 후 db에 저장된 지번 주소명을 사용자가 보는 view 화면에 출력하는 부분에서 어려움을 겪었다.

해결방안 1. 
<a href="javascript:openwindow();">로 함수를 선언한 후 JS에서 window.open으로 자식창을 생성.
자식창에서 지도 url을 띄우고 좌표가 찍힌 위치의 주소명을 부모창에서 확인할 수 있도록 $(opener.document).find()를 사용해 
부모창 p태그에 출력 



<li>웹소켓 실시간 채팅</li>
두 가지 api를 혼합하여 자바스크립트에서 위도와 경도, 지번 주소명을 db에 저장하려고 하였지만









##  🔨보완사항

## 👨‍👩‍👦‍👦 팀원 역할
|박현주|이경민|박상준|강태호|이예은|
|------|---|---|---|---|
|프로젝트 총괄|기능구현|프론트 총괄|JSP CSS 디자인|화면관리|
|BACKEND 코드구현|DB 설계/관리|JSP CSS 디자인|화면설계|PPT 자료준비|
|DB 데이터 관리|BACKEND 코드구현|화면설계|영상제작 및 발표|로고 및 아이콘 제작|
|[github](guswn100059@gmail.com)|[github](rudalswjdghk@gmail.com)|[github](epqlftkdcn@naver.com)|[github](rose4123@naver.com)|[github](yeeun1314@naver.com)|

