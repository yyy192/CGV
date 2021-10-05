<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">


a {
	display: inline-block;
	width: 15px;
	height: 15px;
	text-decoration: none
}

a:active {
	color: white;
	background-color: red;
}

a:hover {
	color: white;
	background-color: red;
}

.col-head {
	width: 992px;
	height: 33px;
	text-align: center;
	margin: 0px auto;
	background-color: #333333;
	font-size: 0.5em;
	font-weight: bold;
	color: #cccccc;
}

.person_screen {
	width: 992px;
	height: 162px;
	margin: 0px auto;
	background-color: #F2F0E4;
}

.mouse_block {
	width: 992px;
	height: 385px;
	margin: 0px auto;
	background-color: #F7F7EF;
}

.tnb_container {
	width: 1270px;
	height: 128px;
	margin: 0 auto;
	background-color: #1D1D1D;
}

.tnb {
	margin: 0 auto;
	width: 996px;
	height: 108px;
	padding: 10px 0;
	position: relative;
	background-color: #1D1D1D;
}

.tnb .btn-left, .tnb .btn-right {
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png)
		no-repeat;
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

.tnb .btn-right {
	position: absolute;
	top: 10px;
	right: 0;
	width: 106px;
	height: 108px;
}

.tnb .info.movie .row .data {
	width: 120px;
	max-height: 40px;
}

.tnb .info .row .data.letter-spacing-min {
	letter-spacing: -0.5px;
}

.tnb .info .row .data.ellipsis-line2 {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: normal;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	word-wrap: break-word;
}

.tnb .info .row .data {
	float: right;
	font-weight: bold;
}

.tnb .info .row {
	height: 20px;
	line-height: 20px;
}

.tnb .info {
	float: left;
	height: 108px;
	padding-right: 2px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/split.png)
		no-repeat right;
	position: relative;
	color: #cccccc;
	font-size: 12px;
}

.tnb .info .row:first-child {
	margin-top: 14px;
}

.tnb .info.theater {
	width: 185px;
}

.tnb .info.theater .placeholder {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png)
		no-repeat 50% -68px;
}

.tnb .info.seat {
	width: 171px;
}

.tnb .info.seat .row .header {
	width: 52px;
	padding-left: 9px;
}

.tnb .info .row .header {
	float: left;
	padding-left: 10px;
}

.theater_minimap {
	width: 992px;
	height: 385px;
	margin: 0 auto;
}

.aa {
	width: 826px;
	height: 20px;
	margin: 0 auto;
}

.theater_content {
	width: 826px;
	height: 330px;
	margin: 0 auto;
}

.theater_screen {
	width: 625px;
	height: 25px;
	background-image:
		url("http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png");
	repeat-x: left;
	margin: 0 auto;
}

.theater_img {
	width: 57px;
	height: 25px;
	margin: 0 auto;
	background-image:
		url("http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_text.png");
}

.bb {
	width: 625px;
	height: 80px;
	margin: 0 auto;
}

.seats {
	width: 190px;
	height: 200px;
	margin: 0 auto;
}

.label_seat {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 190px;
	height: 15px;
}

.label_first {
	width: 15px;
	height: 15px;
	float: left;
	margin-right: 10px;
	font-size: 12px;
	font-weight: bolder;
	text-align: center;
}

.label {
	width: 15px;
	height: 15px;
	float: left;
	font-size: 12px;
	background-color: #00AEBD;
	margin-right: 5px;
	text-align: center;
}

.noticeInfo {
	width: 530px;
	height: 25px;
	margin: 0 auto;
	margin-bottom: 10px;
	background-color: #858585;
	color: white;
	font-size: 11px;
}
</style>


