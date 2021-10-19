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
         <div class="notice-info">
            <h5>공지사항</h5>
            <a href="../notice/list"></a>
         </div>
      </div>
   </div>
   <div class="adMenu">
      <a href="http://www.cgv.co.kr/movies/detail-view/?midx=84943">
         <img src="https://adimg.cgv.co.kr/images/202109/Jolt/1014_980x90.jpg" width="980" height="90" border="0" alt="광고-졸트">
      </a>
   </div>
   <ul class="tabMenu">
      <li>
         <a data-th-theater='${dto.theater}' class="theatertimes" href="#">상영시간표</a>
      </li>
      <li>
         <a data-th-theater='${dto.theater}' class="parking" href="#">위치/주차안내</a>
      </li>
   </ul>
   <div class="tableMenu">
      <div class="mn">
         <ul class="sun">
            <li>☼ 조조</li>
            <li>☾ 심야</li>
         </ul>
         <p>* 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
         <ul class="moon"><li>
         <span>&nbsp;</span>
         <a href="./theaterPrice">관람가격 안내</a>
         </li></ul>
      </div><!-- mn 끝 -->
      
      <div class="showtimes">
      <ul class="table" data-th-theater='${dto.theater}'>
         <c:forEach items="${dto.moths}" var="d">
            <li>
            <div class="info-times">
               <div class="movie-info">
                  <p id="watch" data-th-watch='${d.watchDate}'>☞ ${d.watchDate}</p>
                  <c:if test="${d.movieName eq '007 노 타임 투 다이'}">
                     <a href="../movies/select1?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq '보이스'}">
                     <a href="../movies/select2?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq 'F20'}">
                     <a href="../movies/select3?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq '쁘띠 마망'}">
                     <a href="../movies/select4?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq '기적'}">
                     <a href="../movies/select5?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq '스틸워터'}">
                     <a href="../movies/select6?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                  <c:if test="${d.movieName eq '샹치와 텐 링즈의 전설'}">
                     <a href="../movies/select7?movieName=${d.movieName}" id="movie" data-th-movie='${d.movieName}'>
                  </c:if>
                     <c:if test="${d.ageCut eq '15세'}">
                     <span
                     class="icon15">&nbsp;</span>
                  </c:if>
                  <c:if test="${d.ageCut eq '12세'}">
                     <span
                     class="icon12">&nbsp;</span>
                  </c:if>
                  <c:if test="${d.ageCut eq '전체'}">
                     <span
                     class="iconAll">&nbsp;</span>
                  </c:if>
                  <strong>${d.movieName}</strong>
               </a>
               <span class="blueRound"><em>상영중</em></span>
               <i>${d.genre}</i> /
               <i>${d.runTime}</i> /
               <i>${d.openDate} 개봉</i>
               </div><!-- movie-info -->
               
               <div class="timeTable-info">
                  <div class="thse-info">
                     <ul>
                        <li>▶</li>
                        <li>${dto.theaterinfo}</li>
                        <li>${dto.seatinfo}</li>
                     </ul>
                  </div>
                  <div class="four-info">
                  <ul>
                     <c:if test="${dto.timeTable1==1}">
                           <li class="time" data-th-table='09:00~12:00'>
                              <a href="#">
                                 <em>09:00</em>
                                 <span>잔여좌석</span>
                              </a>
                           </li>
                     </c:if>
                     
                     <c:if test="${dto.timeTable2==1}">
                        <li class="time" data-th-table='12:00~15:00'>
                           <a href="#">
                               <em>12:00</em>
                              <span>잔여좌석</span>
                           </a>
                        </li>
                     </c:if>
                     
                     <c:if test="${dto.timeTable3==1}">
                        <li class="time" data-th-table='15:00~18:00'>
                           <a href="#">
                              <em>15:00</em>
                              <span>잔여좌석</span>
                           </a>
                        </li>
                     </c:if>
                     
                     <c:if test="${dto.timeTable4==1}">
                        <li class="time" data-th-table='18:00~21:00'>
                           <a href="#">
                               <em>18:00</em>
                              <span>잔여좌석</span>
                       </a>
                        </li>
                     </c:if>
                  </ul>
                  </div>
               </div><!-- timeTable-info -->
         </div>
         </li>
         </c:forEach>
      
      </ul>
      </div>
      
      <p class="endend">ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>
   </div>
   <div class="sideMenu">
         <a href="http://ad.cgv.co.kr/click/CGV/CGV_201401/sub@M_Rectangle?ads_id=46030&amp;creative_id=65125&amp;click_id=85346&amp;content_series=&amp;maid=&amp;event=" target="_blank">
            <img src="https://adimg.cgv.co.kr/images/202109/killingkind/1011_160X300.jpg" width="160" height="300" border="0" alt="킬링 카인드">
      </a>
         <a class="smm" href="https://myhm.co.kr/health/join?siteCode=VS&ctgCode=4">
            <img src="https://adimg.cgv.co.kr/images/202003/house/A_160x300.png"
            width="160" height="300" border="0" alt="광고-CGV">
         </a>
   </div>