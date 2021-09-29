<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
	
	<h1><%-- ${board} --%> Board List Page</h1>
	
	<form action="./list" method="get">
	
	<table class="table-secondary table table-striped">
		<tr align=center>
				<th>NUM</th><th>CODE</th><th>TITLE</th><th>HITS</th>						
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr align=center>
				<td>${dto.num}</td>
				<td>${dto.cord}</td>
				<td><a href="./select?num=${dto.num}"> ${dto.title} </a></td>
				<td>${dto.hits}</td>						
			</tr>
			
		</c:forEach>
	</table>
	<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link"
					href="./list?kind=${pager.kind}&search=${pager.search}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>

				<li class="page-item"><a class="page-link"
					href="./list?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}"
					aria-label="Previous"> <span aria-hidden="true">&lt;</span>
				</a></li>

				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
					<li class="page-item"><a class="page-link"
						href="./list?pn=${n}&kind=${pager.kind}&search=${pager.search}">${n}
					</a></li>
				</c:forEach>

				<li class="page-item"><a class="page-link"
					href="./list?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}"
					aria-label="Next"> <span aria-hidden="true">&gt;</span>
				</a></li>

				<li class="page-item"><a class="page-link"
					href="./list?pn=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	
	<a href="./insert" class="btn btn-danger">ADD</a>
	
</body>
</html>