<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List Page</h1>
	
	<button id="btn">click</button>
	
	
	<div>
	<c:forEach items="${list}" var="dto">
		${dto.theater}
	</c:forEach>
	</div>
	
	<!-- 극장 클릭했을 경우 -->
	<div>
		<h3>${dto.theater}</h3>
		<c:forEach items="${dto.moths}" var="info">
			${info.movieName}
			${info.watchDate}
			<br>
			${dto.timeTable1}
			${dto.timeTable2}
			${dto.timeTable3}
			${dto.timeTable4}
			<br>
		</c:forEach>
	
	
	</div>
	
<script type="text/javascript">

</script>
</body>
</html>