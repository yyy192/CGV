<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'cj_onlyone_new_medium';
	src: url('/s5/resources/fonts/CJ+ONLYONE+Medium.ttf') format('truetype');
}

#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot,
	.sect-smuse, .sect-cinfo {
	position: relative;
	width: 980px;
	margin: 0 auto;
}

#contaniner {
	width: 100%;
}

#contents {
	clear: both;
	padding-bottom: 50px;
}

.tit-heading-wrap {
	position: relative;
	height: 51px;
	margin-top: 30px;
	border-bottom: 3px solid #241d1e;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
}

.tit-heading-wrap>h3 {
	display: inline-block;
	position: relative;
	height: inherit;
	margin: 0;
	background-image: none;
	color: #222;
	font-weight: 500;
	font-size: 36px;
	text-align: left;
	vertical-align: middle;
}

#cgvwrap .cgv-ad-wrap {
	width: 100%;
	height: 80px;
}

.tit-heading-wrap>.submenu>ul {
	overflow: hidden;
}

.tit-heading-wrap>.submenu>ul>li {
	float: left;
	margin-left: 15px;
}

.tit-heading-wrap>.submenu>ul>li.on>a, .tit-heading-wrap>.submenu>ul>li>a:hover,
	.tit-heading-wrap>.submenu>ul>li>a:focus {
	background:
		url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow07.png)
		no-repeat 0 3px;
	color: #e40000;
}

.tit-heading-wrap>.submenu>ul>li>a {
	display: inline-block;
	padding-left: 13px;
	font-weight: 500;
	font-size: 14px;
}

