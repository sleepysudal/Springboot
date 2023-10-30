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
<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
<c:set var="root" value="<%=request.getContextPath() %>"/>
<body>
	<div>
		<img alt="" src="${root }/image/go2.webp" width="200" align="left" hspace="100"/>
		<br><br>
		<b>${name}님 환영합니다</b><br><br>
		<button type="button" class="btn btn-outline-info" style="width:100px;" onclick="location.href='logoutprocess'">로그아웃</button>
	</div>
</body>
</html>