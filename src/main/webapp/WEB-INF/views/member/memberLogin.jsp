<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btn {
	width: 100%;
}

#frm {
	margin-top: 200px;
}
</style>
</head>
<body>

	<c:import url="../temp/mainHome.jsp"></c:import>
	



	<form id="frm" class="col-md-5 mx-auto" action="./memberLogin"
		method="post">

		<div align=center>
			<h6>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해주세요.</h6>
		</div>
		<br>

		<div class="mb-3">
			<label for="id" class="form-label">아이디</label> <input type="text"
				class="form-control c1" name="id" id="id">
		</div>

		<div class="mb-3">
			<label for="password" class="form-label">비밀번호</label> <input
				type="password" class="form-control c1 pw" name="pw" id="password">
		</div>


		<div class="mb-3 my-4" align=center>
			<label class="form-label"></label>
			<button id="btn" type="submit" class="btn btn-danger">로그인</button>
		</div>

	</form>


</body>
</html>