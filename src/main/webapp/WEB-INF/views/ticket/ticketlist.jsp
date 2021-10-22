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
	height: 28px;
	background-color: #f1f0e5;
	border-bottom: 1px solid #cacac0;
	display: block;
}

.sec-wrap {
	margin: 0 auto;
	width: 1112px;
	height: 100%;
}

.sec-wrap>ul {
	display: inline-block;
}

.sec-wrap>ul>li {
	margin-left: 0;
	margin-top: 3px;
}

.linemap-wrap>ul>li {
	margin-left: 12px;
	padding-left: 20px;
	line-height: 28px;
	background:
		url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow.png)
		no-repeat 0 50%;
	font-size: 12px;
}

.linemap-wrap>ul>li:first-child {
	margin-left: 12px;
	padding-left: 20px;
	line-height: 28px;
	background: none;
	font-size: 12px;
}

li.last {
	color: #222;
	font-size: 12px;
	text-decoration: underline;
	line-height: 28px;
	font-weight: 500;
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

.movie11 {
	color: #333;
	font-weight: bold;
	padding-right: 5px;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	vertical-align: middle;
}

.theater {
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

.iconAll {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 32px;
	height: 35px;
	background-position: 0 0;
	background-repeat: no-repeat;
	background-image:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png);
	background-position: 5px 6px;
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

#ticket_banner>div {
	position: relative;
	width: 996px;
	height: 100%;
	margin: 0 auto;
}

#ticket_banner>div a {
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

.tnb .info.movie {
	width: 210px;
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
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png)
		no-repeat 50% -68px;
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
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png)
		no-repeat 50% 40px;
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
	width: 40px;
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
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png)
		no-repeat 50% -190px;
}

.tnb .info.path .row .path-step3 {
	width: 71px;
	height: 100%;
	margin-left: 18px;
	display: inline-block;
	*display: inline;
	zoom: 1;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png)
		no-repeat 50% -298px;
}

#ticket_banner {
	background-color: white;
}

#ticket_bottom_banner {
	background-color: white;
}

.movie-select {
	float: left;
	position: relative;
	margin-left: 20px;
	margin-top: 9px;
	width: 254px;
	height: 100%;
}

.theater-select {
	float: left;
	position: relative;
	margin-left: 20px;
	margin-top: 9px;
	width: 235px;
	height: 100%;
}

.date-list {
	float: left;
	width: 74px;
	height: 96%;
	margin-top: 19px;
	margin-left: 7px;
}

li.month {
	clear: both;
	overflow: hidden;
	float: left;
	width: 64px;
	height: 67px;
	margin-bottom: 1px;
	margin-left: 7px;
}

span.year {
	display: block;
	margin-top: 12px;
	text-align: center;
	color: #666;
	font-size: 11px;
	font-family: Verdana;
	font-weight: bold;
	line-height: 11px;
}

span.month {
	display: block;
	margin-top: 3px;
	text-align: center;
	color: #666;
	font-size: 30px;
	font-family: Verdana;
	font-weight: bold;
	line-height: 30px;
}

span.dayweek {
	float: left;
	color: #333;
	font-size: 12px;
	cursor: pointer;
	color: #333;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	font-weight: normal;
}

li.day {
	position: relative;
	clear: both;
	float: left;
	width: 64px;
	
	line-height: 35px;
	margin-bottom: 1px;
	text-align: center;
}

span.day {
	float: right;
	color: #333;
	font-family: Verdana;
	font-size: 14px;
	font-weight: bold;
	cursor: pointer;
}

li.day {
	margin-left: 10px;
	width: 60px;
}

.theater-list .theater-area-list>ul>li.selected>a {
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/theaterarealist_item_selected.png)
		no-repeat right;
	background-color: transparent;
}

#ticket .section-theater .col-body .theater-select .theater-list {
	position: relative;
	float: left;
	width: 100%;
	height: 323px;
	margin-top: 3px;
}

