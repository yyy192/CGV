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

	p, h3 {
		margin : 0px;
		border : 0px;
		padding : 0px;
	}
	
	body, input, select, textarea, header, footer {
	    color: #333;
	    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
	    font-size: 12px;
	    font-weight: normal;
	}
	
	b{
	    font-weight: bold;
	    font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
	    font-size: 22.8px; 
	    color: #5A5A5A;
	}
	
	.col-head {
		width: 992px;
		height: 33px;	
		text-align: center;
		vertical-align : middle;
		margin : 0px auto;
		background-color: #333333;
		font-size: 0.5em;
		font-weight: bold;
		color: #cccccc;
		background-position: 50% -124px;
		
	}
	
	h3 {
	    display: block;
	    font-size: 15px;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	}
	
	
		
	#user-select-info {
	    float : right;
	    width: 50%;
	    margin: 0 0 0 2px;
	}
	
	.restNum {
		font-weight: bold;
	    font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
	    font-size: 12px;
		color: #CA4D10;
	}
	
	.totalNum {
		font-weight: bold;
	    font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
	    font-size: 12px;
		color: #5A5A5A;
	}
	
	

	
	#ticket .section-numberofpeople .col-body .numberofpeople-select .group {
   		float: left;
    	margin-bottom: 8px;
	}
	
	#ticket .step2 .section-numberofpeople .col-body .numberofpeople-select {
	    margin-left: 15px;
	    padding-right: 18px;
	    border-right: 1px solid #d4d3c9;
	    display: inline-block;
	}
	
	#ticket .section-numberofpeople .col-body .numberofpeople-select .group span.title {
	    float: left;
	    width: 55px;
	    height: 22px;
	    line-height: 22px;
	    color: #666;
	    letter-spacing: -0.1em;
	}
	
	#ticket .section-numberofpeople .col-body .numberofpeople-select {
	    display: block;
	    height: 100%;
	    color: #333;
	    font-family: Verdana;
	    font-size: 14px;
	    font-weight: bold;
	    text-align: center;
	}
	
	#ticket .section-numberofpeople .col-body .numberofpeople-select {
	    margin: 1px;
	    border: 1px solid #fff;
	    color: #fff;
	    width: 16px;
	    height: 16px;
	    line-height: 16px;
	}
	
	#user-select-info p.theater-info span {
	    font-size: 12px;
	    padding: 0 11px 0px 0px;
	    border-right: 1px solid #ccc;
	    max-width: 200px;
	    height: 15px;
	    display: inline-block;
	    overflow: hidden;
	    /* white-space: nowrap; */
	    /* text-overflow: ellipsis; */
	}
	
	#user-select-info p.watchDate {
	    display: inline-block;
	    line-height: 1.2em;
	    margin-top: 12px;
	    color: #5a5a5a;
	}
	
	#user-select-info p.watchDate b {
	    display: block;
	    float: left;
	    line-height: 20px;
	}

	.mouse_block{
		width: 992px;
		height: 385px;
		margin : 0px auto;
		background-color: #F7F7EF;
	}
	
	.tnb_container{
		width: 1270px;
		height: 128px;
		margin: 0 auto;
		background-color: #1D1D1D;
	}
	
	.tnb{
		margin: 0 auto;
    	width: 996px;
    	height: 108px;
    	padding: 10px 0;
    	position: relative;
		background-color: #1D1D1D;
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
	    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/split.png) no-repeat right; 
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
	    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -68px;
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
	
	.person_screen{
		
		width: 992px;
		height: 79px;
		margin: 0px auto;
		padding: 17px 0 3px 0;
		
		display: block;
		background-color: #F2F0E4;
		border-bottom: 2px solid #d4d3c9;
		
	}
	
	
	.change_time_btn span{
	line-height: 18px;
	text-align: center;
	border: 1px solid #745447;
	background-color: #926f60;
    border-radius: 3px;
   
	}
	
	.change_time_btn{
	bottom: 9px;
    margin-right: 25px;
	
	font-size: 11px;
    color: #fff;
    cursor: pointer;
    text-decoration: none;
  	float: right;
	}
	
	.sreader {
	    display: block;
	    
	    vertical-align: middle;
	}
	
	.kkkkk{
	font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    line-height: 33px;
    text-align: center;
    font-size: 18px;
    font-weight: normal;
	}
	
	.section-numberofpeople {
		width: 445px;
		height : 78px;
	    margin-left: 15px;
	    padding-right: 18px;
	    border-right: 1px solid #d4d3c9;
	    display: inline-block;
	    float: left;
	}
	
	#ticket .section-seat .person_screen .section {
	   /*  float: left; */
	}
	
	.hhhhh{
		margin: 0px auto;
	}
	
	.tnb .info.theater .row .data {
	    width: 135px;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    overflow: hidden;
	}
	
	.tnb .info.movie .movie_poster {
	    float: left;
	    width: 74px;
	    height: 108px;
	    line-height: 108px;
	    margin-right: 11px;
	    overflow: hidden;
	}
	
	.tnb .info.movie .movie_poster img {
	    width: 100%;
	    vertical-align: middle;
	}
	
	.tnb .info .row.colspan2 {
	    height: 40px;
	    overflow: hidden;
	}
	
	.tnb .info.movie .row.movie_title {
	    margin-top: 14px;
	    display: none;
	}

	
	
	
	
