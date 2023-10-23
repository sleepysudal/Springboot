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
<style>
.box{
width:100px;
height:100px;
}
</style>
</head>
<body>
<h3 class="alert alert-primary">구입자동차 정보</h3>
<table class="table table-bordered" style="width:800px;">
<tr>
	<td width="350" rowspan="4">
	<img alt="" src="../save/${dto.carphoto }" class="photo" style="width:400px; height:300px;">
	</td>
	<td>
	<div class="box" style="background-color: ${dto.carcolor}">
	</div>${dto.carcolor}
	</td>
<tr>
	<td>
	자동차명 : ${dto.carname }
	</td>
</tr>
<tr>
	<td>
	단가 : ${dto.carprice }
	</td>
<tr>
	<td>
	구입일:${dto.carguip }
	</td>
</tr>
<tr>
	<td colspan="2" align="center">
		<button type="submit" class="btn btn-outline-info" onclick="location.href=''">수정</button>
		<button type="submit" class="btn btn-outline-info" onclick="location.href=''">삭제</button>
		<button type="submit" class="btn btn-outline-info" onclick="location.href='carform'">등록</button>
		<button type="submit" class="btn btn-outline-info" onclick="location.href='carlist'">목록</button>
	</td>
</tr>

	
	
 
</table>
</body>
</html>