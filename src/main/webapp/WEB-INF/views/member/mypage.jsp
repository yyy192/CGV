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
	<c:import url="../temp/boot_nav_top.jsp"></c:import>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	
	<h1>My CGV</h1>
	<div align=center>
	<div class="name"><h1>${member.name} 님</h1></div>
	<div class="id"><h3>${member.id}</h3></div>
	</div>
	<br>
	<div align=center>	
	<h6>PW : ${member.pw}</h6>
	<h6>NAME : ${member.name}</h6>
	<h6>PHONE : ${member.phone}</h6>
	<h6>E-mail : ${member.email}</h6>
	<h6>Birth : ${member.birth}</h6>
	</div>
	
	<br>
	<br>
	<br>
	<div align=center>
	<a href="./memberUpdate?id=${member.id}">정보수정</a>
	<a href="./memberDelete?id=${member.id}">회원탈퇴</a>
	</div>
	
</body>
</html>