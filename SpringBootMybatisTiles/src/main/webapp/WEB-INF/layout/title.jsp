<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<style type="text/css">
#btnlogin {
	margin-left: 700px;
}
</style>
<script type="text/javascript">
$(function(){
	$("#btnloginok").click(function(){
		//아이디 비번 읽기
		var id = $("#loginid").val();
		var pass= $("#loginpass").val();
		
		//alert(id+","+pass);
		//var root = '${root}';
		//console.log("root"+root);
		
		$.ajax({
			type:"get",
			url:"/member/login",
			dataType:"json",
			data:{"id":id, "pass":pass},
			success:function(res){
				if(res.result=='fail'){
					alert("아이디나 비번이 맞지 않습니다")
				}else{
					location.reload();
				}
			}
			
			
			
		})
		
	})
	$("#btnlogout").click(function(){
				
				$.ajax({
					type:"get",
					url:"/member/logout",
					dataType:"html",
					success:function(){
						location.reload();
					}
				})
			})
})
</script>
<body>
	<!-- 상대경로 복잡할땐 이거 복사해서 쓰면됨 -->
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<a href="/"><img alt="" src="${root }/image/go7.png"
		style="width: 100%; height: 100%;"> </a>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<c:if test="${sessionScope.loginok==null }">
		<button type="button" class="btn btn-outline-success"
			onclick="location.href='${root}/login/main'">Login</button>
	</c:if>

	<c:if test="${sessionScope.loginok!=null }">
		<b>${sessionScope.myid }님이 로그인중입니다</b>
		<button type="button" class="btn btn-outline-danger"
			onclick="location.href='${root}/login/logoutprocess'">Logout</button>
	</c:if>
	
	<!-- ajax login -->
	<c:if test="${sessionScope.loginok==null }">
	<button type="button" id="btnlogin" class="btn btn-primary"
		data-bs-toggle="modal" data-bs-target="#myModal">Ajax login</button>
	</c:if>
	
	<c:if test="${sessionScope.loginok!=null }">
	<button type="button" id="btnlogout" class="btn btn-primary">Ajax Logout</button>
	</c:if>
	
	
	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">회원로그인</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<input type="text" class="form-control" id="loginid"
						placeholder="아이디입력"><br> <input type="password"
						class="form-control" id="loginpass" placeholder="패스워드입력"><br>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="btnloginok"
						data-bs-dismiss="modal">Login</button>
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>