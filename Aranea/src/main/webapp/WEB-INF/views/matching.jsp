<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<style>
#container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 300px;
  height: 400px;
}

#text {
  position: absolute;
  top: 50px;
  left: 0;
  right: 0;
  text-align: center;
  font-size: 24px;
  color: #000;
}

#loader {
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 500px;
  height: 500px;
  border-radius: 50%;
  border-top-color: transparent;
  animation: rotate 10s linear infinite;
  overflow: hidden;
}

#loader img {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
  height: 100%;
  object-fit: cover;
}

#photo2 {
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%) scale(0);
  width: 500px;
  height: 500px;
  object-fit: cover;
  opacity: 0;
  transition: opacity 0.3s, transform 0.3s;
}

#photo2.show {
  opacity: 1;
  transform: translate(-50%, -50%) scale(1);
}

@keyframes rotate {
  0% {
    transform: translate(-50%, -50%) rotate(0deg);
  }
  100% {
    transform: translate(-50%, -50%) rotate(360deg);
  }
}

</style>
<body>
<div>
  <h1 id="text" style="text-decoration: overline; font-family: fantasy; font-size: 50px; color:rgb(187,7,11);">
  스파이더맨 매칭 </h1>
</div>
<div id="container">
  <div id="loader">
    <img id="photo1" src="images/거미줄.png" alt="Photo 2">
  </div>
    <img id="photo2" src="images/ㅅㅍㅇㄷㅁ.png" alt="Photo 1">
</div>

<script type="text/javascript">
  setTimeout(function() {
    setTimeout(function() {
      var loader = document.getElementById('loader');
      var photo2 = document.getElementById('photo2');
      var text = document.getElementById('text');

      loader.style.display = 'none'; // 로딩 창 숨김
      photo2.classList.add('show'); // 사진 2 표시
      text.innerHTML = '<a href="spiderInfo.com" style="text-decoration: none; color: inherit;">스파이더맨 매칭 완료</a>';
    }, 5000);
  }, 5000);
</script>
</body>
</html>