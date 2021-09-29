<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.navmain {
	background-image : url("./images/bgImage.png");
	background-repeat: repeat-x;
	background-size: 11px, 149px;
	padding-bottom: 100px;
	height: 149px;
}

/* .navtop {
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
	background-size: 150px, 6.5px;	
	padding-bottom: -10px;
} */
.text {
	font-size: 17.6px;
	line-height: 1.2;
	color: black;
	font-weight: 650;
}

.text2 {
	font-size: 12px;
	line-height: 1.2;
	color: black;
	font-weight: 500;
}

.cgvimage {
	top: 40px;
	left: 0;
	width: 223px;
	height: 85px;
	margin: 134px 0 0 108.5px;
	z-index: 110;
}

.mainmenu {
	top: 40px;
	left: 0;
	width: 223px;
	height: 85px;
	margin: 150px 0 0 150px;
	z-index: 1;
}

.cultureimage {
	position: absolute;
	top: 58px;
	left: 50%;
	width: 428px;
	height: 31px;
	margin-left: -214px;
	text-align: center;
	
}

.a{
	marg
}

.login{
	
}
</style>

<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="./member/memberLogin">로그인</a>
  </li>  
  <li class="nav-item">
    <a class="nav-link" href="./member/check">회원가입</a>
  </li>
</ul>

<nav class="navbar navbar-expand-lg justify-content-center navmain">
		<div class="container-fluid" align="center">
		<a class="navbar-brand cgvimage"
			href="${pageContext.request.contextPath}/"><img
			src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="cultureimage">
			<img style=""
				src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png"
				alt="CGV">
		</div>
		<div class="collapse navbar-collapse mainmenu" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> 영화 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">MOVIE CHART</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> 예매 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">FAST BOOKING</a></li>
						<li><a class="dropdown-item" href="#">MOVIE TIMETABLE</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text"
					href="${pageContext.request.contextPath}/qna/list">극장</a></li>
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> 고객센터 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">NOTICE</a></li>
						<li><a class="dropdown-item" href="#">QUESTION</a></li>
					</ul></li>
				<c:choose>

					<c:when test="${not empty member}">
						<li class="nav-item"><a class="nav-link text"
							href="${pageContext.request.contextPath}/member/mypage">MY
								CGV</a></li>
						<li class="nav-item"><a class="nav-link text"
							href="${pageContext.request.contextPath}/member/memberLogout">LOGOUT</a>
						</li>
					</c:when>

					<c:otherwise>
						<li class="nav-item"><a class="nav-link text"
							href="${pageContext.request.contextPath}/member/check">CHECK</a>
						</li>
						<li class="nav-item"><a class="nav-link text"
							href="${pageContext.request.contextPath}/member/memberLogin">LOGIN</a>
						</li>
					</c:otherwise>

				</c:choose>
			</ul>
		</div>
	</div>
</nav>