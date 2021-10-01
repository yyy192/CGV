<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">

.watchDate{
	margin: 10px 0 10px 0;
}

</style>   


<c:forEach items="${watchDate}" var="dto">

	<tr align=center>
		<td><button class="watchDate" type="button" data-board-theater="${dto.theater}">${dto.watchDate}</button>
		<br>
		</td>
	</tr>
</c:forEach>