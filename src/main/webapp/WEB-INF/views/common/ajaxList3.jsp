<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">

.time{
	margin: 10px 0 10px 0;
}

</style>

<div class="time">
<c:forEach items="${timeTable}" var="dto">
	
	<c:if test="${dto.timeTable1==1}">
		<tr align=center>
			<td><a href="#">09:00~12:00</a></td>
		</tr>
	</c:if>
	<br>
	<c:if test="${dto.timeTable2==1}">
		<tr align=center>
			<td><a href="#">12:00~15:00</a></td>
		</tr>
	</c:if>
	<br>
	<c:if test="${dto.timeTable3==1}">
		<tr align=center>
			<td><a href="#">15:00~18:00</a></td>
		</tr>
	</c:if>
	<br>
	<c:if test="${dto.timeTable4==1}">
		<tr align=center>
			<td><a href="#">18:00~21:00</a></td>
		</tr>
	</c:if>

</c:forEach>
</div>