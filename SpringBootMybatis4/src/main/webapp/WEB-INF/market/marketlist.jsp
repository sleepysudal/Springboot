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
<c:if test="${totalCount==0 }">
	<div class="alert alert-info">
		<b>저장된 상품정보가 없습니다</b>
	</div>
</c:if>
<c:if test="${totalCount>0 }">
	<div class="alert alert-primary">
		<b>총 ${totalCount }개의 상품정보가 있습니다</b>
	</div>
</c:if>
<div style="margin:100px 100px;">
<button type="button" class="btn btn-info" onclick="location.href='writeform'">글쓰기</button>
<br><br>


<table class="table table-striped" style="width:1000px;">
		<tr align="center">
			<th>번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>입고일자</th>
			<th>편집</th>
		</tr>	
		<tr>
     		<c:forEach var="dto" items="${list }" varStatus="i">
     		<tr valign="middle" align="center">
     			<td>${i.count }</td>
     			<td>
     			${dto.sang } 
     			<c:if test="${dto.photoname!=null }">
              	<img alt="" src="../save/${dto.photoname }" width="80" height="80" border="1" hspace="10">
             	 </c:if>
             	 <c:if test="${dto.photoname==null }">
              	<img alt="" src="../save/noimg.jpg" width="80" height="80" border="1" hspace="10">
              	</c:if>
     			</td>
     			<td><fmt:formatNumber value="${dto.price }" type="currency"/></td>
     			
     			<td><fmt:formatDate value="${dto.ipgoday }" pattern="yyyy-MM-dd:HH:mm"/></td>
     			<td>
     			<button type="button" class="btn btn-info btn-sm" onclick="location.href='updateform?num=${dto.num}'">수정</button>
     			<button type="button" class="btn btn-danger btn-sm" onclick="location.href='delete?num=${dto.num}'">삭제</button>
     			</td>
     		</tr>
     		</c:forEach>
     	</tr>
		
		
		
	</table>
</div>
</body>
</html>