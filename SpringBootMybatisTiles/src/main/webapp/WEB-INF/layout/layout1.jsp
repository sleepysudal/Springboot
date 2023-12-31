<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">


div.layout div{border: 0px solid black; }

div.layout div.title{
position: absolute;
left:0px;
top:0px;
width:1800px;
height: 500px;
}
div.layout div.menu{
position: absolute;
top: 40px;
left:50px;
height: 100px;

}
div.layout div.info{
position: absolute;
top: 700px;
left:1300px;
height: 200px;
font-family: 'gaegu';
font-size:17px;
width:200px;
border: solid 1px red;
}

div.layout div.main{
position: absolute;
top: 600px;
left:200px;
font-family: 'gaegu';
font-size:30px;
width:800px;
height: 400px;
}

</style>
</head>
<body>
<div class="layout">
	

	<div class="title">
	<tiles:insertAttribute name="title"/>
	</div>
	
	<div class="menu">
	<tiles:insertAttribute name="menu"/>
	</div>
	
	<div class="info">
	<tiles:insertAttribute name="info"/>
	</div>
	
	<div class="main">
	<tiles:insertAttribute name="main"/>
	</div>
	
</div>
</body>
</html>