<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$(".btnnewphoto").click(function(){
		$("#newphoto").trigger("click");
	});
	
	$("#newphoto").change(function(){
		var num=$(this).attr("num");
		console.log(num);
		
		var form=new FormData();
		form.append("photo" , $(this)[0].files[0]); //선택한 1개만 추가
		form.append("num" , num);
		
		console.dir(form);
		
		$.ajax({
			type:"post",
			dataType:"html",
			url:"updatephoto",
			processData:false,
			contentType:false,
			data:form,
			success:function(){
				location.reload();
			}
		
		})
	})

	$("#btnupdate").click(function(){
		//var num=$("#unum").val(); 히든으로 번호 숨겨놧음
		var name = $("#name").val();
		var email = $("#email").val();
		var addr = $("#addr").val();
		var num = $(this).attr("num");
		
		//alert(name+","+email+","+addr+","+num);
		
		$.ajax({
			type:"post",
			dataType:"html",
			url:"updateMember",
			data:{"name":name, "email":email, "addr":addr, "num":num},
			success:function(){
				
				location.reload();
			}
		})
	})

	
});
</script>
</head>
<body>
<div style="margin: 100px;">
<table class="table table-bordered" >
	<c:forEach var="dto" items="${list}">
	<c:if test="${sessionScope.loginok!=null and sessionScope.myid==dto.id }">
	
		<tr>
			<td style="width: 250px" align="center" rowspan="5">
				<img src="../membersave/${dto.photo}" width="230" height="250" border="1">
				<br>
				<input type="file" style="display: none;" num="${dto.num }" id="newphoto"><!-- 사진 수정시 호출 -->
				<button type="button" class="btn btn-info btnnewphoto">사진수정</button>
			</td>
			<td style="width: 300px">회원명 : ${dto.name}</td>	
			<td rowspan="5" align="center" valign="bottom" style="width: 200px; vertical-align: middle;">	
				
				<button type="button" class="btn btn-outline-secondary myupdate2" num="${dto.num }" data-bs-toggle="modal" data-bs-target="#myupdate">수정</button>
				<br><br>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='deletemyinfo?num=${dto.num}'">삭제</button>
							
			</td>	
		</tr>
		<tr>
			<td>아이디:${dto.id}</td>
		</tr>
		<tr>
			<td>이메일:${dto.email}</td>
		</tr>
		<tr>
			<td>주소:${dto.addr}</td>
		</tr>
		
		<!-- The Modal -->
	<div class="modal" id="myupdate">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Myinfo Update</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
				<input type="text" class="form-control" id="name" value="${dto.name }"
				placeholder="회원명입력"><br>
				<input type="text" class="form-control" id="email" value="${dto.email }"
				placeholder="이메일입력"><br>
				<input type="text" class="form-control" id="addr" value="${dto.addr }"
				placeholder="주소입력"><br>
				
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
				<input type="hidden" name="unum" id="unum" value="${dto.num }">
				<button type="button" class="btn btn-danger"
				id="btnupdate" data-bs-dismiss="modal" num="${dto.num }">update</button>
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">close</button>
				</div>

			</div>
		</div>
	</div>
		
		</c:if>
	</c:forEach>
	
</table>
</div>
	
</body>
</html>
