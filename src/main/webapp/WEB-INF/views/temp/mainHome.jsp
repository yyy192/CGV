<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	/* width: auto;
	height: 900px;
	
	font-size: 20px;
	text-align: center; */
}
.m_top {
	width: 100%;
	height: 30px;
}
.m_bottom {
	width: 100%;
	height: 119px;
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
.menu{
	width:400px;
	height:30px;	
	margin: 0 auto;
}
.left {
	width: 10%;
	height: 149px;
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	float: left;
	background-repeat: repeat-x;
	background-size: 11px, 149px;
}
.middle {
	width: 80%;
	height: 149px;
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	float: left;
	background-size: 11px, 149px;
}
.right {
	width: 10%;
	height: 149px;
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
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
#section {
	width: 100%;
	height: 600px;
	background-color: red;
	line-height: 600px;
	float: left;
}
#footer {
	width: 100%;
	height: 100px;
	background-color: black;
	line-height: 100px; /*글자나 이미지 위치 정렬*/
	color: white;
	float: left;
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
/* .menu {
	position: absolute;
	margin: 0 400px;
	width: 376px;
	height: 35px;
	width: 376px;
}
 */
#header>.headerCenter h1 {
	top: 19px;
	left: 77px;
	width: 223px;
	height: 85px;
	padding: 38px 0 0 22px;
	z-index: 110;
	position: absolute;
}
#header>.headerCenter h2 {
	position: absolute;
	top: 36px;
	left: 50%;
	width: 428px;
	height: 31px;
	padding: 21px 0 0 400px;
	text-align: center;
}
.nav1 {
	float: right;	
}
/* .nav2 {
	width: 500px;
	padding: 20px 0 0 0px;
} */
ul li {
	list-style-type: none;
	float: left;
	margin-top: 5px;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="left"></div>
		<div class="middle">
			<div class="m_top">
				<ul class="nav1">
					<c:choose>
						<c:when test="${not empty member}">
							<li class="nav-item"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/mypage">MY
									CGV</a></li>
							<li class="nav-item"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/memberLogout">로그아웃</a>
							</li>
						</c:when>

						<c:otherwise>
							<li class="nav-item"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/memberLogin">로그인</a>
							</li>
							<li class="nav-item"><a class="nav-link text"
								href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a>
							</li>
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
						src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png"
						alt="CGV"></a>
				</div>
				<div class="menu">
					<ul>
						<li><a class="text" href="#">영화</a></li>
						<li><a class="text" href="./ticket/list">예매</a></li>
						<li><a class="text" href="#">극장</a></li>
						<li><a class="text" href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="right"></div>
	</div>
</body>
</html>
<%-- <div id="header">
	<div class="headerService">
		<ul class="nav1">
			<c:choose>
				<c:when test="${not empty member}">
					<li class="nav-item"><a class="nav-link text"
						href="${pageContext.request.contextPath}/member/mypage">MY CGV</a></li>
					<li class="nav-item"><a class="nav-link text"
						href="${pageContext.request.contextPath}/member/memberLogout">로그아웃</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link text"
						href="${pageContext.request.contextPath}/member/memberLogin">로그인</a>
					</li>
					<li class="nav-item"><a class="nav-link text"
						href="${pageContext.request.contextPath}/member/check">회원가입</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div class="headerCenter">
		<h1>
			<a href="${pageContext.request.contextPath}/"> <img
				src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV"></a>
		</h1>
		<h2>
			<a href="./"> <img
				src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png"
				alt="CGV"></a>
		</h2>
		<div class="menu">
			<ul class="nav2">
				<li><a class="text" href="#">영화</a></li>
				<li><a class="text" href="#">예매</a></li>
				<li><a class="text" href="#">극장</a></li>
				<li><a class="text" href="#">고객센터</a></li>
			</ul>
		</div>
	</div>
</div> --%>