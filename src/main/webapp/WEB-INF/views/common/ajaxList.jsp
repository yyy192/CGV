<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.theater {
	margin: 10px 0 10px 0;
}
</style>
<c:forEach items="${theater}" var="dto">

	<tr align=center>
		<td><button class="theater" type="button"
				data-board-theater="${dto.theater}"
				data-board-movieName="${dto.movieName}">${dto.theater}</button> <br>
		</td>
	</tr>
</c:forEach>