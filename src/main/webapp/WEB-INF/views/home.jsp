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

#wrap {
	width: 100%;
	min-width: 1024px;
	text-align: center;
	margin: 0px auto;
	/* width: auto;
	height: 900px;
	
	font-size: 20px;
	text-align: center; */
}

#header {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	padding-bottom: 100px;
	height: 50px;
	min-width: 980px;
	position: relative;
}

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

.menu {
	position: absolute;
	margin: 0 400px; width : 376px;
	height: 35px;
	width: 376px;
}

#header>.headerCenter h1 {
	top: 19px;
	left: 77px;
	width: 223px;
	height: 85px;
	padding: 18px 0 0 22px;
	z-index: 110;
	position: absolute;
}

#header>.headerCenter h2 {
	position: absolute;
	top: 36px;
	left: 50%;
	width: 428px;
	height: 31px;
	margin: 1px 396px;
	text-align: center;
}

.nav{
	float: left;
}
</style>
</head>
<body>

	<div id="wrap">
		<div id="header">
			<div class="headerService">
				<h6>로그인</h6>
			</div>
			<div class="headerCenter">
				<h1>
					<a href="./"> <img
						src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png"
						alt="CGV"></a>
				</h1>
				<h2>
					<a href="./"> <img
						src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png"
						alt="CGV"></a>
				</h2>
				<div class="menu">
					<ul class="nav">
						<li><a class="text" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> 영화 </a></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="nav">nav(메뉴)</div>

		<div id="section">section(실제 출력부분)</div>
		<div id="footer">footer(회사정보,개인정보방침)</div>
	</div>
</body>
</html>
