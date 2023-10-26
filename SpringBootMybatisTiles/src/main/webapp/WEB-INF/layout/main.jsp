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
<img src="${root }/image/go1.jpeg" style="width:300px; height:300px;"><br>
<img src="${root }/image/go3.jpeg" style="width:300px; height:300px;"><br>
<img src="${root }/image/go4.jpeg" style="width:300px; height:300px;"><br>

</body>
</html>