<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/boot_head.jsp"></c:import>

</style>

</head>

<body>
	<h1>${board}InsertPage</h1>

	<div class="container-fluid">
		<form class="col-md-5 mx-auto" action="./insert" method="post">
					
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" name="title" id="title"
					placeholder="Enter Title">
			</div>
			<div class="mb-3">
				<label for="contents" class="form-label">Contents</label>
				<textarea class="form-control" cols="" name="contents"
					id="contents" rows="6"></textarea>
			</div>
			
			<c:if test="${board eq 'question'}">
            <div class="mb-3">
            
         
            <label for="cord">구분</label>
            <hr>
              <input type="radio" id="reservation" name="cord" value="[예매/매표]">
              <label for="reservation">예매/매표</label><br>
              <input type="radio" id="ticket" name="cord" value="[관람권/결제수단]">
              <label for="ticket">관람권/결제수단</label><br>
              <input type="radio" id="membership" name="cord" value="[멤버쉽/클럽서비]">
              <label for="membership">멤버쉽/클럽서비스</label><br>
              <input type="radio" id="vip" name="cord" value="[VIP관련]">
              <label for="vip">VIP관련</label><br>
              <input type="radio" id="sale" name="cord" value="[할인혜택]">
              <label for="sale">할인혜택</label><br>
              <input type="radio" id="use" name="cord" value="[영화관이용]">
              <label for="use">영화관이용</label><br>
              <input type="radio" id="gift" name="cord" value="[기프트샵]">
              <label for="other">기프트샵</label><br>
              <input type="radio" id="home" name="cord" value="[홈페이지]">
              <label for="home">홈페이지/모바일</label>
            </div>
         </c:if>
         <c:if test="${board eq 'notice'}">
            <div class="mb-3">
              <input type="radio" id="inspection" name="cord" value="[시스템 점검]">
              <label for="inspection">시스템 점검</label><br>
              <input type="radio" id="theater" name="cord" value="[극장]">
              <label for="theater">극장</label><br>
              <input type="radio" id="other" name="cord" value="[기타]">
              <label for="other">기타</label>
            </div>
         </c:if>
			

			<!-- button 추가 -->

			<div class="mt-3 ml-0">
				<button type="submit" class="btn btn-success">ADD</button>
			</div>
		</form>
		
		</div>


</body>
</html>