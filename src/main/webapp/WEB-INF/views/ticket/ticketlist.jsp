<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>CGV</title>
<style type="text/css">
#container {
	width: 100%;
	height: 600px;
	min-width: 1024px;
	text-align: center;
	margin: 0px auto;
	background-color: yello;
	/* width: auto;
	height: 900px;
	
	font-size: 20px;
	text-align: center; */
}

.wrapLeft {
	width: 10%;
	height: 600px;
	float: left;
}

.wrap {
	width: 80%;
	height: 600px;
	float: left;
	margin: 0 auto;
}

.moviebar {
	width: 28%;
	height: 33px;
	background-color: #333333;
	margin: 5px 1px 0 5px;
	color: white;
}

.mc {
	width: 28%;
	background-color: #F2F0E5;
	margin: 2px 1px 0 5px;
	height: 559px;
	float: left;
}

.movie {
	margin: 10px 0 10px 0;
}

.theaterbar {
	width: 26%;
	height: 33px;
	background-color: #333333;
	margin: 5px 1px 0 1px;
	color: white;
}

.theac {
	width: 26%;
	background-color: #F2F0E5;
	margin: 2px 1px 0 1px;
	height: 559px;
	float: left;
}

.datebar {
	width: 9%;
	height: 33px;
	background-color: #333333;
	margin: 5px 1px 0 1px;
	color: white;
}

.dc {
	width: 9%;
	background-color: #F2F0E5;
	margin: 2px 1px 0 1px;
	height: 559px;
	float: left;
}

.timebar {
	width: 35%;
	height: 33px;
	background-color: #333333;
	margin: 5px 1px 0 1px;
	color: white;
}

.tc {
	width: 35%;
	background-color: #F2F0E5;
	margin: 2px 1px 0 1px;
	height: 559px;
	float: left;
}

.wrapright {
	width: 10%;
	height: 600px;
	float: left;
}

.bottombar {
	width: 100%;
	height: 128px;
	background-color: #1D1D1C;
	text-align: center;
}

.bottombar_1 {
	width: 996px;
	height: 128px;
	background-color: #1D1D1C;
	margin: 0 14px;
}

.info_1 {
	width: 212px;
	height: 108px;
	float: left;
	font-size: 32px;
	color: #cccccc;
}

.info_2 {
	width: 187px;
	height: 108px;
	float:left;
	font-size: 32px;
	color: #cccccc;
}

.info_3 {
	
}

ul li {
	list-style-type: none;
	float: left;
}
</style>
</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	<div id="container">
		<div class="wrapLeft"></div>
		<div class="wrap">
			<ul>
				<li class="moviebar">영화</li>
				<li class="theaterbar">극장</li>
				<li class="datebar">날짜</li>
				<li class="timebar">시간</li>
			</ul>
			<div class="mc">
				<c:forEach items="${list}" var="dto">
					<tr align=center>
						<td>
							<button class="movie" type="button"
								data-board-movieName="${dto.movieName}">${dto.movieName}</button>
							<br>
						</td>
					</tr>
				</c:forEach>
			</div>
			<div class="theac">
				<div id="theaterList" data-board-movieName="${dto.movieName}"></div>
			</div>
			<div class="dc">
				<div id="watchdateList" data-board-theaterName="${dto.theater}"></div>
			</div>
			<div class="tc">
				<div id="timetableList" data-board-timetable1="${dto.timetable1}"
					data-board-timetable2="${dto.timetable2}"
					data-board-timetable3="${dto.timetable3}"
					data-board-timetable4="${dto.timetable4}"></div>
			</div>
		</div>
		<div class="wrapright"></div>
	</div>
	<div class="bottombar">
		<div class="bottombar_1">
			<div class="info_1">영화선택</div>
			<div class="info_2">극장선택</div>
			<div class="info_3"></div>
		</div>
	</div>


	<!-------------------------------------------------------------------------------------------->
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