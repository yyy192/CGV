<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>List Page</h1>
	<div id="clickEvent">
		<c:forEach items="${list}" var="dto">
			<a href="#" class="tClick" onclick="event()" data-th-theater="${dto.theater}">${dto.theater}</a>
		</c:forEach>
	</div>
	
	<!-- 극장 클릭했을 경우 ajax -->
	<div id="theater">
		<%-- <h3>${dto.theater}</h3>
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
	
	 --%>
	</div>
	
	
	<script type="text/javascript">
		/* $(".tClick").click(function(){
			let tClick = $(this).attr('data-th-theater');
			console.log(tClick);
			$.ajax({
				type:"GET",
				URL:"./info",
				data:{
					theater:tClick
				}
				,success:function(result){
					result=result.trim();
				}
			});
		}); */
	</script>
</body>
</html>