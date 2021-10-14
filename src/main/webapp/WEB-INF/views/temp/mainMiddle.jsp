<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.middle_content {
	width: 1132px;
	height: 450px;
}

body {
	background-color: #FDFCF0;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
}

h3 {
	height: 41px;
	margin: 30px 50px 30px;
	background:
		url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg)
		repeat-x 0 50%;
	line-height: 41px;
	text-align: center;
	font-weight: 500;
}

h3>img {
	padding: 0 8px;
	background-color: #fdfcf0;
}

.cols-movie {
	height: 388px;
}

.sect-common, .cols-movie {
	overflow: hidden;
	width: 980px;
	margin: 0 auto;
}

/* Movie Selection Slider Type */
.cols-movie .col-slider {
	float: left;
	width: 733px;
	height: 388px;
}

.cols-movie .col-slider>iframe {
	width: 733px;
	height: 388px;
}

.cols-movie .col-ad {
	float: right;
	width: 240px;
	height: 388px;
}

.cols-movie .col-ad>iframe {
	width: 240px;
	height: 388px;
}

/* img {
   vertical-align: middle;
} */
/* .ms_left{
   width: 76px;
   height: 450px;
   float: left;
} */
/* .ms {
   width: 980px;
   height: 41px;
   margin: 0 auto;
   background:
      url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg)
      repeat-x 0 50%;
   line-height: 41px;
   text-align: center;
   font-weight: 500;
   margin-top: 30px;
}

.ms_contents {
   width: 980px;
   height: 364px;
   float: left;
   margin: 0 auto;
}

.ms_contents_1 {
   width: 73%;
   height: 364px;
   background-color: red;
   float: left;
}

.ms_contents_2 {
   margin-left: 1%;
   width: 26%;
   height: 364px;
   background-color: blue;
   float: left;
} */

/* .ms_right{
   width: 76px;
   height: 450px;
   float: left;
} */
.tab-menu {
	clear: both;
	text-align: center;
	width: auto;
	height: 39px;
}

.tab-menu li.on a:before {
    content: '';
    display: inline-block;
    width: 26px;
    height: 39px;
    padding-right: 5px;
    background: #e71a0f url('https://img.cgv.co.kr/R2014/images/common/ico/ico_finger.png') 0 50% no-repeat;
    vertical-align: top;
}

.tab-menu li:first-child {
	padding-left: 20px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_corner.png') 0
		-20px no-repeat;
}

.tab-menu li:first-child a {
	background: #e71a0f;
}

.tab-menu li {
	display: inline-block;
	margin-left: -6px;
}

.tab-menu li a {
	display: inline-block;
	position: relative;
	height: 39px;
	padding: 0 15px;
	background: #e71a0f
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_tebmenu-line.gif')
		0 12px no-repeat;
	color: #ffffff;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	line-height: 39px;
}

.tab-menu .last {
	padding-right: 19px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/ribon_right.png')
		right 0 no-repeat;
}

.sect-event {
	min-height: 200px;
	margin-bottom: 30px;
	padding-bottom: 30px;
	border-bottom: 3px solid #241d1e;
}

.sect-event ul {
	width: 980px;
	height: 200px;
	clear: both;
	margin: 16 auto;
}

.sect-event li:first-child {
	margin-left: 0;
}

.sect-event li {
	float: left;
	margin-left: 6.6px;
}

.cols-banner {
	overflow: hidden;
	width: 980px;
	margin: 0 auto;
}

.cols-banner .col-ad, .cols-banner .col-hd, .cols-banner .col-collage {
	float: left;
}

.col-ad, .col-hd, .col-collage {
	margin: 0 auto;
}

.cols-banner .box-com {
	width: 228px;
	height: 261px;
	padding: 3px;
	border: 3px solid #241d1e;
}

.cols-banner .col-hd {
	position: relative;
	width: 486px;
	height: 273px;
	margin: 0 7px;
}


