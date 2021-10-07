<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
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
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	
	<div>
	<c:if test="${dto.movieName eq '보이스'}">
		<span class="movie_poster"><img
			src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84872/84872_185.JPG"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<c:if test="${dto.movieName eq '007 노 타임 투 다이'}">
		<span class="movie_poster"><img
			src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83003/83003_185.JPG"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<c:if test="${dto.movieName eq '스틸워터'}">
		<span class="movie_poster"><img
			src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85014/85014_320.jpg"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<c:if test="${tdto.movieName eq '샹치와 텐 링즈의 전설'}">
		<span class="movie_poster"><img
			src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84834/84834_185.JPG"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<c:if test="${dto.movieName eq '캔디맨'}">
		<span class="movie_poster"><img
			src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84940/84940_320.jpg"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<c:if test="${dto.movieName eq '기적'}">
		<span class="movie_poster"><img
			src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_185.JPG"
			alt="영화 포스터" style="display: inline;"></span>
	</c:if>

	<h3>${dto.movieName}</h3>
	<h3>${dto.ageCut}</h3>
	<h3>${dto.rate}</h3>
	<h3>${dto.direc}</h3>
	<h3>${dto.actor}</h3>
	<h3>${dto.genre}</h3>
	<h3>${dto.runTime}</h3>
	<h3>${dto.openDate}</h3>
	<h3>${dto.info}</h3>
	
	</div>
</body>
</html>


