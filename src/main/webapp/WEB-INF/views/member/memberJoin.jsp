<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>

<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Join Page</h1>
	
	<div class="container-fluid">
		<form id="frm" class="col-md-5 mx-auto" action="./memberJoin" method="post">
		
		<div class="mb-3">
		  <label for="id" class="form-label">아이디</label>
		  <input type="text" class="form-control c1" name="id" id="id">
		  <div id="idResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="pw" class="form-label">비밀번호</label>
		  <input type="password" class="form-control c1 pw" name="pw" id="pw">
		</div>
		
		<div class="mb-3">
		  <label for="passwordcheck" class="form-label">비밀번호 확인</label>
		  <input type="password" class="form-control c1 pw" name="passwordcheck" id="passwordcheck">
		  <div id="pwResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="name" class="form-label">이름</label>
		  <input type="text" class="form-control c1" name="name" id="name">
		</div>
		
		<div class="mb-3">
		  <label for="phone" class="form-label">핸드폰 번호</label>
		  <input type="tel" class="form-control c1" name="phone" id="phone">
		</div>
		
		<div class="mb-3">
		  <label for="email" class="form-label">이메일</label>
		  <input type="email" class="form-control c1" name="email" id="email">
		</div>
		
		<div class="mb-3">
		  <label for="birth" class="form-label">생년월일</label>
		  <input type="number" class="form-control c1"placeholder="20210928" name="birth" id="birth">
		</div>
		
		<div class="mb-3 my-4" align=center>
 		    <label class="form-label"></label>
  			<button id="btn" type="submit" class="btn btn-dark">회원가입</button>
		</div>
		
		</form>
		</div>
		<!-- <script type="text/javascript" src="../resources/js/join.js"></script> -->
		
<script type="text/javascript">
	$('#id').blur(function(){
		let id = $('#id').val();
		console.log(id);
		$.ajax({
			type:"GET",
			url:"./idCheck",
			data:{
				id:id
			},
			success:function(result){
				result=result.trim();
				if(result=='1'){
					$('#idResult').html('<font color=blue>사용 가능한 ID 입니다.</font>');
				}else{
					$('#idResult').html('<font color=red>사용 불가능한 ID 입니다.</font>');
				}
			}
		});
	});
	
	$('#passwordcheck').blur(function(){
		let pw = $('#pw').val();
		let passwordcheck = $('#passwordcheck').val();
		
		console.log(pw);
		console.log(passwordcheck);

		if(pw == passwordcheck){
			$('#pwResult').html('<font color=blue>비밀번호가 일치합니다.</font>');
		}else{
			$('#pwResult').html('<font color=red>비밀번호가 일치하지 않습니다.</font>');
		}
	});
</script>
</body>
</html>