.tit-heading-wrap>.submenu {
	position: absolute;
	top: 18px;
	right: 0;
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

.sect-sorting {
	position: relative;
	margin-top: 20px;
	text-align: right;
}

.sect-sorting .nowshow {
	position: absolute;
	left: 0;
	top: 0;
}

.hidden {
	font: 0/0 a;
	height: 0;
	overflow: hidden;
	position: absolute;
	visibility: hidden;
	width: 0;
	zoom: 1;
}

.sect-sorting>select {
	padding: 3px 5px;
}

select {
	line-height: 27px;
	height: 29px;
	padding: 3px 5px;
	border: 1px solid #b4b3aa;
}

.round {
	line-height: 23px;
	font-weight: 500;
	font-size: 12px;
	text-align: center;
	vertical-align: middle;
}

.round>* {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding: 0 5px 0;
}

.round, .round>* {
	display: inline-block;
	position: relative;
}

[class|="sect"][class*="chart"]>ol {
	/*     border-bottom: 3px solid #241d1e;
 */
	padding-top: 30px;
	margin-left: -64px;
	zoom: 1;
}

[class|="sect"][class*="chart"]>h3:first-child+ol, [class|="sect"][class*="chart"]>h4:first-child+ol
	{
	padding-top: 0;
}

[class|="sect"][class*="chart"]>ol:after {
	content: '';
	clear: both;
	display: block;
}

[class|="sect"][class*="chart"]>ol>li {
	float: left;
	width: 197px;
	margin-left: 64px;
	padding-bottom: 30px;
}

[class|="sect"][class*="chart"] .box-image {
	position: relative;
	width: 197px;
	min-height: 272px;
	margin-bottom: 10px;
}

.wrap-movie-chart .box-contents {
	height: 93px;
}

[class|="sect"][class*="chart"] .thumb-image>img {
	height: 260px;
}

.box-image img {
	width: 100%;
	vertical-align: middle;
}

input, select, img {
	vertical-align: middle;
}

[class|="sect"][class*="chart"]>h3:first-child+ol .rank, [class|="sect"][class*="chart"]>h4:first-child+ol .rank,
	[class|="sect"][class*="chart"]>.spec+ol .rank {
	background: #e71a0f;
}

[class|="sect"][class*="chart"] .rank {
	display: block;
	height: 28px;
	margin-bottom: 4px;
	border: 6px solid #000000;
	background: #333333;
	color: #ffffff;
	font-size: 19px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	text-align: center;
	line-height: 28px;
}

strong {
	font-weight: 500;
}

[class|="sect"][class*="chart"] .no1 {
	position: absolute;
	right: -15px;
	bottom: -45px;
	display: block;
	width: 48px;
	height: 74px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png')
		-300px -20px no-repeat;
	font: 0/0 a;
	zoom: 1;
	z-index: 1;
}

[class|="sect"][class*="chart"] .title {
	font-size: 15px;
}

.title {
	display: block;
	color: #333333;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	font-family: 'cj_onlyone_new_medium';
}

[class|="sect"][class*="chart"] .score .percent span {
	display: inline-block;
	margin-left: 10px;
	vertical-align: top;
}

.ico-grade.grade-15 {
	background-position: -72px 0;
}

.ico-grade.grade-12 {
	background-position: -51px 0;
}

.ico-grade.grade-all {
	background-position: -30px 0;
}

.ico-grade {
	display: block;
	position: absolute;
	left: 5px;
	top: 5px;
	width: 21px;
	height: 21px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png')
		no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.score {
	font-size: 11px;
}

.score .percent span {
	color: #333333;
	font-size: 12px;
	font-weight: normal;
	font-family: Verdana, Geneva, sans-serif;
	vertical-align: -1px;
}

.txt-info>strong {
	font-size: 11px;
}

[class|="sect"][class*="chart"] .txt-info {
	margin-top: 3px;
	height: 13px;
	color: #666666;
	font-weight: 500;
	white-space: nowrap;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.egg-gage {
	display: inline-block;
	width: auto !important;
	line-height: 1;
}

.egg-gage.small .egg.good {
	width: 13px;
	background-position: -22px -47px;
}

.egg-gage.small .egg.great {
	width: 16px;
	background-position: -41px -47px;
}

.egg-gage.small .egg {
	display: inline-block;
	margin-right: 2px;
	width: 18px;
	height: 26px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_egg.png')
		no-repeat 0 -47px;
	vertical-align: middle;
}

[class|="sect"][class*="chart"] .score .egg-gage {
	margin-top: -10px;
	margin-left: 2px;
	padding-left: 6px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_writeinfo.gif') 0
		12px no-repeat;
}

[class|="sect"][class*="chart"] .score .egg-gage, [class|="sect"][class*="chart"] .score .percent
	{
	vertical-align: middle;
}

.small {
	padding-top: -30px;
}

.percent {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 11px;
}

[class|="sect"][class*="chart"] .score {
	margin-top: 7px;
}

.egg-gage.small .percent {
	display: inline-block;
	margin-top: 8px;
	font-family: 'verdana';
	font-size: 12px;
	color: #000000;
	vertical-align: middle;
}

body, input, textarea, select, button, table {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
}

[class|="sect"][class*="chart"] .like {
	display: block;
	margin-top: 10px;
	text-align: center;
}

.like {
	display: inline-block;
	margin-right: 3px;
}

[class|="sect"][class*="wishlist"] .like .link-reservation, [class|="sect"][class*="chart"] .like .link-reservation
	{
	width: 97px !important;
	height: 25px !important;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_preegg.png') 0
		-110px no-repeat !important;
}

.link-reservation {
	display: inline-block;
	width: 91px;
	height: 35px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png') 0 0
		no-repeat;
	font: 0/0 a;
	zoom: 1;
	vertical-align: top;
}

[class|="sect"][class*="wishlist"] .like, [class|="sect"][class*="chart"] .like
	{
	text-align: left !important;
}

[class|="sect"][class*="chart"] .chart-ad {
	position: absolute;
	right: 0;
	top: 133px;
}

.chart-ad .box-com {
	padding: 13px 14px 12px;
	border: 1px solid #070707;
	background: #222221;
}

[class|="wrap-movie"][class*="chart"] .sect-movie-chart {
	margin-top: 30px;
}

.chart-ad {
	width: 189px;
	height: 414px;
	padding: 2px;
	border: 3px solid #070707;
	background: #212120;
}

.chart_ad_desc {
	width: 160px;
	margin: 0 auto;
	padding: 16px 0 0 0;
}

.chart_ad_desc img {
	margin: 0;
	padding: 0;
}

.chart_ad_desc dt span {
	font-weight: 500;
	font-size: 14px;
	letter-spacing: -1px;
	vertical-align: middle;
	padding-left: 4px;
}

.chart_ad_desc span {
	color: #fdfcf0;
}

.chart_ad_desc dd {
	border-top: 3px solid #fdfcf0;
	border-bottom: 3px solid #fdfcf0;
	letter-spacing: -1px;
}

.thumb-image {
	display: block;
	position: relative;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

[class|="sect"][class*="chart"] .thumb-image {
	border: 6px solid #000000;
}

[class|="sect"][class*="chart"] .screentype {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 29px;
	padding-top: 27px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_poster-gradation.png')
		0 0 repeat-x;
	text-align: center;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

.screentype {
	display: block;
}

.screentype .imax {
	background-position: 0 0;
}

.screentype .forDX {
	background-position: 0 -112px;
}

[class|="sect"][class*="chart"] .screentype .imax {
	background-position: 0 -780px;
}

[class|="sect"][class*="chart"] .screentype .forDX {
	background-position: 0 -820px;
}

[class|="sect"][class*="chart"] .screentype .screenx {
	background-position: 0 -880px;
}

[class|="sect"][class*="chart"] .screentype .arthouse {
	background-position: 0 -860px;
}

.screentype .arthouse {
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_screentype_v3.png')
		no-repeat;
	background-position: 0 -860px;
	z-index: 1;
}

.arthouse {
	display: inline-block;
}

[class|="sect"][class*="chart"] .screentype a, [class|="sect"][class*="chart"] .screentype span
	{
	width: 59px;
	height: 20px;
	text-align: center;
	vertical-align: top;
}

.screentype span, .screentype a {
	display: inline-block;
	width: 80px;
	height: 56px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_screentype_v3.png')
		no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.txt-info {
	display: block;
	color: #999999;
	font-size: 12px;
}

[class|="sect"][class*="chart"] .btn-more-fontbold {
	float: right;
	margin-top: 10px;
}

.btn-more-fontbold {
	height: 20px;
	font-size: 13px;
	font-weight: 500;
	color: #333333;
	line-height: 20px;
}

button, input[type='submit'], input[type='reset'] {
	padding: 0;
	border: 0 none;
	background-color: transparent;
	vertical-align: middle;
}

.link-more {
	display: inline-block;
	width: 20px;
	height: 19px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png') -50px
		-62px no-repeat;
	vertical-align: middle;
	font: 0/0 a;
	zoom: 1;
}

.chart-ad-bottom {
	clear: both;
	padding: 20px 0 0;
}

.cols-rank {
	margin-top: 40px;
	padding: 0 38px 0 60px;
	background: #252121;
	zoom: 1;
}

.col-rank-trailer {
	float: left;
	width: 630px;
	padding: 39px 0 43px;
}

.cols-rank h3 {
	color: #eeeeee;
	font-size: 15px;
	height: auto;
	margin: 0 0 20px 0;
	background: none;
	line-height: 1.2;
	text-align: left;
}

div[class^="sect-"]:after {
	content: '';
	clear: both;
	display: block;
}

.wrap-info-trailer {
	float: left;
	margin-right: 20px;
}

.wrap-info-trailer .box-image.trailer {
	width: 319px;
	height: 179px;
	margin-bottom: 13px;
}

.wrap-info-trailer .box-image.trailer a {
	display: block;
}

.wrap-info-trailer .box-image+.box-image {
	float: left;
	width: 90px;
	height: 120px;
	margin-right: 15px;
}

.wrap-info-trailer .box-contents {
	float: left;
	width: 204px;
	padding: 20px 10px 0 0;
}

.sect-popular-trailer>ul {
	float: left;
}

.sect-popular-trailer>ul>li:first-child {
	margin-top: 0;
}

.sect-popular-trailer>ul>li {
	width: 285px;
	margin-top: 8px;
	padding-right: 5px;
}

.sect-popular-trailer>ul>li:after {
	content: '';
	clear: both;
	display: block;
}

.sect-popular-trailer>ul>li .box-image {
	float: left;
	width: 126px;
	height: 71px;
	margin-right: 10px;
}

.sect-popular-trailer>ul>li .box-contents {
	height: 47px;
	padding-top: 24px;
}

.box-contents>a {
	display: block;
}

.sect-popular-trailer>ul>li .box-contents .title {
	color: #999999;
	margin-bottom: 3px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

.sect-popular-trailer>ul>li .box-contents .genre {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 12px;
}

.txt-info>em {
	display: block;
}

i {
	font-style: normal;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 12px;
}

.sect-popular-trailer>ul>li .box-image .ico-play {
	top: 50%;
	left: 50%;
	width: 34px;
	height: 34px;
	margin: -17px 0 0 -17px;
	background-position: 0 -120px;
}

.ico-play {
	position: absolute;
	right: 5px;
	bottom: 6px;
	width: 44px;
	height: 44px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') -60px
		-21px no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.col-rank-search {
	float: left;
	width: 217px;
	height: 348px;
	padding: 39px 0 43px 34px;
	border-left: 1px solid #3b3838;
}

.col-rank-search .searchrank ol {
	margin-bottom: 17px;
	padding: 10px 0;
	border-top: 1px solid #484545;
	border-bottom: 1px solid #484545;
}

.col-rank-search .searchrank li {
	margin: 7px 0;
}

.searchrank ol>li {
	position: relative;
	padding-right: 43px;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

.cols-rank:after {
	content: '';
	clear: both;
	display: block;
}

.wrap-info-trailer .box-image.trailer .ico-play {
	top: 50%;
	left: 50%;
	width: 66px;
	height: 66px;
	margin: -33px 0 0 -33px;
	background-position: -121px -21px;
}

.black-border{
	width: 980px;
	margin: 0 auto;
	border-bottom: 3px solid #241d1e;
}
</style>
<meta charset="UTF-8">
</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>

	<div id="contaniner" class="">
		<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

		<!-- LineMap -->

		<div class="linemap-wrap">
			<ul>
				<li><a href="http://localhost/s5/"><img alt="home"
						src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
			</ul>
		</div>
		<!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">

			<!-- Contents Start -->



			<!-- 실컨텐츠 시작 -->
			<div class="wrap-movie-chart">
				<!-- Heading Map Multi -->
				<div class="tit-heading-wrap">
					<h3>무비차트</h3>

					<div class="submenu">
						<ul>
							<li class="on"><a href="/movies/" title="선택">무비차트</a></li>
							<li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
							<li><a href="/movies/?lt=3">CGV아트하우스</a></li>
						</ul>
					</div>
				</div>
				<!-- //Heading Map Multi -->
				<!-- Sorting -->
				<div class="sect-sorting">
					<div class="nowshow">
						<input type="checkbox" id="chk_nowshow" title="현재 선택됨" checked="">

						<label for="chk_nowshow">현재 상영작만 보기</label>
					</div>
					<label for="order_type" class="hidden">정렬</label> <select
						id="order_type" name="order-type">
						<option title="현재 선택됨" selected="" value="1">예매율순</option>
						<option value="2">평점순</option>
						<option value="3">관람객순</option>
					</select>
					<button type="button" class="round gray">
						<span>GO</span>
					</button>
				</div>
				<!-- //Sorting -->

				<div class="sect-movie-chart">
					<h4 class="hidden">무비차트 - 예매율순</h4>
					<ol>

						<li>
							<div class="box-image">
								<strong class="rank">No.1</strong> <a
									href="/movies/detail-view/?midx=83003"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83003/83003_320.jpg"
										alt="007 노 타임 투 다이 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span> <strong class="no1">1위</strong>
								</a> <span class="screentype"> <a class="imax" href="#"
									title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a> <a
									class="forDX" href="#" title="4DX 상세정보 바로가기"
									data-regioncode="4D14">4DX</a> <a class="screenx" href="#"
									title="SCREENX 상세정보 바로가기" data-regioncode="SCX">SCREENX</a>

								</span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=83003"> <strong
									class="title">007 노 타임 투 다이</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>21.7%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">88%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.09.29 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027752&amp;MOVIE_CD_GROUP=20022209">예매</a>
								</span>
							</div>
						</li>

						<li>
							<div class="box-image">
								<strong class="rank">No.2</strong> <a
									href="/movies/select"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84872/84872_320.jpg"
										alt="보이스 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-15">15세 이상</span>
								</span>

								</a> <span class="screentype"> </span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84872"> <strong
									class="title">보이스</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>5.1%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">96%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.09.15 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027456&amp;MOVIE_CD_GROUP=20027456">예매</a>
								</span>
							</div>
						</li>

						<li>
							<div class="box-image">
								<strong class="rank">No.3</strong> <a
									href="/movies/detail-view/?midx=85019"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85019/85019_320.jpg"
										alt="F20 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-15">15세 이상</span>
								</span>

								</a> <span class="screentype"> </span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=85019"> <strong
									class="title">F20</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>4.7%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
									<div class="egg-gage small">
										<span class="egg good"></span> <span class="percent">83%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.10.06 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027789&amp;MOVIE_CD_GROUP=20027711">예매</a>
								</span>
							</div>
						</li>

					</ol>
					<div class="black-border"></div>
					<ol>

						<li>
							<div class="box-image">
								<strong class="rank">No.4</strong> <a
									href="/movies/detail-view/?midx=84998"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84998/84998_320.jpg"
										alt="쁘띠 마망 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-all">전체</span>
								</span>
								</a> <span class="screentype"> <a class="arthouse" href="#"
									data-regioncode="MovieCollage">아트하우스</a>

								</span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84998"> <strong
									class="title">쁘띠 마망</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>3.2%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위4~ 7위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">92%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.10.07 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027655&amp;MOVIE_CD_GROUP=20027655">예매</a>
								</span>
							</div>
						</li>

						<li>
							<div class="box-image">
								<strong class="rank">No.5</strong> <a
									href="/movies/detail-view/?midx=84617"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_320.jpg"
										alt="기적 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span>
								</a> <span class="screentype"> </span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84617"> <strong
									class="title">기적</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>2.5%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위4~ 7위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">96%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.09.15 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20026739&amp;MOVIE_CD_GROUP=20026739">예매</a>
								</span>
							</div>
						</li>

						<li>
							<div class="box-image">
								<strong class="rank">No.6</strong> <a
									href="/movies/detail-view/?midx=85014"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85014/85014_320.jpg"
										alt="스틸워터 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-15">15세 이상</span>
								</span>
								</a> <span class="screentype"> </span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=85014"> <strong
									class="title">스틸워터</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>1.6%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위4~ 7위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">92%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.10.06 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027818&amp;MOVIE_CD_GROUP=20027695">예매</a>
								</span>
							</div>
						</li>

						<li>
							<div class="box-image">
								<strong class="rank">No.7</strong> <a
									href="/movies/detail-view/?midx=84834"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84834/84834_320.jpg"
										alt="샹치와 텐 링즈의 전설 포스터" onerror="errorImage(this)"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span>
								</a> <span class="screentype"> </span>
							</div>

							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84834"> <strong
									class="title">샹치와 텐 링즈의 전설</strong>
								</a>

								<div class="score">
									<strong class="percent">예매율<span>0.7%</span></strong>
									<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위4~ 7위)-->
									<div class="egg-gage small">
										<span class="egg great"></span> <span class="percent">87%</span>
									</div>
								</div>

								<span class="txt-info"> <strong> 2021.09.01 <span>개봉</span>

								</strong>
								</span> <span class="like"> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027330&amp;MOVIE_CD_GROUP=20027330">예매</a>
								</span>
							</div>
						</li>

					</ol>

					<div class="black-border"></div>


					<button class="btn-more-fontbold">
						더보기 <i class="link-more">더보기</i>
					</button>


					<ol id="movie_more_container" style="display: none"
						class="list-more">
						<li></li>
					</ol>

					<div class="chart-ad">
						<div class="box-com">
							<iframe
								src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Movie_Chart"
								width="160" height="300" frameborder="0" scrolling="no"
								topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"
								id="Movie_Chart" name="Movie_Chart" title="기업광고 -CGV"></iframe>
						</div>
						<div class="chart_ad_desc">
							<dl>
								<dt>
									<img src="http://img.cgv.co.kr/R2014/images/ad/ico_ad1.png"
										alt="ad"> <span id="ad_txt1">알레르망 스핑크스</span>
								</dt>
								<dd>
									<span id="ad_txt2">알러지프리 침대의 시작</span>
								</dd>
							</dl>
						</div>
					</div>

				</div>
			</div>
			<!-- .sect-moviechart -->
			<script type="text/javascript">
				//<![CDATA[
				(function($) {
					$(function() {

						$('.sect-sorting button').click(function() {
							var val = $('#order_type').val();
							if (val) {
								location.href = "/movies/?lt=1&ot=" + val;
							}
						});
						//[2015-12-15] 무비 파인더 페이지 인 경우 정렬 버튼 처리. : add_mwpark
						$("#sect-finder button")
								.click(
										function() {
											var val = $('#order_type').val();
											if (val) {
												location.href = "/movies/finder.aspx?lt=1&ot="
														+ val;
											}
										});

						$('#chk_nowshow').click(
								function() {
									if ($("input:checkbox[id='chk_nowshow']")
											.is(":checked")) {
										location.href = "/movies/?lt=1&ft=1";
									} else {
										location.href = "/movies/?lt=1&ft=0";
									}
								});

						//[2015-12-15] 무비 파인더 페이지 인 경우 현재 상영작만 보기 체크 박스 처리. : add_mwpark
						$("#chk_finder_nowshow")
								.on(
										"click",
										function() {
											if ($(
													"input:checkbox[id='chk_nowshow']")
													.is(":checked")) {
												location.href = "/movies/finder.aspx?lt=1&ft=1";
											} else {
												location.href = "/movies/finder.aspx?lt=1&ft=0";
											}
										});

					});

				})(jQuery);
				//]]>
			</script>

			<div class="chart-ad-bottom">
				<iframe
					src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_980"
					width="980" height="90" title="광고-듄" frameborder="0" scrolling="no"
					marginwidth="0" marginheight="0" name="SponsorBar_980"
					id="SponsorBar_980"></iframe>
			</div>
			<div class="cols-rank">
				<div class="col-rank-trailer">
					<h3>인기 트레일러</h3>
					<div class="sect-popular-trailer">
						<div id="ctl00_PlaceHolderContent_ucListFooter_wrap_info_trailer"
							class="wrap-info-trailer">
							<!-- 트레일러 이미지 -->
							<div class="box-image trailer">
								<a href="#" title="새창" class="movie_player_popup"
									data-gallery-idx="174953"> <span class="thumb-image">
										<img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/82175/82175174953_1024.jpg"
										alt="[캣츠]No.1 퍼포먼스 영상"> <span class="ico-play">영상보기</span>
								</span>
								</a>
							</div>
							<div class="box-image">
								<a href="/movies/detail-view/?midx=82175"> <span
									class="thumb-image"> <img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82175/82175_185.jpg"
										alt="[캣츠]No.1 퍼포먼스 영상"> <span class="ico-grade grade-12">12세
											이상</span>
								</span>
								</a>
							</div>
							<div class="box-contents">
								<a href="/movies/detail-view/?midx=82175"> <strong
									class="title">캣츠</strong>
								</a> <span class="txt-info"> <em class="genre">뮤지컬,&nbsp;드라마</em>
									<span> <i>2019.12.24</i> <strong>개봉</strong>

								</span>
								</span> <span class="screentype"> </span>
							</div>
						</div>
						<ul>

							<li>
								<div class="box-image">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="175009"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/82866/82866175009_1024.jpg"
											alt="[카운트다운]장르파괴 영상" style="width: 126px; height: 71px;">
											<span class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="175009"> <strong class="title">카운트다운</strong>
									</a> <span class="txt-info"> <em class="genre">호러,&nbsp;스릴러</em>
										<span> <i>2019.12.12</i> <strong>개봉</strong>

									</span>
									</span>
								</div>
							</li>

							<li>
								<div class="box-image">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="175008"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/82962/82962175008_1024.jpg"
											alt="[영화로운 나날]30초 예고편" style="width: 126px; height: 71px;">
											<span class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="175008"> <strong class="title">영화로운
											나날</strong>
									</a> <span class="txt-info"> <em class="genre">로맨스,&nbsp;환타지,&nbsp;드라마,&nbsp;멜로</em>
										<span> <i>2019.12.12</i> <strong>개봉</strong>

									</span>
									</span>
								</div>
							</li>

							<li>
								<div class="box-image">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="174984"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/82640/82640174984_1024.jpg"
											alt="[러브 앳]홍쓴 부부 GV 현장 메이킹 영상"
											style="width: 126px; height: 71px;"> <span
											class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="174984"> <strong class="title">러브
											앳</strong>
									</a> <span class="txt-info"> <em class="genre">로맨스,&nbsp;코미디,&nbsp;멜로</em>
										<span> <i>2019.11.27</i> <strong>개봉</strong>

									</span>
									</span>
								</div>
							</li>

							<li>
								<div class="box-image">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="174983"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/82961/82961174983_1024.jpg"
											alt="[월성]메인 예고편" style="width: 126px; height: 71px;"> <span
											class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="174983"> <strong class="title">월성</strong>
									</a> <span class="txt-info"> <em class="genre">다큐멘터리</em> <span>
											<i>2019.12.12</i> <strong>개봉</strong>

									</span>
									</span>
								</div>
							</li>

						</ul>
					</div>
					<!-- .sect-popular-trailer -->
				</div>
				<!-- .col-rank-trailer -->
				<div class="col-rank-search">
					<div class="searchrank">
						<h3>실시간 인기 검색어</h3>
						<ol>

							<li><a href="/search/?query=%eb%b6%80%ed%99%9c">1. <strong>부활</strong></a>
								<em> <span class="new">NEW</span>
							</em></li>

							<li><a
								href="/search/?query=%ea%b0%95%ec%b2%a0%eb%b9%842+%ec%a0%95%ec%83%81%ed%9a%8c%eb%8b%b4">2.
									<strong>강철비2 정상회담</strong>
							</a> <em> <span class="new">NEW</span>
							</em></li>

							<li><a href="/search/?query=%eb%b0%98%eb%8f%84">3. <strong>반도</strong></a>
								<em> <span class="new">NEW</span>
							</em></li>

							<li><a
								href="/search/?query=%ec%82%b4%ec%95%84%ec%9e%88%eb%8b%a4">4.
									<strong>살아있다</strong>
							</a> <em> <span class="new">NEW</span>
							</em></li>

							<li><a href="/search/?query=%ec%bd%94%eb%82%9c">5. <strong>코난</strong></a>
								<em> 3 <span class="up">상승</span>
							</em></li>

							<li><a href="/search/?query=%ec%95%8c%eb%9d%bc%eb%94%98">6.
									<strong>알라딘</strong>
							</a> <em> 1 <span class="down">하락</span>
							</em></li>

							<li><a href="/search/?query=%ed%8c%ac%eb%8d%b0%eb%af%b9">7.
									<strong>팬데믹</strong>
							</a> <em> <span class="new">NEW</span>
							</em></li>

							<li><a
								href="/search/?query=%ed%95%b4%eb%a6%ac%ed%8f%ac%ed%84%b0">8.
									<strong>해리포터</strong>
							</a> <em> 2 <span class="down">하락</span>
							</em></li>

							<li><a href="/search/?query=%eb%b1%85%eb%93%9c%eb%a6%bc">9.
									<strong>뱅드림</strong>
							</a> <em> <span class="new">NEW</span>
							</em></li>

							<li><a
								href="/search/?query=%eb%aa%85%ed%83%90%ec%a0%95%ec%bd%94%eb%82%9c">10.
									<strong>명탐정코난</strong>
							</a> <em> 302 <span class="up">상승</span>
							</em></li>

						</ol>
						<p class="date">2020.07.26기준</p>
					</div>
				</div>
			</div>
			<!--
  2016-
- Fried : 0 ~69
- Good :  70 ~ 84
- Great : 85 ~ 100  
//-->
			<script id="temp_movie" type="text/x-jquery-tmpl">
    <li>
        <div class="box-image" >
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <span class="thumb-image">
                    <img src="${PosterImage.LargeImage}" alt="${Title}" onerror="errorImage(this)"/>
                    <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
                </span>
            </a>
            <span class="screentype">
                {{each MovieKindList}}
                <a class="${StyleClassName}" href="#" data-regioncode="${RegionCode}">${KindName}</a>
                {{/each}}
            </span>
        </div>
                    
        <div class="box-contents">
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <strong class="title">${Title}</strong>
            </a>

            <div class="score">
                <strong class="percent">예매율<span>${TicketRate}%</span></strong>
                <!--2020.05.07 개봉일 12시 30분전 프리에그, 개봉일 12시 30분후 골든에그지수 노출 기준변경-->
                <div class="egg-gage small">
                    <span class="${StarPoint}"></span>
                    <span class="percent">${EggPoint}</span>
                </div>
            </div>

            <span class="txt-info">
                <strong>
                    ${OpenDate}
                    <span>${OpenText}</span>
                    {{if D_Day > 0}}
                        <em class="dday">D-${D_Day}</em>
                    {{/if}}
                </strong>
            </span>
            <span class="like"> 
                {{if (IsTicketing)}}<a class="link-reservation" href="http://www.cgv.co.kr/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${MovieGroupCode}">예매</a>{{/if}}
            </span>
        </div>    
    </li>
</script>

			<script type="text/javascript">
				//<![CDATA[

				(function($) {
					$(function() {

						$(".btn-more-fontbold").click(function() {
							$(this).remove();
							app.movie().getList({
								listType : '1',
								orderType : '1',
								filterType : '1'
							}, setMovieListBuild);
						});

						function setMovieListBuild(result) {

							$("#movie_more_container").empty();
							$("#movie_more_container").show();

							for (var i = 0; i < result.List.length; i++) {
								var str = result.List[i].JointCount;
								result.List[i].JointCount = str.split(",")
										.join("");
							}

							$("#temp_movie").tmpl(result.List).appendTo(
									"#movie_more_container");

							//$('.point').point();        //평점 별 표시
							$('.btn-like').like(); //wish list동작 처리
							$('span.screentype a').specialTheater(); //특별관 링크
						}
					});
				})(jQuery);
				//]]>
			</script>


			<!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>



	<c:import url="../temp/mainFooter.jsp"></c:import>




</body>
</html>
