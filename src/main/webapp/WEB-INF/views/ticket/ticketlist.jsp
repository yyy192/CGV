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

.linemap-wrap {
	width: auto;
	height: 28px;
	margin: 0 auto;
	background-color: #f1f0e5;
	border-bottom: 1px solid #cacac0;
	display: block;
	padding-left: 200px;
}

.navi {
	position: relative;
	width: 996px;
	height: 74px;
}

.steps {
	position: relative;
	width: 996px;
	background-color: #F2F0E4;
}

.steps .step1 {
	height: 530px;
	background-color: #d4d3c9;
}

.section {
	position: relative;
	float: left;
	height: 100%;
	margin-left: 2px;
	background-color: #f2f0e5;
	overflow: hidden;
}

.section-movie {
	width: 284px;
	height: 528px;
}

.section .col-head {
	position: relative;
	height: 33px;
	line-height: 33px;
	text-align: center;
	background-color: #333333;
	background-repeat: no-repeat;
	background-position: 50% 50%;
}

.sreader {
	display: block;
	position: absolute;
	left: -10000px;
}

.section .col-head {
	background-image:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
	background-repeat: no-repeat;
	background-position: 50% 3px;
}

.section.section-movie .col-head {
	background-position: 50% 8px;
}

.section-movie .col-body {
	min-height: 495px;
}

.section .col-body {
	width: 100%;
	position: relative;
	overflow: hidden;
}

.section-theater {
	width: 265px;
	height: 528px;
}

.section.section-theater .col-head {
	background-position: 50% -25px;
}

.section-date {
	width: 91px;
	height: 528px;
}

.section.section-date .col-head {
	background-position: 50% -58px;
}

.step1 .section-time {
	width: 346px;
	height: 528px;
}

.section.section-time .col-head {
	background-position: 50% -91px;
}

.wrapLeft {
	width: 10%;
	height: 600px;
	float: left;
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
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
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
	background-image:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png);
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
	background-image:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png);
	background-position: 5px -64px;
}

.rating-12 {
	line-height: 30px;
}

.col-body {
	float: left;
	position: relative;
	margin-left: 20px;
	margin-top: 9px;
	width: 254px;
	height: 100%;
}

#ticket_bottom_banner {
	position: relative;
	width: 100%;
	min-width: 996px;
	height: 140px;
	overflow: hidden;
	text-align: center;
	margin: 30px 0;
}


a:link, a:active {
	text-decoration: none;
}

#ticket_banner {
    position: absolute;
    left: 0;
    top: 178px;
    width: 100%;
    height: 604px;
    overflow: hidden;
}

#ticket_banner > div {
    position: relative;
    width: 996px;
    height: 100%;
    margin: 0 auto;
}

#ticket_banner > div a {
    display: block;
    width: 142px;
    height: 530px;
    position: absolute;
    top: 75px;
    text-align: center;
}

#ticket_tnb {
    position: relative;
    width: 100%;
    min-width: 996px;
    height: 128px;
    background-color: #1d1d1c;
}

.tnb {
    margin: 0 auto;
    width: 996px;
    height: 108px;
    padding: 10px 0;
    position: relative;
}

.tnb.step1 .btn-left {
    display: none;
}

.tnb .btn-left, .tnb .btn-right {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat;
    background-position: 0 0;
    overflow: hidden;
    text-indent: -1000px;
}

.tnb .btn-left {
    float: left;
    width: 106px;
    height: 108px;
    margin-right: 24px;
}

.tnb .info.movie {
    width: 210px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/split.png) no-repeat right;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.movie .movie_poster {
    float: left;
    width: 74px;
    height: 108px;
    line-height: 108px;
    margin-right: 11px;
    overflow: hidden;
}

.tnb .info.theater .placeholder {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -68px;
}

.tnb .info.movie .row.movie_title {
    margin-top: 14px;
    display: none;
}

.tnb .info.movie .row {
    float: right;
}

