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
		  <button id="idCheck" type="button">ID중복확인</button>
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
</body>
</html>