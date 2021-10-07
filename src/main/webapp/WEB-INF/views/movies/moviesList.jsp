<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
		
		<div class="size" style="display:none">${test2 + 1}</div>

	<c:forEach items="${test}" var="dto" varStatus="loop">
		<div class="${loop.count}">${dto}</div>
	</c:forEach>

	<div>
		<button class="btn2">ㅁㄴㅇㄻㄴㅇㄹ</button>
		
		<button class="A1">지워져야함</button>
		<button class="A2">dfadfasdfasd</button>
		<button class="B5">지워져야함2</button>
		
	</div>

	<script type="text/javascript">
		
		x();
		
		function x () {
			
			var p = $('.size').html();
			console.log(p);
			
			for(var i=1; i<p; i++) {
				let t = $('.'+i).html();  // .1   .2
				console.log(t);
				$('.'+t).attr('disabled', true);
			}

		};
	</script>
</body>
</html>