.theater-list .theater-area-list>ul>li>a {
	display: block;
	color: #333333;
	font-size: 12px;
	letter-spacing: -0.1em;
	text-align: right;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	vertical-align: middle;
	padding-left: 6px;
	padding-right: 8px;
	background-color: #e6e4d9;
}

.section-movie .col-body .movie-select .tabmenu {
	float: left;
	width: 244px;
}

.tabmenu {
	z-index: 1;
	position: relative;
	height: 38px;
}

.section-theater .col-body .theater-select .tabmenu {
	float: left;
	width: 100%;
}

#ticket .section-movie .col-body .movie-select .tabmenu .button.menu1 {
	width: 58px;
}

#ticket .tabmenu .button.selected {
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_body_on.png)
		repeat-x left;
}

#ticket .tabmenu .button {
	position: relative;
	float: left;
	margin-top: 10px;
	height: 28px;
	line-height: 28px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_body_off.png)
		repeat-x left;
	color: #333;
	font-size: 12px;
}

.button {
	display: inline;
	border: none;
	padding: 0 0;
	background: none;
	white-space: nowrap;
	vertical-align: baseline;
	text-align: center;
	cursor: pointer;
	text-decoration: none;
	-webkit-user-drag: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

#ticket .section-movie .col-body .movie-select .tabmenu .button.menu2 {
	width: 90px;
}

#ticket .section-movie .col-body .movie-select .tabmenu .button.menu3 {
	width: 88px;
}

#ticket .tabmenu .side {
	float: left;
	margin-top: 10px;
	height: 28px;
	width: 2px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_side_off.png)
		no-repeat;
}

#ticket .tabmenu .side.on {
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_side_on.png)
		no-repeat;
}

#ticket .section-theater .col-body .theater-select .tabmenu .button.menu1
	{
	width: 59px;
}

#ticket .section-theater .col-body .theater-select .tabmenu .button.menu2
	{
	width: 85px;
}

#ticket .section-theater .col-body .theater-select .tabmenu .button.menu3
	{
	width: 73px;
}

#ticket .section-theater .col-body .theater-select .theater-list .theater-area-list>ul>li
	{
	clear: both;
	overflow: hidden;
	float: left;
	width: 100%;
	height: 33px;
	line-height: 33px;
	margin-bottom: 1px;
}

#ticket .section-theater .col-body .theater-select .theater-list .theater-area-list
	{
	float: left;
	width: 109px;
	height: 100%;
	overflow: hidden;
}

#theaterList {
	display: block;
	color: #333333;
	font-size: 12px;
	font-weight: bold;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	vertical-align: middle;
	padding-left: 7px;
	padding-right: 7px;
}

#ticket .section-theater .col-body .theater-select .theater-list .theater-area-list>ul>li>div
	{
	position: absolute;
	top: 0;
	right: 0;
	width: 124px;
	height: 100%;
}

#ticket .section-theater .col-body .theater-select .theater-list .area_theater_list div
	{
	width: 154px;
}

button.theater {
	background-color: #F2F0E4;
	border: none;
	cursor: pointer;
	text-align: left;
}

#ticket .step1 .section-time .col-body .time-option {
	width: 306px;
	height: 23px;
	margin-left: 20px;
	margin-top: 19px;
	border-bottom: solid 2px #cfcdc3;
}

#ticket .step1 .section-time .col-body .time-option span.morning {
	float: left;
	height: 14px;
	padding-left: 18px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png)
		no-repeat left;
	background-position: 0 0;
	color: #333;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	font-weight: normal;
}

#ticket .step1 .section-time .col-body .time-option span.night {
	float: left;
	height: 14px;
	padding-left: 14px;
	margin-left: 14px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png)
		no-repeat left;
	background-position: 0 -20px;
	color: #333;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	font-weight: normal;
}

#ticket .step1 .section-time .col-body .time-list {
	float: left;
	width: 316px;
	height: 88%;
	margin-left: 20px;
	margin-top: 15px;
	overflow: hidden;
}

