<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="search-result" align="left">
      <!-- 몇 개 검색되었는지 -->
      <c:if test="${not empty pager.search}">
         <strong class="ctc">"${pager.search}"</strong>으로 총 <span class="ct">${count}건</span>이 검색되었습니다.
      </c:if>
      <c:if test="${empty pager.search}">
         총 <span class="ct">${count}건</span>이 검색되었습니다.
      </c:if>
</div>

<c:if test="${count ne 0}">
<div class="table-result">
      <table class="table-set">
      <thead>
      <tr>
            <th>번호</th><th>구분</th><th class="titleleft">제목</th>
            <c:if test="${board eq 'notice'}"><th>등록일</th></c:if>
            <th>조회수</th>                  
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${list}" var="dto">
         <tr>
            <td>${dto.num}</td>
            <td>${dto.cord}</td>
            <td class="titleleft"><a href="./select?num=${dto.num}"> ${dto.title} </a></td>
            <c:if test="${board eq 'notice'}"><td>${dto.regDate}</td></c:if>
            <td>${dto.hits}</td>                  
         </tr>
         
      </c:forEach>
      </tbody>
      </table>
</div>
<div class="paging-result"> 

   <!-- Paging -->
           <ul class="pagination">
             <li class="pn">
               <a href="./list?keyword=${pager.keyword}&search=${pager.search}" aria-label="Previous">&laquo;</a>
             </li>
             
             <li data-pn-num="${pager.startNum-1}" class="pn">
               <a href="#" aria-label="Previous">&lt; 이전</a>
             </li>
             
             <c:forEach begin="${pager.startNum}" end="${pager.endNum}" var="n">
               <li data-pn-num="${n}" class="pn">
                  <a href="#">
                     ${n}
                  </a>
               </li>
            </c:forEach>
            
            <li data-pn-num="${pager.endNum+1}" class="pn">
               <a href="#" aria-label="Next">다음 &gt;</a>
             </li>
             
             <li data-pn-num="${pager.totalPage}" class="pn">
               <a href="#" aria-label="Next">&raquo;</a>
             </li>
           </ul>

</div>
</c:if>
<c:if test="${count eq 0}">
<div class="ct">
   검색 결과가 없습니다.
</div>
</c:if>