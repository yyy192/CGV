<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${theater}" var="dto">

	<tr align=center>
		<td><button class="theater" type="button" data-board-theater="${dto.theater}" data-board-movieName="${dto.movieName}">${dto.theater}</button></td>
	</tr>
</c:forEach>