</style>
<c:import url="../temp/mainHome.jsp"></c:import>

</head>
<body>
	<div class="hhhhh">
	<div class="col-head">
	<span class="kkkkk">정보&nbsp;/&nbsp;좌석</span>
<!-- 		<h3 class="sreader">인원&nbsp;/&nbsp;좌석</h3>
 -->	</div>
	<div class="person_screen">
		<div class="col-body">
			<div class="section section-numberofpeople">
							<span>&nbsp;&nbsp;회원님의 나이는 23세 입니다.</span><br><br>
							<span>&nbsp;&nbsp;가격은 일반 요금이 적용됩니다.</span>		
			</div>
		</div>
	<div class="section section-screen-select">
		<div id="user-select-info">
										<p class="theater-info">
											<span class="theaterName">${ticketDTO.theater }</span>
											<span class="movieName">${ticketDTO.movieName }</span>
											<span class="seatNum">남은좌석  <b class="restNum">34</b>/<b class="totalNum">34</b></span>
										</p>
										<p class="watchDate"><b>${ticketDTO.watchDate}</b><b> &nbsp;&nbsp;/&nbsp;&nbsp; </b><b>${ticketDTO.timeTable}</b></p>
									</div>
									
	</div>
	<a class="change_time_btn" href="#"><span>상영시간 변경하기</span></a>
	</div>
	</div>
	
	<div class="mouse_block">
		
	</div>
	<div id="ticket_tnb" class="tnb_container">
		<div class="tnb step2">
			<!-- btn-left -->
			<a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">
				<c:if test="${ticketDTO.movieName eq '보이스'}">
					<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84872/84872_185.JPG" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<c:if test="${ticketDTO.movieName eq '007 노 타임 투 다이'}">
					<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83003/83003_185.JPG" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<c:if test="${ticketDTO.movieName eq '스틸워터'}">
					<span class="movie_poster"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85014/85014_320.jpg" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<c:if test="${ticketDTO.movieName eq '샹치와 텐 링즈의 전설'}">
					<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84834/84834_185.JPG" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<c:if test="${ticketDTO.movieName eq '캔디맨'}">
					<span class="movie_poster"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84940/84940_320.jpg" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<c:if test="${ticketDTO.movieName eq '기적'}">
					<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_185.JPG" alt="영화 포스터" style="display: inline;"></span>
				</c:if>
				
				<div class="row movie_title colspan2" style="display: block;">
					<span class="data letter-spacing-min ellipsis-line2">${ticketDTO.movieName}</span>
				</div>
				<div class="row movie_type" style="display: block;">
					<span class="data ellipsis-line1" title="2D">2D</span>
				</div>
				<div class="row movie_rating" style="display: block;">
					<span class="data" title="12세 관람가">12세 관람가</span>
				</div>
				<div class="placeholder" title="영화선택" style="display: none;"></div>
			</div>
			
			<div class="info theater">
				<div class="row name" style="display: block;">
					<span class="header">극장</span>
					<span class="data letter-spacing-min ellipsis-line1">${ticketDTO.theater}</span>
				</div>
				<div class="row date" style="display: block;">
					<span class="header">일시</span>
					<span class="data">${ticketDTO.watchDate}</span>
				</div>
				
				<div class="row number" style="display: block;">
					<span class="header">인원</span>
					<span class="data" title="">1명</span>
				</div>
			</div>
			
			<div class="info seat">
				<div class="row seat_name" style="height: 0px;">
					<span class="header">좌석번호</span>
					<span class="data" title=""></span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header"></span>
					<span class="data ellipsis-line3 qqq" ></span>
				</div>
				<div class="placeholder" title="좌석선택"></div>
			</div>
			
			
			
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); return false;" title="결제선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
			</div>
		</div>
		
		
	</div>

</body>
</html>