button.timeTable {
	width: 49px;
	height: 23px;
	line-height: 23px;
	border: 1px solid #d6d3ce;
	background-image: none;
	background-color: #f2f0e5;
	display: block;
}

.title span.name {
	color: #b54d15;
	font-size: 12px;
	font-weight: bold;
	margin-right: 6px;
}

.title span.floor {
	color: #333;
	font-size: 12px;
	font-weight: bold;
	margin-right: 5px;
}

.title span.seatcount {
	color: #666;
	font-size: 12px;
}

#timetableList {
	width: 309px;
	margin-top: 10px;
	margin-bottom: 6px;
	overflow: hidden;
}

#ticket .section-movie .col-body .movie-select>li {
	clear: both;
	float: left;
	width: 244px;
	height: 35px;
	line-height: 35px;
	margin-bottom: 1px;
	position: relative;
}

.movie_posterName {
	width: 74px;
	height: 104px;
	background-image: url(/s5/resources/images/poster.jpg);
	margin-right: 11px;
}

.movie_little_title {
	margin-top: 15px;
	color: #cccccc;
	letter-spacing: -0.5px;
	font-weight: bold;
}

#theater-tt {
   padding-left: 3px;
}

#ticket .section-date .col-body .date-list li.day a {
	display: block;
	height: 100%;
	vertical-align: middle;
	padding-left: 8px;
	padding-right: 7px;
	margin-left: 13px;
}

#ticket .section-date .col-body .date-list li.day a {
	margin-left: 0;
}

#ticket .section-movie .col-body .movie-select>li>a {
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	vertical-align: middle;
	width: 240px;
	height: 31px;
}

#theaterTd {
	width: 103px;
	height: 28.5px;
}

.tnb .btn-right.on {
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png)
		no-repeat;
	background-position: -150px -220px;
	overflow: hidden;
	text-indent: -1000px;
}

#theater-day {
    letter-spacing: -1px;
}

.blankArea {
	width: 48px;
	height: 20px;
}

</style>

