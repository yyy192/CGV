<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="date-list">
   <li class="month dimmed">
      <div>
         <span class="year">2021</span> <span class="month">10</span>
         <div></div>
      </div>
   </li>

   <c:forEach items="${watchDate}" var="dto">
   
      

      <li data-index="0" date="20211014" class="day">
         <a href="#"   class="watchDate" onclick="return false;" data-board-theater="${dto.theater}"
            data-board-watchDate="${dto.watchDate}"
            data-board-movieName="${dto.movieName}">
            <span class="dayweek"><fmt:formatDate pattern="E" value="${dto.watchDate}" /></span>
            <span class="day"><fmt:formatDate pattern="dd" value="${dto.watchDate}" /></span>
            <span class="sreader"></span>
         </a>
      </li>
   </c:forEach>
   
</div>