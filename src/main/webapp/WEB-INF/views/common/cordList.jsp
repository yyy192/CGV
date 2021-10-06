<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 몇 개 검색되었는지 -->
	<c:if test="${not empty pager.search}">
		<h4>"${pager.search}"가 총 ${count}건이검색되었습니다.</h4>
	</c:if>
	<c:if test="${empty pager.search}">
		<h4>총 ${count}건이 검색되었습니다.</h4>
	</c:if>
	
<table class="table-secondary table table-striped">
		<tr align=center>
				<th>번호</th><th>구분</th><th>제목</th>
				<c:if test="${board eq 'notice'}"><th>등록일</th></c:if>
				<th>조회수</th>						
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr align=center>
				<td>${dto.num}</td>
				<td>${dto.cord}</td>
				<td><a href="./select?num=${dto.num}"> ${dto.title} </a></td>
				<c:if test="${board eq 'notice'}"><td>${dto.regDate}</td></c:if>
				<td>${dto.hits}</td>						
			</tr>
			
		</c:forEach>
</table>

	<!-- Paging -->
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="./list?keyword=${pager.keyword}&search=${pager.search}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    
			    <li class="page-item">
			      <a class="page-link" href="./list?pn=${pager.startNum-1}&keyword=${pager.keyword}&search=${pager.search}" aria-label="Previous">
			        <span aria-hidden="true">&lt;</span>
			      </a>
			    </li>
			    
			    <c:forEach begin="${pager.startNum}" end="${pager.endNum}" var="n">
					<li class="page-item">
						<a class="page-link" href="./list?pn=${n}&keyword=${pager.keyword}&search=${pager.search}">
							${n}
						</a>
					</li>
				</c:forEach>
				
				<li class="page-item">
			      <a class="page-link" href="./list?pn=${pager.endNum+1}&keyword=${pager.keyword}&search=${pager.search}" aria-label="Next">
			        <span aria-hidden="true">&gt;</span>
			      </a>
			    </li>
			    
			    <li class="page-item">
			      <a class="page-link" href="./list?pn=${pager.totalPage}&keyword=${pager.keyword}&search=${pager.search}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>