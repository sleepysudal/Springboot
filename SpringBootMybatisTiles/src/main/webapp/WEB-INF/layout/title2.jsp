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
</head>
<body>
<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
<c:set var="root" value="<%=request.getContextPath() %>"/>
<a href="/"><img alt="" src="${root }/image/mushroom.png" style="width:400px; height:100px;">
<b>여기가 타이틀 칸입니다 타이틀은 여기에 꾸미자</b>
<b>SpringBoot+Mybatis+Tiles</b></a>
</body>
</html>