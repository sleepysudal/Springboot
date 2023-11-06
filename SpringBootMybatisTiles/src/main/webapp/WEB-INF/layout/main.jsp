<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color:rgb(235,212,235);
		<!--background-image: url("image/go7.png");-->
		
	}
	/* 스틸컷*/
.swiper-slide {
   text-align: center;
   background: black;
   /* 이미지들을 수평으로 배치 */
   display: flex;
   /* 수직 가운데 정렬 */
   align-items: center;
   /* 수평 가운데 정렬 */
   justify-content: center;
}
img{
width:500px;
height:700px;

}
</style>
</head>
<body>
<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
<!-- vh :  8.x 퍼센트-->

<div align="center">
<h1 style="color:white; font-size: 90px;" >YJ PICK</h1>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<video autoplay controls loop muted poster="${root }/image/go7.png" style="width:800px; height: 600px; object-fit:cover;"  preload="auto">
  <source src="${root }/image/goavi.mp4" type="video/mp4">
</video>
</div>

<div class="steelcut"
               style="width: 100%; height: 100%;">
              
               <div class="swiper mySwiper">
                  <div class="swiper-wrapper">
                     <div class="swiper-slide">
                        <img src="${root }/image/go1.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go2.webp">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go3.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go4.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go5.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go6.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go7.jpeg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go8.jpg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go9.jpg">
                     </div>
                     <div class="swiper-slide">
                        <img src="${root }/image/go10.jpg">
                     </div>
                  </div>
               </div>
            </div>
            
            <script>
      
            var swiper = new Swiper(".mySwiper", {
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: {
                  delay: 2500,
                  disableOnInteraction: false,
                },
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
              });

    </script>
</body>
</html>