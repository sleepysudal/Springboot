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
ul.menu{
list-style: none;
}
ul.menu li{
width:120px;
float:left;
border:1px solid gray;
height:60px;
line-height: 60px;
text-align: center; <!--글자 가운데-->
margin-right:10px;
font-size:24px;
font-family:'Gaegu';
background-color:#ff00ff;
cursor:pointer;
}
ul.menu li a{
text-decoration: none;
color:black;
}
</style>
</head>
<body>
<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
<c:set var="root" value="<%=request.getContextPath() %>"/>
<b>여기는 메뉴바입니다</b>
	<ul class="menu">
		<li>
			<a href="/">Home</a>
		</li>
	
		<li>
			<a href="${root }/ipgo/ipgoform">상품등록</a>
		</li>
	
		<li>
			<a href="${root }/ipgo/list">상품목록</a>
		</li>
		
		<li>
			<a href="${root }/board/list">게시판</a>
		</li>
		
		<li>
			<a href="${root }/member/list">회원목록</a>
		</li>
		
		<li>
			<a href="${root }/member/form">회원가입</a>
		</li>
		
		<li>
			<a href="${root }/road/map">오시는길</a>
		</li>
		<li>
			<a href="${root }/login/main">로그인</a>
		</li>
		
		
	</ul>
</body>
</html>