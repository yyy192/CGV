<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>CGV</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
   blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
   em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
   b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
   table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
   details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
   output, ruby, section, summary, time, mark, audio, video {
   margin: 0;
   padding: 0;
   border: 0;
   font-size: 100%;
   font: inherit;
   vertical-align: baseline;
}

a {
   text-decoration: none;
}

#wrap {
   width: 100%;
   height: 150px;
   min-width: 1024px;
   text-align: center;
   margin: 0px auto;
   /* width: auto;
   height: 900px;
   
   font-size: 20px;
   text-align: center; */
}

.m_top {
   width: 100%;
   height: 30px;
}

.m_bottom {
   width: 100%;
   height: 119px;
}

.cgvLogo {
   float: left;
   padding: 15px;
}

.cultureLogo {
   width: 240px;
   height: 20px;
   padding: 15px;
   margin: 0 auto;
   padding-top: 29.5px;
}

.menu {
   width: 400px;
   height: 30px;
   margin: 0 auto;
}

.left {
   width: 10%;
   height: 149px;
   background-image:
      url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
   background-repeat: repeat-x;
   background-size: 11px, 149px;
   float: left;
   background-repeat: repeat-x;
   background-size: 11px, 149px;
}

.middle {
   width: 80%;
   height: 149px;
   background-image:
      url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
   background-repeat: repeat-x;
   background-size: 11px, 149px;
   float: left;
   background-size: 11px, 149px;
}

.right {
   width: 10%;
   height: 149px;
   background-image:
      url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
   background-repeat: repeat-x;
   background-size: 11px, 149px;
   float: left;
   background-repeat: repeat-x;
   background-size: 11px, 149px;
}
/* #header {
   width:60%
   background-image:
      url("https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif");
   background-repeat: repeat-x;
   background-size: 11px, 149px;
   padding-bottom: 100px;
   height: 50px;
   min-width: 980px;
   position: relative;
} */
#nav {
   width: auto;
   height: 100px;
   background-color: yellow;
   line-height: 100px; /*글자나 이미지 위치 정렬*/
}

.heaberService {
   margin-left: 22px;
   margin-right: 22px;
   position: relative;
   position: absolute;
}

.headerCenter {
   margin-left: 22px;
   margin-right: 22px;
   position: relative;
   z-index: 100;
   height: 50px;
   padding-top: 69px;
   position: absolute;
}

.nav1 {
   float: right;
}

.menu ul li {
   list-style-type: none;
   float: left;
   margin-top: 5px;
   margin-left: 30px;
}

.m_top ul li {
   list-style-type: none;
   float: left;
   margin-left: 10px;
}

li {
   list-style: none;
}

.menu>ul>li.movie {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: 13px -27px;
   width: 60px;
}

.menu>ul>li.booking {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -77px -28px;
   width: 60px;
}

.menu>ul>li.theaters {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -166px -28px;
   width: 60px;
}

.menu>ul>li.customer {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -517px -28px;
   width: 90px;
}

.m_top>ul>li.nav-item-in {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: 10px 9px;
   width: 40px;

}

.m_top>ul>li.nav-item-join {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -42px 9px;
   width: 50px;
}

.m_top>ul>li.nav-item-customer {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -328px 9px;
   width: 50px;
}

.m_top>ul>li.nav-item-out {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -521px 9px;
   width: 50px;
}

.m_top>ul>li.nav-item-mypage {
   background-image:
      url("https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png");
   background-position: -103px 9px;
   width: 50px;
}

</style>
</head>
<body>
   <div id="wrap">
      <div class="left"></div>
      <div class="middle">
         <div class="m_top">
            <ul class="nav1">
               <c:choose>
                  <c:when test="${not empty member}">
                     <li class="nav-item-out"><a class="nav-link text"
                        href="${pageContext.request.contextPath}/member/memberLogout">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                     </li>
                     <li class="nav-item-mypage"><a class="nav-link text"
                        href="${pageContext.request.contextPath}/member/mypage">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                  	<li class="nav-item-customer"><a class="nav-link text"
                        href="./notice/list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                  </c:when>

                  <c:otherwise>
                     <li class="nav-item-in"><a class="nav-link text"
                        href="${pageContext.request.contextPath}/member/memberLogin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                     </li>                     
                     <li class="nav-item-join"><a class="nav-link text"
                        href="${pageContext.request.contextPath}/member/check">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                     </li>                     
                     <li class="nav-item-customer"><a class="nav-link text"
                        href="./notice/list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                  </c:otherwise>
               </c:choose>
            </ul>
         </div>
         <div class="m_bottom">
            <div class="cgvLogo">
               <a href="${pageContext.request.contextPath}/" class="cgvLogo">
                  <img src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png"
                  alt="CGV">
               </a>
            </div>
            <div class="cultureLogo">
               <a href="#"> <img
                  src="https://img.cgv.co.kr/R2014/images/title/h2_ticket.png"
                  alt="CGV"></a>
            </div>
            <div class="menu">
               <ul>
                  <li class="movie"><a href="./movies/list">&nbsp;&nbsp;&nbsp;</a></li>
                  <li class="booking"><a href="./ticket/list">&nbsp;&nbsp;&nbsp;</a></li>
                  <li class="theaters"><a href="./theaters/list">&nbsp;&nbsp;&nbsp;</a></li>
                  <li class="customer"><a href="#">&nbsp;&nbsp;&nbsp;</a></li>
               </ul>
            </div>
         </div>
      </div>
      <div class="right"></div>
   </div>
</body>
</html>