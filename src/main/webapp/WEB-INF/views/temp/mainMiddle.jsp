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
	<script type="text/javascript">
		i();		
		
		function i () {
			let flag = Math.floor(Math.random() * (3));
			
			console.log(flag);
			
			if(flag == 0){							
				$('.0').show();
				$('.1').hide();
				$('.2').hide();
				console.log('0');
			}else if(flag == 1){				
				$('.1').show();
				$('.0').hide();
				$('.2').hide();
			}else if(flag == 2){			
				$('.2').show();
				$('.1').hide();
				$('.0').hide();
			}
			
		};
		
		
	</script>
</body>
</html>