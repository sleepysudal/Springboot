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
<script type="text/javascript">
$(function(){
		
		list();
		
		num=$("#num").val();
		loginok="${sessionScope.loginok}";
		myid="${sessionScope.myid}";
		
		//alert(num+","+loginok+","+myid);
		
		//insert
		$("#btnansweradd").click(function(){
			var content=$("#content").val();
			
			if(content.length==0){
				alert("댓글을 입력해주세요");
				return;
			}
			//입력햇을때 ajax
			$.ajax({
				type:"post",
				dataType:"html",
				url:"/mbanswer/ainsert",
				data:{"content":content,"num":num},
				success:function(){
					alert("인서트 성공");
					
					list();
					
					//입력값 초기화
					$("#content").val("");
				}
			});
		});
	//댓글 수정창 띄우기
	
	//댓글 수정
	
	//댓글 삭제
	

});
function list(){
	
	num=$("#num").val();
	
	$.ajax({
		type:"get",
		dataType:"json",
		url:"/mbanswer/alist",
		data:{"num":num},
		success:function(res){
			$("span.acount").text(res.length); //댓글 갯수 확인후 진행
			
			var s="";
			$.each(res,function(i,dto){
				s+="<b>"+dto.name+"</b>:"+dto.content;
				s+="&nbsp;&nbsp;&nbsp;"
				s+="<span class='day'>"+dto.writeday+"</span>";
				
				
			});
			$("div.alist").html(s);
		}
	})
}
</script>
</head>
<body>
<div style="margin:50px 50px;">
	<table class="table table-bordered" style="width:600px;">
		<tr>	
			<td>
				<h4><b>${dto.subject}</b>
				<span style="font-size:14pt; color:gray; float:right;">
					<fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm"/>
				</span>
			</h4>
			<span>작성자: ${dto.name }(${dto.myid })</span>
			
			<c:if test="${dto.uploadfile!='no' }">
			<span style="float:right;"><a href="download?clip=${dto.uploadfile }">
			<i class="bi bi-cloud-download-fill"></i>
			<b>${dto.uploadfile }</b></a></span>
			</c:if>
			</td>
		</tr>
		<tr>
			<td>
			<c:if test="${bupload==true }">
				<img src="../savefile/${dto.uploadfile }" style="width:200px;">
				</c:if>
				<br><br>
				<pre>
				${dto.content }
				</pre>
				<br>
				<b>조회:${dto.readcount }</b>&nbsp;&nbsp;&nbsp;
				<b>댓글: <span class="acount"></span></b>
			</td>
		</tr>
		<!-- 댓글 -->
		<tr>
			<td>
				<div class="alist"></div>
				
				<input type="hidden" id="num" value="${dto.num }">
				
				<c:if test="${sessionScope.loginok!=null }">
				<div class="aform">
					<div class="d-inline-flex">
						<input type="text" class="form-control" style="width:500px;" placeholder="댓글을 입력하세요" id="content">
						<button type="button" class="btn btn-info" id="btnansweradd">등록</button>
					</div>
				</div>
				</c:if>
			</td>
		</tr>
		
		<!-- 버튼들 추가 -->
		<tr>
			<td align="right">
			
			<c:if test="${sessionScope.loginok!=null }">
			<button type="button" class="btn btn-outline-primary" onclick="location.href='form'">글쓰기</button>
			</c:if>
			
			<c:if test="${sessionScope.loginok!=null and sessionScope.myid==dto.myid }">
			<button type="button" class="btn btn-outline-warning" onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage }'">수정</button>
			</c:if>
			
			<c:if test="${sessionScope.loginok!=null and sessionScope.myid==dto.myid }">
			<button type="button" class="btn btn-outline-danger" onclick="location.href='delete?num=${dto.num}&currentPage=${currentPage }'">삭제</button>
			</c:if>
			
			<button type="button" class="btn btn-outline-info" onclick="location.href='list?currentPage=${currentPage}'">목록</button>
			
			</td>
		</tr>
	</table>
</div>
</body>
</html>