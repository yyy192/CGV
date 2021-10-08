<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<style>
.linemap-wrap {
	width: auto;
	height: 28px;
	margin: 0 auto;
	background-color: #f1f0e5;
	border-bottom: 1px solid #cacac0;
	display: block;
	padding-left: 200px;
}

.linemap-wrap .sect-linemap>.sect-bcrumb ul>li:first-child>a>img {
	margin-top: 5px;
}

input, select, img {
	vertical-align: middle;
}

img {
	margin: 0 auto;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	padding-inline-start: 40px;
}

.favorite-wrap {
    position: relative;
    width: 874px;
    height: 400px;
    padding: 60px 53px 0;
    background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_showtimes_favorite.gif) no-repeat 0 0;
}
</style>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>

	<div class="linemap-wrap">
		<ul>
			<li><a href="http://localhost/s5/"><img alt="home"
					src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
		</ul>
	</div>

	<c:import url="../temp/mainBricks2.jsp"></c:import>

	<div class="favorite-wrap">
		<div class="sect-favorite">
			<h4>
				<img
					src="https://img.cgv.co.kr/R2014/images/title/h4_favorite_cgv.png"
					alt="자주가는 CGV">
			</h4>

		</div>
		<div class="sect-city">
			<ul>
				<li class="on"><a href="#">서울</a>
				<div class="area">
						<ul>
							<li class="on"><a title="CGV강남"
								href="/theaters/?areacode=01&amp;theaterCode=0056&amp;date=20211008">CGV강남</a></li>
							<li><a title="CGV강변"
								href="/theaters/?areacode=01&amp;theaterCode=0001&amp;date=20211008">CGV강변</a></li>
							<li><a title="CGV건대입구"
								href="/theaters/?areacode=01&amp;theaterCode=0229&amp;date=20211008">CGV건대입구</a></li>
						</ul>
					</div></li>
	

	
				
			</ul>
		</div>
	</div>



	<div id="clickEvent">
		<c:forEach items="${list}" var="dto">
			<button class="tClick" data-th-theater="${dto.theater}">${dto.theater}</button>
		</c:forEach>
	</div>

	<!-- 극장 클릭했을 경우 ajax -->
	<div id="theater"></div>


	<script type="text/javascript">
		getTheaters("구로CGV");

		function getTheaters(theater) {
			console.log(theater);
			$.ajax({
				type : "GET",
				url : "./info",
				data : {
					theater : theater
				},
				success : function(result) {
					result = result.trim();
					$("#theater").html(result);
				},
				error : function(xhr, status, error) {
					console.log('error');

				}
			});
		}

		$(".tClick").click(function() {
			let tClick = $(this).attr('data-th-theater');
			console.log(tClick);
			$.ajax({
				type : "GET",
				url : "./info",
				data : {
					theater : tClick
				},
				success : function(result) {
					result = result.trim();
					$("#theater").html(result);
				},
				error : function(xhr, status, error) {
					console.log('error');
					getTheaters("구로CGV");
				}
			});
		});

		$('#theater').on(
				"click",
				".time",
				function() {
					console.log($(this).attr('data-th-table'));
					let timeTable = $(this).attr('data-th-table');

					console.log($(this).parent().prev().children('#movie')
							.attr('data-th-movie'));
					let movieName = $(this).parent().prev().children('#movie')
							.attr('data-th-movie');

					console.log($(this).parent().prev().children('#watch')
							.attr('data-th-watch'));
					let watchDate = $(this).parent().prev().children('#watch')
							.attr('data-th-watch');

					console.log($(this).parents('table').prev().attr(
							'data-th-theater'));
					let theater = $(this).parents('table').prev().attr(
							'data-th-theater');

					location.href = "./ticketInfo?movieName=" + movieName
							+ "&theater=" + theater + "&watchDate=" + watchDate
							+ "&timeTable=" + timeTable;

				});
	</script>
</body>
</html>