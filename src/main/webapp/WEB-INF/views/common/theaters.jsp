<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <h4>${dto.theater}</h4>
   
   <div class="imgMenu">
      <img src="${dto.theaterimage}" alt="CGV극장 이미지">
      <div class="box-contents">
         <div class="theater-info">
            <strong>${dto.address}</strong>
            <span>
               <p>${dto.theaternumber}</p>
               <p>${dto.theaterinfo} / ${dto.seatinfo}</p>
            </span>
         </div>
         <div class="notice-info">공지사항</div>
      </div>
   </div>
   
   <ul class="tabMenu">
      <li>
         <a class="theatertimes" href="#">상영시간표</a>
      </li>
      <li>
         <a class="parking" href="#">위치/주차안내</a>
      </li>
   </ul>
   
   <div class="tableMenu">
      <div class="mn">
         <ul>
            <li>☼ 조조</li>
            <li>☾ 심야</li>
         </ul>
         <p>* 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
      </div><!-- mn 끝 -->
      
      <table class="table" data-th-theater='${dto.theater}'>
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
      
      <p class="endend">ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>
   </div>