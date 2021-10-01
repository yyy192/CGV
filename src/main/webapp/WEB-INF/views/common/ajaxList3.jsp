<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   

<c:forEach items="${timeTable}" var="dto">

   <c:if test="${dto.timeTable1==1}">
      <tr align=center>
         <td><button class="timeTable" type="button"
               data-board-theater="${mothDTO2.theater}"
               data-board-watchDate="${mothDTO2.watchDate}"
               data-board-movieName="${mothDTO2.movieName}"
               data-board-timeTable="09:00~12:00">09:00~12:00</button></td>
      </tr>
   </c:if>

   <c:if test="${dto.timeTable2==1}">
      <tr align=center>
         <td><button class="timeTable" type="button"
               data-board-theater="${mothDTO2.theater}"
               data-board-watchDate="${mothDTO2.watchDate}"
               data-board-movieName="${mothDTO2.movieName}"
               data-board-timeTable="12:00~15:00">12:00~15:00</button></td>
      </tr>
   </c:if>

</c:forEach>