<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
ul.menu{
list-style: none;
}
ul.menu li{
width:120px;
float:left;
border:0px solid gray;
height:60px;
line-height: 60px;
text-align: center; <!--글자 가운데-->
margin-right:10px;
font-size:24px;
font-family:'Gothic';
cursor:pointer;
}
ul.menu li a{
text-decoration: none;
color:white;
}
</style>
</head>
<body>
<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

	<ul class="menu">
		<li>
			<a href="/">Home</a>
		</li>
	
		<li>
			<a href="${root }/smart/list">SmartShop</a>
		</li>
	
		<li>
			<a href="${root }/ipgo/list">List</a>
		</li>
		
		<li>
			<a href="${root }/reboard/list">Board</a>
		</li>
		
		<li>
			<a href="${root }/member/list">MemList</a>
		</li>
		
		<li>
			<a href="${root }/member/myinfo">MyInfo</a>
		</li>
		<li>
			<a href="${root }/memboard/list">MemBoard</a>
		</li>
		
		<li>
			<a href="${root }/road/map">Map</a>
		</li>
		<li>
			<a href="${root }/login/main">Login</a>
		</li>
		
		
	</ul>
</body>
</html>