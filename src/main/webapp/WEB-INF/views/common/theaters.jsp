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
            <c:if test="${dto.timeTable1==1}">
                  <td class="time" data-th-table='09:00~12:00'>
                     <button type="button">09:00~12:00</button>
                  </td>
            </c:if>
            
            <c:if test="${dto.timeTable2==1}">
               <td class="time" data-th-table='12:00~15:00'>
                  <button type="button">12:00~15:00</button>
               </td>
            </c:if>
            
            <c:if test="${dto.timeTable3==1}">
               <td class="time" data-th-table='15:00~18:00'>
                  <button type="button">15:00~18:00</button>
               </td>
            </c:if>
            
            <c:if test="${dto.timeTable4==1}">
               <td class="time" data-th-table='18:00~21:00'>
                  <button type="button">18:00~21:00</button>
               </td>
            </c:if>
         </tr>
      </c:forEach>
   
   </table>

</div>