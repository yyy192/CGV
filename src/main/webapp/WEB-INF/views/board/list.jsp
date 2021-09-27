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
	<h1><%-- ${board} --%> Board List Page</h1>
	
	<table class="table-secondary table table-striped">
		<tr align=center>
				<th>NUM</th><th>CODE</th><th>TITLE</th><th>HITS</th>						
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr align=center>
				<td>${dto.num}</td>
				<td>${dto.code}</td>
				<td><a href="./select?num=${num}"> ${dto.title} </a></td>
				<td>${dto.hits}</td>						
			</tr>
			
		</c:forEach>
	</table>
	
</body>
</html>