<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>dsfadfa</h1>
	<c:forEach items="${text}" var="dto">
		<h1>극장을 선택해주세요</h1>
		<h1>날짜를 선택해주세요</h1>

		<tr align=center>
			<td>${dto.movieName}</td>
			<td><a href="#">${dto.theater}</a></td>

		</tr>
	</c:forEach>
</body>
</html>