</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	<br>
	<br>
	<div class="col-head">
		<h1>인원/좌석</h1>
	</div>
	<div class="person_screen"></div>
	<div class="mouse_block">
		<div class="theater_minimap">
			<div class="aa"></div>
			<div class="theater_content">
				<div class="theater_screen">
					<div class="theater_img"></div>
				</div>
				<div class="bb"></div>
				<div class="seats">
					<div class="label_seat">
						<div class="label_first">A</div>
						<div class="label">
							<a href="#" onclick="return false">1</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">2</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">3</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">4</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">5</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">6</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">7</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">8</a>
						</div>
					</div>
					<div class="label_seat">
						<div class="label_first">B</div>
						<div class="label">
							<a href="#" onclick="return false">1</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">2</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">3</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">4</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">5</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">6</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">7</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">8</a>
						</div>
					</div>
					<div class="label_seat">
						<div class="label_first">C</div>
						<div class="label">
							<a href="#" onclick="return false">1</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">2</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">3</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">4</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">5</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">6</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">7</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">8</a>
						</div>
					</div>
					<div class="label_seat">
						<div class="label_first">D</div>
						<div class="label">
							<a href="#" onclick="return false">1</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">2</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">3</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">4</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">5</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">6</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">7</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">8</a>
						</div>
					</div>
					<div class="label_seat">
						<div class="label_first">E</div>
						<div class="label">
							<a href="#" onclick="return false">1</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">2</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">3</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">4</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">5</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">6</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">7</a>
						</div>
						<div class="label">
							<a href="#" onclick="return false">8</a>
						</div>
					</div>
				</div>
			</div>
			<div class="noticeInfo">
				<MARQUEE scrolldelay="80" hspace="5" vspace="5">[안내] 극장
					이용시 마스크 착용은 필수 입니다. (미착용시 입장 제한)</MARQUEE>
			</div>
		</div>
	</div>
	<div id="ticket_tnb" class="tnb_container">
		<div class="tnb step2">
			<!-- btn-left -->
			<a class="btn-left" href="#"
				onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">
				<span class="movie_poster"><img src="" alt="영화 포스터"
					style="display: inline;"></span>
				<div class="row movie_title colspan2" style="display: block;">
					<span class="data letter-spacing-min ellipsis-line2"><a
						href="http://www.cgv.co.kr/movies/detail-view/?midx=85006"
						target="_blank"
						onmousedown="javascript:logClick('SUMMARY/영화상세보기');" title="수색자">수색자</a></span>
				</div>
				<div class="row movie_type" style="display: block;">
					<span class="data ellipsis-line1" title="2D">2D</span>
				</div>
				<div class="row movie_rating" style="display: block;">
					<span class="data" title="15세 관람가">15세 관람가</span>
				</div>
				<div class="placeholder" title="영화선택" style="display: none;"></div>
			</div>

			<div class="info theater">
				<div class="row name" style="display: block;">
					<span class="header">극장</span> <span
						class="data letter-spacing-min ellipsis-line1"><a
						target="_blank"
						onmousedown="javascript:logClick('SUMMARY/극장상세보기');"
						href="http://www.cgv.co.kr/theaters/?theaterCode=0030"
						title="CGV 불광">CGV 불광</a></span>
				</div>
				<div class="row date" style="display: block;">
					<span class="header">일시</span> <span class="data"
						title="2021.10.4(월) 10:25">2021.10.4(월) 10:25</span>
				</div>
				<div class="row screen" style="display: block;">
					<span class="header">상영관</span> <span class="data" title="2관 11층">2관
						11층</span>
				</div>
				<div class="row number" style="display: block;">
					<span class="header">인원</span> <span class="data" title=""></span>
				</div>
				<div class="placeholder" title="극장선택" style="display: none;"></div>
			</div>

			<div class="info seat">
				<div class="row seat_name" style="height: 0px;">
					<span class="header">좌석명</span> <span class="data" title=""></span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header">좌석번호</span> <span class="data ellipsis-line3"
						title=""></span>
				</div>
				<div class="placeholder" title="좌석선택"></div>
			</div>



			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<a class="btn-right" id="tnb_step_btn_right" href="#"
				onclick="OnTnbRightClick(); return false;" title="결제선택">다음단계로 이동
				- 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
		</div>
	</div>


	</div>

</body>
</html>