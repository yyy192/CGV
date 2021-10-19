<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>CGV</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
a {
	text-decoration: none;
}
#wrap {
	width: 100%;
	height: 150px;
	min-width: 1024px;
	text-align: center;
	margin: 0px auto;
	background: #fdfcf0 url(https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif) repeat-x 0 0;
	/* width: auto;
   height: 900px;
   
   font-size: 20px;
   text-align: center; */
}
.m_top {
	width: 980px;
	height: 30px;
	margin: 0 auto;
}
.m_bottom {
	width: 100%;
	height: 119px;
	margin: 0 auto;
}
.cgvLogo {
	float: left;
	padding: 15px;
}
.cultureLogo {
	width: 240px;
	height: 20px;
	padding: 15px;
	margin: 0 auto;
	padding-top: 29.5px;
}
.menu {
	width: 400px;
	height: 30px;
	margin: 0 auto;
}
.left {
	width: 10%;
	height: 149px;
	/* background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif"); */
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	float: left;
	background-repeat: repeat-x;
	background-size: 11px, 149px;
}
.middle {
	width: 80%;
	height: 149px;
	/* background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif"); */
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	float: left;
	background-size: 11px, 149px;
}
.right {
	width: 10%;
	height: 149px;
	/* background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif"); */
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	float: left;
	background-repeat: repeat-x;
	background-size: 11px, 149px;
}
/* #header {
   width:60%
   background-image:
      url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
   background-repeat: repeat-x;
   background-size: 11px, 149px;
   padding-bottom: 100px;
   height: 50px;
   min-width: 980px;
   position: relative;
} */
#nav {
	width: auto;
	height: 100px;
	background-color: yellow;
	line-height: 100px; /*글자나 이미지 위치 정렬*/
}
.heaberService {
	margin-left: 22px;
	margin-right: 22px;
	position: relative;
	position: absolute;
}
.headerCenter {
	margin-left: 22px;
	margin-right: 22px;
	position: relative;
	z-index: 100;
	height: 50px;
	padding-top: 69px;
	position: absolute;
}
.nav1 {
	float: right;
}
.menu ul li {
	list-style-type: none;
	float: left;
	margin-top: 5px;
	margin-left: 30px;
}
.m_top ul li {
	list-style-type: none;
	float: left;
	margin-left: 15px;
}
.m_top_1 {
	width: 400px;
	height: 30px;
	float: left;
}
li {
	list-style: none;
}
.menu>ul>li.movie {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: 13px -27px;
	width: 60px;
}
.menu>ul>li.booking {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -77px -27px;
	width: 60px;
}
.menu>ul>li.theaters {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -166px -27px;
	width: 60px;
}
.menu>ul>li.customer {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -517px -27px;
	width: 90px;
}
.m_top>ul>li.nav-item-in {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: 10px 9px;
	width: 40px;
}
.m_top>ul>li.nav-item-join {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -48px 9px;
	width: 50px;
}
.m_top>ul>li.nav-item-customer {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -338px 9px;
	width: 50px;
}
.m_top>ul>li.nav-item-out {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -521px 9px;
	width: 50px;
}
.m_top>ul>li.nav-item-mypage {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	background-position: -110px 9px;
	width: 50px;
}
.m_top>ul>li.nav-item-vip {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	width: 65px;
	height: 21.33px;
	background-position: -180px 10px;
}
.m_top>ul>li.nav-item-club {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	width: 53px;
	background-position: -265px 9px;
	height: 21.33px;
}
.m_top>ul>li.nav-item-english {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
	width: 106px;
	padding-right: 0;
	background-position: -398px 9px;
}
.m_top_1>.nav-app {
	float: left;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
	background-repeat: no-repeat;
	text-indent: 100%;
	white-space: nowrap;
	width: 74px;
	height: 30px;
	background-position: 6px -714px;
	padding: 0 10px;
	border-left: 1px solid #D8D8D8;
}
.m_top_1>.nav-facebook {
	float: left;
	width: 44px;
	height: 30px;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
	background-repeat: no-repeat;
	text-indent: 100%;
	white-space: nowrap;
	background-position: -85px -714px;
	padding: 0 10px;
	border-left: 1px solid #D8D8D8;
}
.m_top_1>.nav-insta {
	float: left;
	width: 60px;
	height: 30px;
	background-position: -263px -714px;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
	background-repeat: no-repeat;
	text-indent: 100%;
	white-space: nowrap;
	padding: 0 10px;
	border-left: 1px solid #D8D8D8;
}
.m_top_1>.nav-watching {
	float: left;
	width: 85px;
	height: 30px;
	background-position: -151px -714px;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
	background-repeat: no-repeat;
	text-indent: 100%;
	white-space: nowrap;
	padding: 0 10px;
	border-left: 1px solid #D8D8D8;
	border-right: 1px solid #D8D8D8;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="left"></div>
		<div class="middle">
			<div class="m_top">
				<div class="m_top_1">
					<div class="nav-app"></div>
					<div class="nav-facebook"></div>
					<div class="nav-insta"></div>
					<div class="nav-watching"></div>
				</div>
				<ul class="nav1">
					<c:choose>
						<c:when test="${not empty member}">
							<li class="nav-item-out"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/memberLogout">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
							</li>
							<li class="nav-item-mypage"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/mypage">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li class="nav-item-vip"><a
								href="http://www.cgv.co.kr/user/vip-lounge/" class="vip"></a></li>
							<li class="nav-item-club"><a
								href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx"
								title="새창" class="club specialclub"></a></li>
							<li class="nav-item-customer"><a class="nav-link text"
								href="${pageContext.request.contextPath}/notice/list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li class="nav-item-english"><a class="nav-link text"
								href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item-in"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/memberLogin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
							</li>
							<li class="nav-item-join"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/check">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
							</li>
							<li class="nav-item-mypage"><a
								class="nav-link text mypagekey"
								href="${pageContext.request.contextPath}/member/memberLogin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li class="nav-item-vip"><a
								href="${pageContext.request.contextPath}/member/memberLogin"
								class="vip"></a></li>
							<li class="nav-item-club"><a
								href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx"
								title="새창" class="club specialclub"></a></li>
							<li class="nav-item-customer"><a class="nav-link text"
								href="${pageContext.request.contextPath}/notice/list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li class="nav-item-english"><a class="nav-link text"
								href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<div class="m_bottom">
				<div class="cgvLogo">
					<a href="${pageContext.request.contextPath}/" class="cgvLogo">
						<img src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png"
						alt="CGV">
					</a>
				</div>
				<div class="cultureLogo">
					<a href="#"> <img
						src="https://img.cgv.co.kr/R2014/images/title/h2_ticket.png"
						alt="CGV"></a>
				</div>
				<div class="menu">
					<ul>
						<li class="movie"><a
							href="${pageContext.request.contextPath}/movies/list">&nbsp;&nbsp;&nbsp;</a></li>
						<li class="booking"><a
							href="${pageContext.request.contextPath}/ticket/list">&nbsp;&nbsp;&nbsp;</a></li>
						<li class="theaters"><a
							href="${pageContext.request.contextPath}/theaters/list">&nbsp;&nbsp;&nbsp;</a></li>
						<li class="customer"><a href="#">&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="right"></div>
	</div>
	<script type="text/javascript">
		$('.mypagekey').click(function() {
			alert('로그인이 필요한 서비스입니다.\n로그인 페이지로 이동하시겠습니까?');
		})
	</script>
</body>
</html>