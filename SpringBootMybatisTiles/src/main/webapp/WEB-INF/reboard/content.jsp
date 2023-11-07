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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<style>
  i.good {
    cursor: pointer;
    font-size: 24px; 
    color: blue; 
    transition: all 0.3s;
  }

  i.good.clicked {
    color: red; 
    font-size: 240px;
  }
</style>

<script>
$(function() {
	  $(".good").click(function() {
		    var icon = $(this);

			icon.toggleClass("clicked");

		   
		    icon.animate({"font-size":"500px"},3000,function(){
		       $(this).css("font-size","24px");
		       icon.removeClass("clicked"); 
		       
		       
		       
		    }); 
		    
		  });
  
  $("div.likes").click(function(){
	var num = ${dto.num};
	//alert(num);
	
	$.ajax({
		type:"get",
		url:"likes",
		dataType:"json",
		data:{"num":num},
		success:function(res){
			$("div.likes").find("b").text(res.likes);
		}
	})
  })
  
});
</script>
<body>
	<div style="width:600px; margin:50px 100px;">
	<table class="table table-bordered">
		<tr>	
			<td>
				<h2>${dto.subject }</h2>
				<b>${dto.name }(${dto.id })</b><br>
				<span style="color:gray; font-size:0.8em;">
					<fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm"/>
					&nbsp;&nbsp;&nbsp;&nbsp;
					조회:${dto.readcount }
				</span>	
			</td>
		</tr>
		<tr>
			<td>
				<pre>
				${dto.content }
				</pre><br><br>
				<c:if test="${dto.photo!='no' }">
					<c:forEach var="photo" items="${dto.photo }">
						<img alt="" src="../rephoto/${photo }" width="100" class="img-thumbnail">
					</c:forEach>
				</c:if>
				<br><br>
				<div class="likes">
					<i class="bi bi-tencent-qq good"></i>&nbsp;&nbsp;
					좋아요 <b>${dto.likes }</b>
				</div>
			</td>
		</tr>
		
		<tr>	
		<td>
			<button type="button" class="btn btn-outline-danger"
			onclick="location.href='form?num=${dto.num}&regroup=${dto.regroup }&restep=${dto.restep } '">답글</button>
			
			<c:if test="${sessionScope.loginok!=null && sessionScope.myid==dto.id }">
			<button type="button" class="btn btn-outline-warning"
			onclick="location.href=''">수정</button>
			</c:if>
			
			<c:if test="${sessionScope.loginok!=null && sessionScope.myid==dto.id }">
			<button type="button" class="btn btn-outline-success"
			onclick="location.href=''">삭제</button>
			</c:if>
			
			<button type="button" class="btn btn-outline-info"
			onclick="location.href='list'">목록</button>
			
			<button type="button" class="btn btn-outline-primary"
			onclick="location.href='form'">글쓰기</button>
		</td>
		
	</table>
	</div>
</body>
</html>