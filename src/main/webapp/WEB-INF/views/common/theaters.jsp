<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>${dto.theater}</h3>
<table class="table">
<c:forEach items="${dto.moths}" var="d">
	<tr>
		<td>${d.movieName}</td>
		<td>${d.watchDate}</td>
	</tr>
	<tr>
		<td data-th-table1="${dto.timeTable1}">오전 9시_${dto.timeTable1}</td>
		<td data-th-table2="${dto.timeTable2}">오후 1시_${dto.timeTable2}</td>
		<td data-th-table3="${dto.timeTable3}">오후 4시_${dto.timeTable3}</td>
		<td data-th-table4="${dto.timeTable4}">오후 7시_${dto.timeTable4}</td>
	</tr>
</c:forEach>

</table>