.tnb .info .row.colspan2 {
    height: 40px;
    overflow: hidden;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.movie .placeholder {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% 40px;
}

.tnb .info.theater {
    width: 185px;
}

.tnb .info .row:first-child {
    margin-top: 14px;
}

.tnb.step1 .info.seat {
    display: none;
}

.tnb .info.seat {
    width: 171px;
}

.tnb .info .row.colspan3 {
    height: 60px;
}

.tnb .info.payment-ticket {
    width: 133px;
    background: none;
    padding-right: 0px;
}

.tnb .info.path {
    background: none;
}

.tnb .info .row.colspan4 {
    height: 80px;
}

.tnb .tnb_step_btn_right_before {
    position: absolute;
    top: 10px;
    right: 108px;
    width: 0;
    height: 108px;
}

.tnb .btn-right {
    position: absolute;
    top: 10px;
    right: 0;
    width: 106px;
    height: 108px;
}

.tnb.step1 .btn-right {
    background-position: 0 -220px;
}


.tnb .info.payment-ticket .row .header {
    width: 36px;
    padding-left: 8px;
}

.tnb .info .row .header {
    float: left;
    padding-left: 10px;
}

.tnb .info.payment-ticket .row .data {
    width: 89px;
    text-align: right;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb.step1 .info.payment-ticket, .tnb.step3 .info.payment-ticket {
    display: none;
}

.tnb .info.payment-ticket {
    width: 133px;
    background: none;
    padding-right: 0px;
}

.tnb .info.path .row .path-step2 {
    width: 111px;
    height: 100%;
    display: inline-block;
    *display: inline;
    zoom: 1;
    margin-left: 23px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -190px;
}

.tnb .info.path .row .path-step3 {
    width: 71px;
    height: 100%;
    margin-left: 18px;
    display: inline-block;
    *display: inline;
    zoom: 1;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -298px;
}


</style>

</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>

	<div class="linemap-wrap">
		<ul>
			<li><a href="http://localhost/s5/"><img alt="home"
					src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
		</ul>
	</div>

	<div id="container">

		<div class="navi"></div>

		<div class="steps" style="height: 530px; display: block;">



			<div class="step step1">

				<div class="section section-movie">
					<div class="col-head">
						<h3 class="sreader">영화</h3>
					</div>


					<div class="col-body" style="height: 560px;">

						<c:forEach items="${list}" var="dto">

							<li class="rating-12 press selected"
								data-board-movieName="${dto.movieName}"
								movie_cd_group="20027588" movie_idx="84945"
								selectedmovietype="ALL"><a href="#" onclick="return false;"
								title="${dto.movieName}" alt="${dto.movieName}"> <c:if
										test="${dto.ageCut eq '15세'}">
										<span class="icon15">&nbsp;</span>
									</c:if> <c:if test="${dto.ageCut eq '12세'}">
										<span class="icon12">&nbsp;</span>
									</c:if> <span class="text">${dto.movieName}</span><span
									class="sreader"></span></a></li>

						</c:forEach>
					</div>

				</div>

				<div class="section section-theater">
					<div class="col-head" id="skip_theater_list">
						<h3 class="sreader">극장</h3>
					</div>
					<div class="col-body" style="height: 560px;">
						<div id="theaterList" data-board-movieName="${dto.movieName}"></div>
					</div>
				</div>

				<div class="section section-date">
					<div class="col-head" id="skip_date_list">
						<h3 class="sreader">날짜</h3>
					</div>

					<div class="col-body" style="height: 560px;">
						<div id="watchdateList" data-board-theaterName="${dto.theater}"></div>
					</div>

				</div>

				<div class="section section-time">
					<div class="col-head" id="skip_time_list">
						<h3 class="sreader">시간</h3>
					</div>
					<div class="col-body" style="height: 560px;">
						<div id="timetableList" data-board-timetable1="${dto.timetable1}"
							data-board-timetable2="${dto.timetable2}"
							data-board-timetable3="${dto.timetable3}"
							data-board-timetable4="${dto.timetable4}"></div>
					</div>
				</div>


			</div>
		</div>

	</div>
	<div id="ticket_tnb" class="tnb_container ">
	<div class="tnb step1">
			<!-- btn-left -->
			<a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">
				<span class="movie_poster"><img src="" alt="영화 포스터" style="display: none;"></span>
				<div class="row movie_title colspan2" style="display: none;">
					<span class="data letter-spacing-min ellipsis-line2"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');">영화정보 상세보기</a></span>
				</div>
				<div class="row movie_type" style="display: none;">
					<span class="data ellipsis-line1"></span>
				</div>
				<div class="row movie_rating" style="display: none;">
					<span class="data" title=""></span>
				</div>
				<div class="placeholder" title="영화선택"></div>
			</div>
			<div class="info theater">
				<div class="row name" style="display: none;">
					<span class="header">극장</span>
					<span class="data letter-spacing-min ellipsis-line1"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');"><span class="sreader">극장정보 상세보기</span></a></span>
				</div>
				<div class="row date" style="display: none;">
					<span class="header">일시</span>
					<span class="data"></span>
				</div>
				<div class="row screen" style="display: none;">
					<span class="header">상영관</span>
					<span class="data"></span>
				</div>
				<div class="row number" style="display: none;">
					<span class="header">인원</span>
					<span class="data"></span>
				</div>
				<div class="placeholder" title="극장선택"></div>
			</div>
			<div class="info seat">
				<div class="row seat_name">
					<span class="header">좌석명</span>
					<span class="data">일반석</span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header">좌석번호</span>
					<span class="data ellipsis-line3"></span>
				</div>
				<div class="placeholder" title="좌석선택"></div>
			</div>
			<div class="info payment-ticket">
				<div class="row payment-millitary">
					<span class="header">군인</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-adult">
					<span class="header">일반</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-youth">
					<span class="header">청소년</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-child">
					<span class="header">어린이</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>						
				<div class="row payment-senior">
					<span class="header">경로</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-special">
					<span class="header">우대</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-final">
					<span class="header">총금액</span>
					<span class="data"><span class="price">0</span><span class="won">원</span></span>
				</div>
			</div>
			<div class="info path">
				<div class="row colspan4">
					<span class="path-step2" title="좌석선택">&nbsp;</span>
					<span class="path-step3" title="결제">&nbsp;</span>
				</div>
			</div>
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); return false;" title="좌석선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
		</div>
	</div>

	<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
		<a target="_blank" title="새창"
			href="http://ad.cgv.co.kr/click/CGV/CGV_201401/RIA@B_ticketing?ads_id=46040&amp;creative_id=65154&amp;click_id=85380&amp;maid=&amp;event="
			style="background-color: rgb(255, 255, 255);"><span style=""></span><img
			src="https://adimg.cgv.co.kr/images/202110/DUNE/1011_996x140.jpg"
			alt="?" onload="ticketNeedResize();"
			style="width: 996px; height: 140px"></a>
	</div>

	<div id="ticket_banner" class="ticket_banner">
		<div>
			<div class="AdvertiseCon" id="RIA_Skin_Ticketing_L"
				style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden;">
				<a
					href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=63397&amp;click_id=83452&amp;content_series=&amp;maid=&amp;event="
					target="_blank" style="top: 0px;"><img
					src="https://adimg.cgv.co.kr/images/202001/cgvgift/0406_160x300.jpg"
					width="160" height="300" border="0" alt="광고-CGV 기프트 카드"
					style="width: 160px; height: 300px;"></a>
			</div>
			<div class="AdvertiseCon" id="RIA_Skin_Ticketing_R"
				style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden;">
				<a
					href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=63397&amp;click_id=83452&amp;content_series=&amp;maid=&amp;event="
					target="_blank" style="top: 0px;"><img
					src="https://adimg.cgv.co.kr/images/202001/cgvgift/0406_160x300.jpg"
					width="160" height="300" border="0" alt="광고-CGV 기프트 카드"
					style="width: 160px; height: 300px;"></a>
			</div>
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