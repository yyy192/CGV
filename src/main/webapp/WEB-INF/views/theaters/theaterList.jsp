<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Theaters List</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
   body, input, textarea, select, button, table {
       font-size: 13px;
       line-height: 1.2;
       color: #666;
       font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
       font-weight: 300;
   }
   body {
      height: 100%;
      background-color: #fdfcf0;
   }
   a {
      display:inline-block;
      /* position: relative;
       padding: 0; */
       font-size: 15px;
       color: #b9b9b9;
       line-height: 31px;
   }
   a:hover {
    color: white;
    font-weight:600;
   }
   
   ul {
      list-style:none;
   }
   
   .linemap-wrap {
       /* width: 1062px; */
       
       height: 28px;
       background-color: #f1f0e5;
       border-bottom: 1px solid #cacac0;
      display: block;
   }
   
   .sec-wrap {
    margin : 0 auto;
   width: 1112px;
   height: 100%;   
   }
   .sec-wrap>ul {
   display: inline-block;
   }
   .sec-wrap>ul>li {
   margin-left: 0;
   margin-top: 3px;
   }
   
   #theater > .tabMenu > li > a:focus, #theater > .tabMenu > li > a:hover {
       text-decoration: none;
   }
   
   .tsMain {
      width: 983px;
      padding-bottom: 50px;
      margin: 0 auto;
   }
   
   .tsMain > h3 {
      height: 41px;
       margin: 30px 0 15px 0;
       background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg) repeat-x 0 50%;
       line-height: 41px;
       text-align: center;
       font-weight: 500;
   }
   
   .bricks {
         width: 100%;
          height: 450px;
          background-image:url("https://img.cgv.co.kr/r2014/images/common/bg/bg_c_bricks.png");
          background-repeat: repeat-x;   
   }
   
   .blackbox {
      margin: 0 auto;
      width: 874px;
      height:390px;
      padding: 60px 53px 0;
       background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_showtimes_favorite.gif); 
       backgroung-repeat: no-repeat;
   }
   
  #clickEvent {
        display: block;
      margin: 0 auto;
      margin-top: 10%;
      text-align: center;
   }
   #clickEvent > a {
      display: inline-block;
      font-size:25px;
   }
   
   #theater {
      display: inline-block;
   }
   #theater > h4 {
      padding-bottom: 6px;
      color: #333333;
       font-size: 29px;
       font-weight: 600;
       vertical-align: top;
       text-align: left;
   }
   
   #theater > .tabMenu {
      display: inline-block;
      list-style: none;
      margin: 30px 0 15px 0;
      text-align: center;
      padding-left: 37%;
   }
   
    .tabMenu > li {
          display: inline-block;
       margin: 0;
       list-style: none;
       float: left;
    }
   #theater > .tabMenu > li > a.theatertimes {
       position: relative;
       height: 39px;
       padding: 0 15px;
       background: #e71a0f;
       color: #ffffff;
       font-size: 15px;
       font-weight: 600;
       text-align: center;
       line-height: 39px;
       border-radius:8px 0 0 8px;
   }
   #theater > .tabMenu > li > a.parking {
       display: inline-block;
       position: relative;
       height: 39px;
       padding: 0 15px;
       background: #e71a0f url(https://img.cgv.co.kr/R2014/images/common/bg/bg_tebmenu-line.gif) 0 12px no-repeat;
       color: #ffffff;
       font-size: 15px;
       font-weight: 600;
       text-align: center;
       line-height: 39px;
       border-radius:0 8px 8px 0;
   }
   
   .imgMenu {
      position: relative;
   }
   .imgMenu > .box-contents {
      position: absolute;
       left: 0;
       bottom: 0;
       width: 920px;
       padding: 20px 30px;
       background: url(https://img.cgv.co.kr/R2014/images/common/bg/bg_dim80.png) 0 0 repeat;
       color: #fdfcf0;
   }
   
   .imgMenu > .box-contents > .theater-info {
      position: relative;
       float: left;
       width: 608px;
   }
   
   .imgMenu > .box-contents > .theater-info > strong {
      padding-top: 10px;
       width: 400px;
       color: #fdfcf0;
       font-size: 13px;
       font-weight: bold;
   }
   .imgMenu > .box-contents > .theater-info > span {
      float: left;
       width: 409px;
       height: 50px;
       padding-top: 14px;
       color: #fdfcf0;
       line-height: 1.6;
       font-size: 12px;
    }
   
   .imgMenu > .box-contents > .notice-info {
      padding: 10px 0 0 30px;
       border-left: 1px solid rgba(255,255,255,0.2);
      float: right;
       width: 280px;
   }
   
   .imgMenu > .box-contents > .notice-info > h5 {
      padding-bottom: 10px;
       font-size: 13px;
       font-weight: 600;
      
   }
   .imgMenu > .box-contents > .notice-info > a {
      background-image: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png);
       background-position-x: -50px;
       background-position-y: -62px;
       background-repeat-x: no-repeat;
       background-repeat-y: no-repeat;
       display: inline-block;
       width: 20px;
       height: 19px;
       position: absolute;
       top:30px;
       right: 230px;
   }
   
   .tableMenu {
      margin-top: 25px;
      width: 800px;
      float: left;
   }
   
   .sideMenu {
      margin-top: 25px;
      width: 160px;
      float: right;
   }
   
   .sideMenu > .smm {
      margin-top: 10px;
   }
   .tableMenu > .mn {
       border-top: 3px solid #241d1e;
       position: relative;
       height: 37px;
       padding: 0 0 0 13px;
       border-bottom: 2px solid #474746;
       line-height: 37px;
   }
   
   .tableMenu > .mn > .sun {
      list-style: none;
   }
   .tableMenu > .mn > .sun > li {
      margin: 0 0 0 15px;
      font-size: 13px;
      font-weight: 600;
      float: left;
      position: relative;
   }
   .tableMenu > .mn > .sun > li:first-child {
      margin-left: 0;
   }
   .tableMenu > .mn > p {
      font-size: 13px;
      float: left;
       margin-left: 20px;
       color: #794624;
   }
   
   .tableMenu > .mn > .moon > li {
      float: right;
      margin: 0 0 0 15px;
      font-size: 14px;
      font-weight: 600;
      position: relative;
      padding-right: 10px;
      
   }
   .tableMenu > .mn > .moon > li > a {
      text-decoration: none;
      color: #333333;
      
       
   }
   .tableMenu > .mn > .moon > li > span {
      display: inline-block;
      background-position: 0 -158px;
      width: 13px;
      height: 13px;
       line-height: 13px;
       background-image: url(https://img.cgv.co.kr/r2014/images/sprite/sprite_icon.png);
       background-repeat: no-repeat;
   }
   
   .showtimes > ul {
      display: inline-block;
   }
   
   .showtimes > ul > li {
      width: 100%;
      padding: 40px 0;
       border-top: 1px solid #474746;
       margin: 0;
       display: inline-block;
   }
   .showtimes > ul > li:first-child {
       border-top: 0 none;
   }
   
   .info-times {
      position: relative;
       margin-left: 14px;
       padding-left: 26px;
       float: left;
   }
   
   .info-times > .movie-info > p {
      font-weight:800;
      font-size: 19px;
      margin-bottom: 15px;
   }
   .info-times > .movie-info > a {
      font-weight: 700;
      font-size: 16px;
      color: black;
      margin-right: 5px;
   }
   .info-times > .movie-info > .blueRound {
      display: inline-block;
      border: 2px solid #3e82a4;
       border-radius: 4px;
       padding: 0 5px;
       text-align: center;
       line-height: 16px;
    }
    .info-times > .movie-info > .blueRound > em {
      font-size:12px;
      color: #3e82a4;
      font-weight: 600;
    }
    .info-times > .movie-info > i {
       font-size: 13px;
    }
   
   .iconAll {
      display: inline-block;
       zoom: 1;
       width:21px;
       height:21px;
       background-position: 0 0;
       background-repeat: no-repeat;
       background-image: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png);
       background-position: -30px 0;
   }
   
   .icon12 {
      display: inline-block;
       zoom: 1;
       width:21px;
       height:21px;
       background-position: 0 0;
       background-repeat: no-repeat;
       background-image: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png);
       background-position: -51px 0;
   }
   .icon15 {
      display: inline-block;
       zoom: 1;
       width:21px;
       height:21px;
       background-position: 0 0;
       background-repeat: no-repeat;
       background-image: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png);
       background-position: -72px 0;
   }
   .thse-info {
      margin-top: 10px;
      padding-top:10px;
   }
   .thse-info > ul {
      display: inline-block;
   }
   .thse-info > ul > li:first-child {
      padding-left: 0;
    }
    .thse-info > ul > li:last-child {
      background-image: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_li_vline.gif);
       background-position-x: 0px;
       background-position-y: 50%;
       background-repeat-x: no-repeat;
       background-repeat-y: no-repeat;
    }
   .thse-info > ul > li {
      margin: 0;
      padding: 0 8px;
      color: #333;
       font-weight: 540;
       font-size: 11px;
       line-height: 17px;
       float: left;
   }
   
   .four-info {
      margin-top: 3px;
   }
   .four-info > ul {
      display: inline-block;
   }
   .four-info > ul > li {
      margin: 0;
      float: left;
       position: relative;
       width: 70px;
       height: 36px;
       margin-right: -1px;
       padding-top: 5px;
       border: 1px solid #cbcabe;
       line-height: 1.4;
       text-align: center;
   }
   .four-info > ul > li > a {
      font-size: 12px;
       font-weight: 900;
       text-decoration: none;
       color: #333333;
   }
   .four-info > ul > li > a > em {
      display: block;
   } 
   .four-info > ul > li > a > span {
      color: #2275a4;
      font-size:11px;
      font-weight: 500;
   }
   
   .tableMenu > .subus {
      margin-top: 10px;
      position: relative;
   }
   .tableMenu > .subus > h4 {
      margin-bottom: 20px;
       padding-bottom: 5px;
       border-bottom: 2px solid #222222;
       color: #222222;
       font-size: 17px;
       font-weight: 700;
   }
   .tableMenu > .subus > p {
      line-height: 1.6;
         color: #222222;
       font-size: 13px;
   }
   
   .icon-bus {
      display: inline-block;
       width: 50px;
       height: 27px;
       background: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png) -200px -130px no-repeat;
       vertical-align: middle;
       font: 0/0 a;
       zoom: 1;
   }
   
   .tableMenu > .carp {
      margin-top: 30px;
      position: relative;
   }
   .tableMenu > .carp > h4 {
      margin-bottom: 20px;
       padding-bottom: 5px;
       border-bottom: 2px solid #222222;
       color: #222222;
       font-size: 17px;
       font-weight: 700;
   }
   .tableMenu > .carp > p {
      line-height: 1.6;
         color: #222222;
       font-size: 13px;
   }
   
   .icon-parking {
      display: inline-block;
       width: 50px;
       height: 27px;
       background: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png) -200px -158px no-repeat;
       vertical-align: middle;
       font: 0/0 a;
       zoom: 1;
   }
   
   .adMenu {
      margin-top: 20px;
   }
   
   .endend {
      padding: 12px 0 0 0;
       border-top: 2px solid #474746;
       font-size: 13px;
   }
   
