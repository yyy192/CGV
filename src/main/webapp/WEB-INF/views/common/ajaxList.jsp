<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table class="table table-dark table-striped">
	<c:forEach items="${theater}" var="dto">
		
		<tr align=center>
			<td class="">${dto.movieName}</td>
			<td><a href="#">${dto.theater}</a></td>

		</tr>
	</c:forEach>
</table>


</body>
</html>