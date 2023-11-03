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
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color:rgb(235,212,235);
		<!--background-image: url("image/go7.png");-->
		
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
</body>
</html>