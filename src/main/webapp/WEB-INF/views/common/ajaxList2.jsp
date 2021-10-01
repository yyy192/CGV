<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<h1>날짜를 선택해주세요</h1>

<c:forEach items="${watchDate}" var="dto">

	<tr align=center>
		<td><button class="watchDate" type="button"
            data-board-theater="${dto.theater}"
            data-board-watchDate="${dto.watchDate}"
            data-board-movieName="${dto.movieName}">${dto.watchDate}</button></td>
	</tr>
</c:forEach>