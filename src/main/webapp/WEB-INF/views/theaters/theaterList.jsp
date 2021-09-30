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
	<h1>List Page</h1>
	<div id="clickEvent">
		<c:forEach items="${list}" var="dto">
			<a href="#" class="tClick" onclick="event()" data-th-theater="${dto.theater}">${dto.theater}</a>
		</c:forEach>
	</div>
	
	<!-- 극장 클릭했을 경우 ajax -->
	<div id="theater">
		<%-- <table class="table table-striped">
		<c:forEach items="${dto.moths}" var="d">
			<tr>
				<td>${d.movieName}</td>
				<td>${d.watchDate}</td>
			</tr>
			<tr>
				<td><a href="#" data-th-table1="${dto.timeTable1}">오전 9시</a></td>
				<td data-th-table2="${dto.timeTable2}">오후 1시</td>
				<td data-th-table3="${dto.timeTable3}">오후 4시</td>
				<td data-th-table4="${dto.timeTable4}">오후 7시</td>
			</tr>
		</c:forEach>
		</table> --%>
	</div>
	
	
	<script type="text/javascript">
		$(".tClick").click(function(){
			let tClick = $(this).attr('data-th-theater');
			console.log(tClick);
			$.ajax({
				type:"GET",
				url:"./info",
				data:{
					theater:tClick
				}
				,success:function(result){
					result=result.trim();
					$("#theater").html(result);
				}
				,error:function(xhr, status, error){
					console.log('error');
				}
			});
		});
	</script>
</body>
</html>