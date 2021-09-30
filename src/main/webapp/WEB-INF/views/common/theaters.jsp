<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<h3 data-th-theater='${dto.theater}'>${dto.theater}</h3>
	<table class="table">
		<c:forEach items="${dto.moths}" var="d">
			<tr>
				<td id="watch" data-th-watch='${d.watchDate}'>${d.watchDate}</td>
				<td id="movie" data-th-movie='${d.movieName}'>${d.movieName}</td>
				
			</tr>
			<tr>
				<td data-th-table="${dto.timeTable1}" class="time"><button>오전 9시 _구분[${dto.timeTable1}]</button></td>
				<td data-th-table="${dto.timeTable2}" class="time"><button>오후 1시 _구분[${dto.timeTable2}]</button></td>
				<td data-th-table="${dto.timeTable3}" class="time"><button>오후 4시 _구분[${dto.timeTable3}]</button></td>
				<td data-th-table="${dto.timeTable4}" class="time"><button>오후 7시 _구분[${dto.timeTable4}]</button></td>
			</tr>
		</c:forEach>
	
	</table>

</div>