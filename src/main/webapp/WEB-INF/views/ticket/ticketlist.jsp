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
	<h1>영화를 선택해주세요.</h1>
	<c:forEach items="${list}" var="dto">
		<tr align=center>
			<td><a href="./select?movieName=${dto.movieName}">${dto.movieName}</a></td>
		</tr>
	</c:forEach>
	


</body>


</html>