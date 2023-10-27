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
<h3 class="alert alert-primary">${totalcount }명의 회원이 있습니다</h3>
<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='add'">가입</button>

<table class="table table-striped" style="width:1000px;">
	<caption align="top">고윤정 팬리스트</caption>
	<tr align="center">
		<th>번호</th>
		<th>이름</th>
		<th>아이디</th>
		<th>프로필사진</th>
		<th>이메일</th>
		<th>가입일</th>
	</tr>
	
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr>
			<td>${i.count }</td>
			<td>${dto.name }</td>
			<td>${dto.id }</td>
			<td>
			<img alt="" src="../upload/${dto.photo }" style="width:100px; height:100px;">
			</td>
			<td>${dto.email }</td>
			<td>${dto.gaipday }</td>
			</tr>
		</c:forEach>
	
</table>
</body>
</html>