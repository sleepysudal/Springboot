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
<div style="margin:200px 200px;">
<form action="insert" method="post" enctype="Multipart/form-data">
	<table class="table table-striped" style="width:500px;">
	<caption align="top"></caption>
		
		<tr align="center" valign="middle">
			<th>상품명</th>
			<td>
			<input type="text" name="sangpum" required="required" class="form-control" style="width:200px;">
			</td>
		</tr>
		<tr align="center" valign="middle">
			<th>가격</th>
			<td>
			<input type="text" name="price" required="required" class="form-control" style="width:200px;">
			</td>
		</tr>
		
		<tr align="center" valign="middle">
			<th>이미지</th>
			<td>
			<input type="file" name="photo"  class="form-control"  style="width:200px;" multiple="multiple">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-success" style="width:100px;">등록</button>
			<button type="button" class="btn btn-danger" style="width:100px;" onclick="location.href='list'">목록</button> 
			</td>
		</tr>
	</table>
</form> 
</div>
</body>
</html>