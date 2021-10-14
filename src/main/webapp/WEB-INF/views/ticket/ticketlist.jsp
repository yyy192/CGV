<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<style type="text/css">
#container {
	position: relative;
    margin: 0 auto;
    width: 996px;
    z-index: 1;
	
	
}

.step{
	width : 995px;
	height: 530px;
    background-color: #d4d3c9;
}

.wrapLeft {
	width: 10%;
	height: 600px;
	float: left;
}

.wrap {
	width: 996px;
	height: 600px;
	float: left;
	margin: 0 auto;
}

.moviebar {
	width: 284px;
	height: 33px;
	background-color: #333333;
	margin: 5px 1px 0 5px;
	color: white;
}

.mc {
	width: 284px;
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
	float: left;
	font-size: 32px;
	color: #cccccc;
}

.info_3 {
	
}

ul li {
	list-style-type: none;
	float: left;
}

#ticket .section-movie .col-body {
	min-height: 495px;
}

#ticket .section .col-body {
	width: 100%;
	position: relative;
	overflow: hidden;
}

.text {
	color: #333;
    font-weight: bold;
    padding-right: 5px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    vertical-align: middle;
}

.icon12 {

	display: inline-block;
    *display: inline;
    zoom: 1;
    width: 32px;
    height: 35px;
    background-position: 0 0;
    background-repeat: no-repeat;
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png);
    background-position: 5px -29px;
	
}

.icon15 {

	display: inline-block;
    *display: inline;
    zoom: 1;
    width: 32px;
    height: 35px;
    background-position: 0 0;
    background-repeat: no-repeat;
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png);
    background-position: 5px -64px;
	
}

.rating-12 {
	line-height: 30px;
}

.movie-select{
	float: left;
    position: relative;
    margin-left: 20px;
    margin-top: 9px;
    width: 254px;
    height: 100%;
}


</style>

</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	
	

	<div id="container">
		<div class="step" style="height: 595px; display: block;">
		
		<div class="wrap">
			<ul>
				<li class="moviebar">영화</li>
				<li class="theaterbar">극장</li>
				<li class="datebar">날짜</li>
				<li class="timebar">시간</li>
			</ul>
			<div class="mc">
				<div class="movie-select">

				<c:forEach items="${list}" var="dto">
				
					<li class="rating-12 press selected"  data-board-movieName="${dto.movieName}"
					movie_cd_group="20027588" movie_idx="84945" selectedmovietype="ALL"><a
					href="#" onclick="return false;" title="${dto.movieName}" alt="${dto.movieName}">
					<c:if test="${dto.ageCut eq '15세'}">
						<span
						class="icon15">&nbsp;</span>
					</c:if>
					<c:if test="${dto.ageCut eq '12세'}">
						<span
						class="icon12">&nbsp;</span>
					</c:if>
					
					<span class="text">${dto.movieName}</span><span
						class="sreader"></span></a></li>
					
				</c:forEach>
				</div>
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
		</div>
		
	</div>
	<div class="bottombar">
		<div class="bottombar_1">
			<div class="info_1">영화선택</div>
			<div class="info_2">극장선택</div>
			<div class="info_3"></div>
		</div>
	</div>
	<c:import url="../temp/mainFooter.jsp"></c:import>


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
			let movieName = $(this).attr("data-board-movieName");
			console.log(theater);
			console.log(movieName);
			$.ajax({
				type : "GET",
				url : "./select2",
				data : {
					theater : theater,
					movieName : movieName
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
			let watchDate = $(this).attr("data-board-watchDate");
			let movieName = $(this).attr("data-board-movieName");
			console.log(theater);
			console.log(watchDate);
			console.log(movieName);
			$.ajax({
				type : "GET",
				url : "./select3",
				data : {
					theater : theater,
					watchDate : watchDate,
					movieName : movieName
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

		$('#timetableList').on(
				"click",
				".timeTable",
				function() {
					let theater = $(this).attr("data-board-theater");
					let watchDate = $(this).attr("data-board-watchDate");
					let movieName = $(this).attr("data-board-movieName");
					let timeTable = $(this).attr("data-board-timeTable");
					console.log(theater);
					console.log(watchDate);
					console.log(movieName);
					console.log(timeTable);
					$.ajax({
						type : "GET",
						data : {
							theater : theater,
							watchDate : watchDate,
							movieName : movieName,
							timeTable : timeTable
						},
						success : function(result) {
							location.href = "./select4?movieName=" + movieName
									+ "&theater=" + theater + "&watchDate="
									+ watchDate + "&timeTable=" + timeTable;
						},
						error : function(xhr, status, error) {
							console.log('error');
						}
					});
				});
	</script>

</body>
</html>