</style>
</head>
<body>
<c:import url="../temp/mainHome.jsp"></c:import>
<div class="linemap-wrap">
   <div class="sec-wrap">
      <ul>
         <li><a href="http://localhost/s5/">
            <img alt="home" src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png">
         </a></li>                                             
      </ul>
   </div>
</div>

   <div class="bricks"> 
      <div class="blackbox">
          <div id="clickEvent">
               <c:forEach items="${list}" var="dto">
                  <a class="tClick" data-th-theater="${dto.theater}" href="#">${dto.theater} | </a>
               </c:forEach>
           </div>
      </div>        
    </div>
    
    <!-- tsMain start -->
    <div class="tsMain">
      <h3><img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif" alt="THEATER"></h3>
     
      
      <!-- 극장 클릭했을 경우 ajax -->
      <div id="theater">
         
      </div>
   </div><!-- tsMain end -->
   
   <c:import url="../temp/mainFooter.jsp"></c:import>

   <script type="text/javascript">
      getTheaters("구로CGV");
      
      function getTheaters(theater){
         console.log(theater);
         $.ajax({
            type:"GET",
            url:"./info",
            data:{
               theater:theater
            }
            ,success:function(result){
               result=result.trim();
               $("#theater").html(result);
            }
            ,error:function(xhr, status, error){
               console.log('error');
               
            }
         });
      }
      
   
      $(".tClick").click(function(){
         let tClick = $(this).attr('data-th-theater');
         console.log(tClick);
         $.ajax({
            type:"GET",
            url:"./info",
            data:{
               theater:tClick
            }
            ,success:function(result){
               result=result.trim();
               $("#theater").html(result);
            }
            ,error:function(xhr, status, error){
               console.log('error');
               getTheaters("구로CGV");
            }
         });
      });
      
      $(".tClick").click(function(){
         $(".tClick").removeClass("white");
        $(this).addClass("white");  
      });
      
      $('#theater').on("click", ".time", function(){
         console.log($(this).attr('data-th-table'));
         let timeTable=$(this).attr('data-th-table');
         
         console.log($(this).parents('.timeTable-info').prev().children('#movie').attr('data-th-movie'));
         let movieName=$(this).parents('.timeTable-info').prev().children('#movie').attr('data-th-movie');
         
         console.log($(this).parents('.timeTable-info').prev().children('#watch').attr('data-th-watch'));
         let watchDate=$(this).parents('.timeTable-info').prev().children('#watch').attr('data-th-watch');
         
         console.log($(this).parents('.table').attr('data-th-theater'));
         let theater=$(this).parents('.table').attr('data-th-theater');
   
         location.href="./ticketInfo?movieName="+movieName+"&theater="+theater+"&watchDate="+watchDate+"&timeTable="+timeTable;
         
      });
      
      $('#theater').on('click', '.theatertimes', function(){
         //location.href="./list";
         let tClick = $(this).attr('data-th-theater');
          console.log(tClick);
          $.ajax({
             type:"GET",
             url:"./info",
             data:{
                theater:tClick
             }
             ,success:function(result){
                result=result.trim();
                $("#theater").html(result);
             }
             ,error:function(xhr, status, error){
                console.log('error');
                getTheaters("구로CGV");
             }
          });
      });
      
      $('#theater').on('click', '.parking', function(){
         let tClick = $(this).attr('data-th-theater');
          console.log(tClick);
        $.ajax({
           type:"GET",
             url:"./parking",
             data:{
                 theater:tClick
              },
             success:function(result){
                result=result.trim();
                 $(".tableMenu").html(result);
             }
        });
      });
   </script>
</body>
</html>