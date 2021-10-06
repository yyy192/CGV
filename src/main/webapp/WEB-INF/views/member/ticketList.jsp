<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>예매내역 확인</h1>
<div align="center">
	<c:forEach items="${list}" var="dto">
		<h3>영 화 관</h3>${dto.theater}
		<h3>영화 이름</h3>${dto.movieName}
		<h3>상영 날짜</h3>${dto.watchDate}
		<h3>상영 시간</h3>${dto.timeTable}
		<h3>좌    석</h3>${dto.seat}
		<h3>가    격</h3>${dto.price}
		<hr>
		</c:forEach>
</div>
</body>
</html>