</head>
<body>

  <div class="p_m" style="display: none">${hi}</div>
	<c:import url="../temp/mainHome2.jsp"></c:import>

	<div class="linemap-wrap">
		<div class="sec-wrap">
			<ul>
				<li><a href="http://localhost/s5/"><img alt="home"
						src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
			</ul>
		</div>
	</div>

	<div id="container">
		<div id="ticket" class="ticket ko">
			<div class="navi"></div>

			<div class="steps" style="height: 530px; display: block;">



				<div class="step step1">

					<div class="section section-movie">
						<div class="col-head">
							<h3 class="sreader">영화</h3>
						</div>


						<div class="col-body" style="height: 560px;">

							<div class="movie-select">
								<div class="tabmenu">
									<span class="side on"></span> <a href="#"
										onclick="return false;" class="button menu1 selected">전체</a> <span
										class="side on"></span> <a href="#" onclick="return false;"
										class="button menu2">아트하우스</a> <span class="side"></span> <a
										href="#" onclick="return false;" class="button menu3">특별관</a>
									<span class="side"></span>
								</div>


								<c:forEach items="${list}" var="dto">

									<li class="rating-12 press selected" movie_cd_group="20027588"
										movie_idx="84945" selectedmovietype="ALL"><a href="#"
										id="fuck" onclick="return false;" title="${dto.movieName}"
										alt="${dto.movieName}"> <c:if
												test="${dto.ageCut eq '15세'}">
												<span class="icon15">&nbsp;</span>
											</c:if> <c:if test="${dto.ageCut eq '12세'}">
												<span class="icon12">&nbsp;</span>
											</c:if> <c:if test="${dto.ageCut eq '전체'}">
												<span class="iconAll">&nbsp;</span>
											</c:if> <span class="movie11"
											data-board-movieName="${dto.movieName}">${dto.movieName}</span>
											<span class="sreader"></span></a></li>

								</c:forEach>

							</div>
						</div>

					</div>

					<div class="section section-theater">
						<div class="col-head" id="skip_theater_list">
							<h3 class="sreader">극장</h3>
						</div>
						<div class="col-body" style="height: 560px;">
							<div class="theater-select" style="height: 429px;">
								<div class="tabmenu">
									<span class="side on"></span> <a href="#"
										onclick="return false;" class="button menu1 selected">전체</a> <span
										class="side on"></span> <a href="#" onclick="return false;"
										class="button menu2">아트하우스</a> <span class="side"></span> <a
										href="#" onclick="return false;" class="button menu3">특별관</a>
									<span class="side"></span>
								</div>

								<div class="theater-list" style="height: 388px;">
									<div class="theater-area-list" id="theater_area_list">
										<ul>
											<li class="selected"><a href="#"
												onclick="theaterAreaClickListener(event);return false;"><span
													class="name">서울</span><span class="count">(3)</span></a>
												<div
													class="area_theater_list nano has-scrollbar has-scrollbar-y">
													<ul class="content scroll-y" tabindex="-1"
														style="right: -25px;">
														<li class="" data-index="0" areaindex="0"
															theater_cd="0056" rating_cd="undefined"
															style="display: list-item;"><a href="#"
															onclick="theaterListClickListener(event);return false;"><span
																class="sreader"></span></a></li>


													</ul>
													<div class="pane pane-y"
														style="display: block; opacity: 1; visibility: visible;">
														<div class="slider slider-y"
															style="height: 50px; top: 0px;">
															<div id="theaterList"
																data-board-movieName="${dto.movieName}"></div>
														</div>
													</div>
													<div class="pane pane-x"
														style="display: none; opacity: 1; visibility: visible;">
														<div class="slider slider-x" style="width: 50px;"></div>
													</div>
												</div></li>


										</ul>
									</div>
								</div>
							</div>

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
							<div class="time-option">
								<span class="morning">조조</span><span class="night">심야</span>
							</div>


							<div class="time-list">

								<span class="title"><span class="name">2D</span><span
									class="floor" data-board-tt="6관 10층">6관 10층</span><span class="seatcount">(총40석)</span></span>

								<div id="timetableList"
									data-board-timetable1="${dto.timetable1}"
									data-board-timetable2="${dto.timetable2}"
									data-board-timetable3="${dto.timetable3}"
									data-board-timetable4="${dto.timetable4}"></div>
							</div>
						</div>
					</div>


				</div>
			</div>

		</div>
	</div>
	<div id="ticket_tnb" class="tnb_container ">
		<div class="tnb step1">
			<!-- btn-left -->
			<a class="btn-left" href="#"
				onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">


				<div class="placeholder mph" title="영화선택"></div>
				<div class="movie_posterName" style="display: none;"></div>
				<div id="movie_little_title" class="movie_little_title"
					style="display: none;"></div>
			</div>
			<div class="info theater">
				<div class="row name" style="display: none;">
					<span class="header">극장</span> <span id="theater-check"></span>
				</div>
				<div class="row date" style="display: none;">
					<span class="header">일시</span> <span id="theater-day"></span>
				</div>
				<div class="row screen" style="display: none;">
					<span class="header">상영관</span> <span id="theater-tt"></span>
				</div>
				<div class="row number" style="display: none;">
					<span class="header">인원</span> <span class="data"></span>
				</div>
				<div class="placeholder tph" title="극장선택"></div>
			</div>
			<div class="info seat">
				<div class="row seat_name">
					<span class="header">좌석명</span> <span class="data">일반석</span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header">좌석번호</span> <span class="data ellipsis-line3"></span>
				</div>
				<div class="placeholder sph" title="좌석선택"></div>
			</div>
			<div class="info payment-ticket">
				<div class="row payment-millitary">
					<span class="header">군인</span> <span class="data"><span
						class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-adult">
					<span class="header">일반</span> <span class="data"><span
						class="price"></span>원 x <span class="quantity"></span></span>
				</div>
				<div class="row payment-youth">
					<span class="header">청소년</span> <span class="data"><span
						class="price"></span>원 x <span class="quantity"></span></span>
				</div>

			</div>
			<div class="info path">
				<div class="row colspan4">
					<span class="path-step2" title="좌석선택">&nbsp;</span> <span
						class="path-step3" title="결제">&nbsp;</span>
				</div>
			</div>
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<a class="btn-right" id="tnb_step_btn_right" href="#"
				onclick="OnTnbRightClick(); return false;" title="좌석선택">다음단계로 이동
				- 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
		</div>
	</div>

	<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
		<a target="_blank" title="새창"
			href="http://ad.cgv.co.kr/click/CGV/CGV_201401/RIA@B_ticketing?ads_id=46040&amp;creative_id=65154&amp;click_id=85380&amp;maid=&amp;event="
			style="background-color: rgb(255, 255, 255);"><span style=""></span><img
			src="https://adimg.cgv.co.kr/images/202110/DUNE/1011_996x140.jpg"
			alt="? " style="width: 996px; height: 140px"></a>
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
	
	let rd = "";
	
	x();

    function x() {

       if ($('.p_m').text() != "") {

          $('.movie11').filter(":contains('" + $('.p_m').text() + "')")
                .parent().parent().css("background-color", "#333");
          $('.movie11').filter(":contains('" + $('.p_m').text() + "')")
                .css("color", "white");
          document.getElementById("movie_little_title").innerText = $(
                '.p_m').text();
          $('.mph').css("display", "none");
          $('.movie_posterName').css("display", "block");
          $('.movie_posterName').css("float", "left");
          $('.movie_little_title').css("display", "block");
          $('.movie_little_title').css("float", "left");

          $.ajax({
             type : "GET",
             url : "./select",
             data : {
                movieName : $('.p_m').text()
             },
             success : function(result) {
                result = result.trim();
                $("#theaterList").html(result);
             },
             error : function(xhr, status, error) {
                console.log('error');
             }
          });

       }

    }
	
		$(".movie11")
				.click(
						function() {
							let tt = "";
							let movieName = $(this)
									.attr("data-board-movieName");
							$(this).parent().parent().css("background-color",
									"#333");

							$(this).parent().parent().siblings().css(
									"background-color", "#F2F0E4");
							$(this).css("color", "white");
							$(this).parent().parent().siblings().children()
									.children().css("color", "black");
							document.getElementById("movie_little_title").innerText = movieName;
							$('.mph').css("display", "none");
							$('.movie_posterName').css("display", "block");
							$('.movie_posterName').css("float", "left");
							
							if(movieName == '007 노 타임 투 다이') {
		                        $('.movie_posterName').css('background-position','0px 0px');
		                     }
		                     
		                     if(movieName == '보이스') {
		                        $('.movie_posterName').css('background-position','-73px 0px');
		                     }
		                     
		                     if(movieName == 'F20') {
		                        $('.movie_posterName').css('background-position','-146px 0px');
		                     }
		                     
		                     if(movieName == '쁘띠 마망') {
		                        $('.movie_posterName').css('background-position','-219px 0px');
		                     }
		                     
		                     if(movieName == '기적') {
		                        $('.movie_posterName').css('background-position','-292px 0px');
		                     }
		                     
		                     if(movieName == '스틸워터') {
		                        $('.movie_posterName').css('background-position','-365px 0px');
		                     }
		                     
		                     if(movieName == '샹치와 텐 링즈의 전설') {
		                        $('.movie_posterName').css('background-position','-437px 0px');
		                     }
							
							$('.movie_little_title').css("display", "block");
							$('.movie_little_title').css("float", "left");
							
							$(this).addClass('selected');
							$(this).parent().parent().siblings().children().css("border", "0px");
		                    $(this).parent().parent().siblings().children().removeClass("selected");
							

							$('.movie-select > li > a.selected').css("border",
									"1px solid #5c5c5c");
							$('.movie-select > li > a.selected').css(
									"line-height", "29px");
							$('.movie-select > li > a.selected').css("margin",
									"1px");

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
		$('#theaterList')
				.on(
						"click",
						".theater",
						function() {
							let theater = $(this).attr("data-board-theater");
							let movieName = $(this)
									.attr("data-board-movieName");
							$(this).css("color", "white");
							$(this).css("background-color", "#333");
							$(this).css("width", "107px");
							$('.movie_little_title').css("float", "left");

							$(this).parent().parent().css("background-color",
									"#333");

							$(this).parent().parent().siblings().children()
									.children().css("color", "black");
							$(this).parent().parent().siblings().css(
									"background-color", "#F2F0E4");
							$(this).parent().parent().siblings().children()
									.children().css("background-color",
											"#F2F0E4");

							$('.tnb .info .row').css("display", "block");
							$('.tnb .info.theater .placeholder').css("display",
									"none");
							document.getElementById("theater-check").innerText = theater;

							$(this).addClass('selected');
							$(this).parent().parent().siblings().children().css("border", "0px");
		                    $(this).parent().parent().siblings().children().removeClass("selected");

							$('#theaterList > tr > td.selected').css("border",
									"1px solid #5c5c5c");
							$('#theaterList > tr > td.selected').css(
									"line-height", "29px");
							$('#theaterList > tr > td.selected').css("margin",
									"2px");
							$('#theaterList > tr > td.selected').css("width",
									"103px");
							$('#theaterList > tr > td.selected').css("height",
									"28.5px");

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

		$('#watchdateList')
				.on(
						"click",
						".watchDate",
						function() {
							let theater = $(this).attr("data-board-theater");
							let watchDate = $(this)
									.attr("data-board-watchDate");
							let movieName = $(this)
									.attr("data-board-movieName");
							$(this).children().css("color", "white");
							$(this).parent().css("background-color", "#333");

							$(this).parent().siblings().css("background-color",
									"#F2F0E4");
							$(this).parent().siblings().children().children()
									.css("color", "black");
							document.getElementById("theater-day").innerText = watchDate + "(" + $(this).find('.dayweek').text() + ")";
							
							rd = $('#theater-day').text();
							
							$(this).parent().siblings().children().css("border", "0px");
		                    $(this).parent().siblings().children().removeClass("selected");
		                    $(this).addClass('selected');
							
							$('.date-list > li.day > a.selected').css("border",
									"1px solid #5c5c5c");
							$('.date-list > li.day > a.selected').css(
									"line-height", "29px");
							$('.date-list > li.day > a.selected').css(
									"height", "29px");
							
							$('.date-list > li.day > a.selected').css("margin",
									"1px");

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
					let tt = $('.floor').attr("data-board-tt");
					
					$(this).parent().siblings().children().removeClass('ttselected');
					$(this).parent().siblings().children().css("color", "black");
					$(this).parent().siblings().children().css("background-color", "#F2F0E4");
					$(this).parent().siblings().children().css("font-weight", "normal");
					$(this).addClass('ttselected');
					
					$('.ttselected').css("color",
					"white");
					$('.ttselected').css("background-color",
					"#333");
					$('.ttselected').css("font-weight",
					"bold");
					
					document.getElementById("theater-day").innerText = rd + timeTable;
					
					console.log(theater);
					console.log(watchDate);
					console.log(movieName);
					console.log(timeTable);
					document.getElementById("theater-tt").innerText = tt;
					
					$('.btn-right').addClass('on');
					$('.btn-right').click(
							function() {
								location.href = "./select4?movieName="
										+ movieName + "&theater=" + theater
										+ "&watchDate=" + watchDate
										+ "&timeTable=" + timeTable;
							});
					/* $.ajax({
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
					}); */
				});		
	</script>

</body>
</html>