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
<c:import url="../temp/boot_nav.jsp"></c:import>
<body>
	
	<h1><%-- ${board} --%> Select Page</h1>
	
	<c:if test="${board eq 'notice'}">
		<h2>공지/뉴스</h2>
		<h3>CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</h3>
	</c:if>
	<c:if test="${board eq 'question'}">
		<h1>자주찾는 질문</h1>
		<h4>회원님들께서 가장 자주하시는 질문을 모았습니다.<br>궁금하신 내용에 대해 검색해보세요.</h4>
	</c:if>
	
	<br>
	<br>
	<hr>
	<div align=center><h3>${dto.title}</h3></div> 
	<h3>등록일 ${dto.regDate}</h3>
	<h3>조회수 ${dto.hits}</h3>
	<div>
		${dto.contents}
	</div>
	
	<%-- <c:if test="${member.id eq dto.writer}">
			<a href="./delete?num=${dto.num}">Delete</a>
			<a href="./update?num=${dto.num}">Update</a>
	</c:if>
	 --%>
	
	
</body>
</html>