</style>
</head>
<body>
	<h3>
		<img
			src="https://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif"
			alt="MOVIE SELECTION">
	</h3>
	<div class="cols-movie 0" style="display: none;">
		<div id="Selection_L" class="col-slider">
			<iframe
				src="http://h.vod.cgv.co.kr:80/vodCGVa/85016/85016_195172_1200_128_960_540.mp4"
				width="733" height="388" title="" frameborder="0" scrolling="no"
				marginwidth="0" marginheight="0" name="Movie_Selection_L"
				id="Movie_Selection_L" allowfullscreen="allowfullscreen"
				mozallowfullscreen="mozallowfullscreen"
				msallowfullscreen="msallowfullscreen"
				oallowfullscreen="oallowfullscreen"
				webkitallowfullscreen="webkitallowfullscreen"></iframe>
		</div>

		<div id="Selection_R" class="col-ad">
			<iframe
				src="https://adimg.cgv.co.kr/images/202109/killingkind/1011_240x388_.jpg"
				width="240" height="388" title="영화광고-듄" frameborder="0"
				scrolling="no" marginwidth="0" marginheight="0"
				name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
		</div>

	</div>

	<div class="cols-movie 1" style="display: none;">
		<div id="Selection_L" class="col-slider">
			<iframe
				src="http://h.vod.cgv.co.kr:80/vodCGVa/84945/84945_195409_1200_128_960_540.mp4"
				width="733" height="388" title="" frameborder="0" scrolling="no"
				marginwidth="0" marginheight="0" name="Movie_Selection_L"
				id="Movie_Selection_L" allowfullscreen="allowfullscreen"
				mozallowfullscreen="mozallowfullscreen"
				msallowfullscreen="msallowfullscreen"
				oallowfullscreen="oallowfullscreen"
				webkitallowfullscreen="webkitallowfullscreen"></iframe>
		</div>

		<div id="Selection_R" class="col-ad">
			<iframe
				src="https://adimg.cgv.co.kr/images/202110/DUNE/1011_240x388.jpg"
				width="240" height="388" title="영화광고-듄" frameborder="0"
				scrolling="no" marginwidth="0" marginheight="0"
				name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
		</div>

	</div>

	<div class="cols-movie 2" style="display: none;">
		<div id="Selection_L" class="col-slider">
			<iframe
				src="http://h.vod.cgv.co.kr:80/vodCGVa/84943/84943_194969_1200_128_960_540.mp4"
				width="733" height="388" title="" frameborder="0" scrolling="no"
				marginwidth="0" marginheight="0" name="Movie_Selection_L"
				id="Movie_Selection_L" allowfullscreen="allowfullscreen"
				mozallowfullscreen="mozallowfullscreen"
				msallowfullscreen="msallowfullscreen"
				oallowfullscreen="oallowfullscreen"
				webkitallowfullscreen="webkitallowfullscreen"></iframe>
		</div>

		<div id="Selection_R" class="col-ad">
			<iframe
				src="https://adimg.cgv.co.kr/images/202109/Jolt/1004_240x388.jpg"
				width="240" height="388" title="영화광고-듄" frameborder="0"
				scrolling="no" marginwidth="0" marginheight="0"
				name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
		</div>

	</div>
	<h3>
		<img src="https://img.cgv.co.kr/R2014/images/title/h3_event.gif"
			alt="EVENT">
	</h3>
	<ul class="tab-menu">

		<li class="on"><a href="#" data-filter-type="08" title="현재 선택됨">CGV스페셜</a>
		</li>
		<li><a href="#" data-filter-type="02">영화/예매</a></li>
		<li><a href="#" data-filter-type="07">CGV아트하우스</a></li>
		<li><a href="#" data-filter-type="03">제휴/할인</a></li>
		<li class="last"><a href="#" data-filter-type="04">멤버십</a></li>
	</ul>
	<div class="sect-event">
		<ul>

			<li><a
				href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32998">
					<img
					src="https://img.cgv.co.kr/Front/Main/2021/0913/16315179619950.jpg"
					alt="CGV VIP EXPRESS">
			</a></li>

			<li><a
				href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32617&amp;menu=001">
					<img
					src="https://img.cgv.co.kr/Front/Main/2021/0913/16315139087750.jpg"
					alt="IMAX WORLD TRAVEL">
			</a></li>

			<li><a
				href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32759&amp;menu=001">
					<img
					src="https://img.cgv.co.kr/Front/Main/2021/0913/16315139088220.jpg"
					alt="CJ ONE 7% 적립">
			</a></li>

			<li><a
				href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31811">
					<img
					src="https://img.cgv.co.kr/Front/Main/2021/0330/16170705205160.jpg"
					alt="시그니처 K">
			</a></li>

		</ul>
	</div>
	<div class="cols-banner">
		<div class="col-ad">
			<div class="box-com">
				<div class="box-inner">
					<a
						href="http://www.cgv.co.kr/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3"><img
						src="https://img.cgv.co.kr/Front/Main/2021/0709/16258186526120.png"
						alt="기프트카드"></a>
				</div>
			</div>
		</div>
		<div class="col-hd">
			<a href="/arthouse"><img
				src="https://img.cgv.co.kr/R2014/images/main/main_moviecollage.jpg"
				alt="CGV ARTHOUSE, A Good Movie, A Better Life"></a>
		</div>
		<div class="col-collage">
			<div class="box-com">
				<div id="Branding_R" class="box-inner">
					<iframe
						src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Branding"
						width="226" height="259" title="기업광고-CGV 기프트 카드" frameborder="0"
						scrolling="no" marginwidth="0" marginheight="0" name="Branding"
						id="Branding"></iframe>
				</div>
			</div>
		</div>
	</div>

	
	<script type="text/javascript">
		i();

		function i() {
			let flag = Math.floor(Math.random() * (3));

			console.log(flag);

			if (flag == 0) {
				$('.0').show();
				$('.1').hide();
				$('.2').hide();
				console.log('0');
			} else if (flag == 1) {
				$('.1').show();
				$('.0').hide();
				$('.2').hide();
			} else if (flag == 2) {
				$('.2').show();
				$('.1').hide();
				$('.0').hide();
			}

		};
	</script>
</body>
</html>