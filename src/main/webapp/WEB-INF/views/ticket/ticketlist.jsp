<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>영화를 선택해주세요.</h1>
	<c:forEach items="${list}" var="dto">
		<tr align=center>
			<td>
				<button class="movie" type="button"
					data-board-movieName="${dto.movieName}">${dto.movieName}</button>
			</td>
		</tr>
	</c:forEach>

	<div id="theaterList" data-board-movieName="${dto.movieName}"></div>

	<div id="watchdateList" data-board-theaterName="${dto.theater}"></div>

	<div id="timetableList" data-board-timetable1="${dto.timetable1}"
		data-board-timetable2="${dto.timetable2}"
		data-board-timetable3="${dto.timetable3}"
		data-board-timetable4="${dto.timetable4}"></div>
		
	<div></div>

	<script type="text/javascript">
		$(".movie").click(function() {
			let movieName = $(this).attr("data-board-movieName");
			console.log(movieName);
			$.ajax({
				type : "GET",
				url : "./select",
				data : {
					movieName : movieName
				},
				success : function(result) {
					result = result.trim();
					$("#theaterList").html(result);
				},
				error : function(xhr, status, error) {
					console.log('error');
				}
			});
		});
		$('#theaterList').on("click", ".theater", function() {
			let theater = $(this).attr("data-board-theater");
			console.log(theater);
			$.ajax({
				type : "GET",
				url : "./select2",
				data : {
					theater : theater
				},
				success : function(result) {
					result = result.trim();
					$("#watchdateList").html(result);
				},
				error : function(xhr, status, error) {
					console.log('error');
				}
			});
		});
		$('#watchdateList').on("click", ".watchDate", function() {
			let theater = $(this).attr("data-board-theater");
			console.log(theater);
			$.ajax({
				type : "GET",
				url : "./select3",
				data : {
					theater : theater
				},
				success : function(result) {
					result = result.trim();
					$("#timetableList").html(result);
				},
				error : function(xhr, status, error) {
					console.log('error');
				}
			});
		});
	</script>

</body>
</html>