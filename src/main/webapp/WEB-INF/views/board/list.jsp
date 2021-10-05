<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	
	<c:if test="${board eq 'notice'}">
		<h2>공지/뉴스</h2>
		<h3>CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</h3>
	</c:if>
	<c:if test="${board eq 'question'}">
		<h1>자주찾는 질문</h1>
		<h4>회원님들께서 가장 자주하시는 질문을 모았습니다.<br>궁금하신 내용에 대해 검색해보세요.</h4>
	</c:if>
	<br>
	
	<!-- Search Form Start -->
			<c:if test="${board eq 'notice'}">
				<form action="./list" method="get">
		
					<div class="input-group mb-3">
					
					<c:if test="${empty pager.keyword or pager.keyword eq 'title'}">
						<select data-board-keyword="${pager.keyword}" id="keyword" name="keyword" class="form-select" aria-label="Default select example">
						 <option selected="selected" value="title">제목</option>
						 <option value="contents">내용</option>
					 	</select>
					</c:if>
					<c:if test="${pager.keyword eq 'contents'}">
						<select data-board-keyword="${pager.keyword}" id="keyword" name="keyword" class="form-select" aria-label="Default select example">
						 <option value="title">제목</option>
						 <option selected="selected" value="contents">내용</option>
					 	</select>
					</c:if>
					  
					 <input value="${pager.search}" id="search" type="text" name="search" placeholder="검색어를 입력해 주세요." class="form-control" aria-label="Text input with dropdown button">
					 <button type="submit" class="btn btn-outline-secondary">검색하기</button>
					</div>
					
				</form>
			</c:if>
			<c:if test="${board eq 'question'}">
				<form action="./list" method="get">
		
					<div class="input-group mb-3">
					 <input value="${pager.search}" id="search" type="text" name="search" placeholder="검색어를 입력해 주세요." class="form-control" aria-label="Text input with dropdown button">
					 <button type="submit" class="btn btn-outline-secondary">검색하기</button>
					</div>
					
				</form>
			</c:if>
			
	<!-- Search Form Finish -->
	
	<br>
	<br>
	
	<div id="cordBtn">
	
	<c:if test="${board eq 'notice'}">
		<button class="a" type="button" data-board-cord="">전체</button>
		<button class="a" type="button" data-board-cord="시스템점검">시스템점검</button>
		<button class="a" type="button" data-board-cord="극장">극장</button>
		<button class="a" type="button" data-board-cord="기타">기타</button>
	</c:if>
	<c:if test="${board eq 'question'}">
		<button class="a" type="button" data-board-cord="">전체</button>
		<button class="a" type="button" data-board-cord="예매/매표">예매/매표</button>
		<button class="a" type="button" data-board-cord="관람권/결제수단">관람권/결제수단</button>
		<button class="a" type="button" data-board-cord="멤버쉽/클럽서비스">멤버쉽/클럽서비스</button>
		<button class="a" type="button" data-board-cord="VIP관련">VIP관련</button>
		<button class="a" type="button" data-board-cord="할인혜택">할인혜택</button>
		<button class="a" type="button" data-board-cord="영화관이용">영화관이용</button>
		<button class="a" type="button" data-board-cord="기프티콘">기프티콘</button>
		<button class="a" type="button" data-board-cord="홈페이지/모바일">홈페이지/모바일</button>
	</c:if>
	
	</div>
	
	
	</div>
	<div id="cordList">
	<!-- 몇 개 검색되었는지 -->
	<div>
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
	</div>
	
	<!-- 관리자만 들어갈 수 있게 관리자 아이디 생성 -->
	<c:if test="${not empty member and member.id eq 'admin'}">
		<a href="./insert" class="btn btn-danger">ADD</a>
	</c:if>
	

<script type="text/javascript">
	
	$("#cordBtn").on('click', '.a', function(){
		
		let cord = $(this).attr('data-board-cord');
		console.log(cord);
		let keyword = $("#keyword").attr('data-board-keyword');
		console.log(keyword);
		let search = $("#search").val();
		console.log(search);
		
		
		/* location.href="./list?cord="+cord; */
		$.ajax({
			type:"GET",
			url:"./cordList",
			data:{
				cord:cord,
				search:search,
				keyword:keyword
			},
			success:function(result){
				result=result.trim();	
				$('#cordList').html(result);
			}
			
		});
	});

</script>
</body>
</html>