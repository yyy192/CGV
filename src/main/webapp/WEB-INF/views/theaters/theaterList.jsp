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
      height:100%;
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
   
   
   #theater > .tabMenu > li > a:focus, #theater > .tabMenu > li > a:hover {
       text-decoration: none;
   }
   
   .tsMain {
      width: 982.9px;
      padding-bottom: 50px;
      margin: 0 auto;
   }
   
   .tsMain >    h3 {
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
      width: 55%;
      height:390px;
      padding: 60px 53px 0;
       background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_showtimes_favorite.gif); 
       backgroung-repeat: no-repeat;
   }
   
   #clickEvent {
      display: inline-block;
      position:absolute;
       left:50%;
       top:50%;
       margin-left:-150px;
       margin-top:-150px;
      text-align: left;
   }
   #clickEvent > a.white{
      color: white;
      font-weight:600;
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
    }
   #theater > .tabMenu > li > a.theatertimes {
       display: inline-block;
       position: relative;
       height: 39px;
       padding: 0 15px;
       background: #e71a0f 0 12px no-repeat;
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
   
   .tableMenu {
      margin-top: 25px;
   }
   
   .tableMenu > .mn {
       border-top: 3px solid #241d1e;
       position: relative;
       height: 37px;
       padding: 0 0 0 13px;
       border-bottom: 1px solid #474746;
       line-height: 37px;
   }
   
   .tableMenu > .mn > ul {
      list-style: none;
   }
   .tableMenu > .mn > ul > li {
      margin: 0 0 0 15px;
      font-size: 13px;
      font-weight: 600;
   }
   .tableMenu > .mn > ul > li:first-child {
      margin-left: 0;
   }
   .tableMenu > .mn > p {
      font-size: 13px;
      float: left;
       margin-left: 20px;
       color: #794624;
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

   <div class="bricks"> 
      <div class="blackbox">
          <div id="clickEvent">
               <c:forEach items="${list}" var="dto">
                  <a class="tClick" data-th-theater="${dto.theater}" href="#">${dto.theater} | </a>
               </c:forEach>
           </div>
      </div>        
    </div>
    
    <!-- main start -->
    <div class="tsMain">
    <h3><img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif" alt="THEATER"></h3>
  
   
   <!-- 극장 클릭했을 경우 ajax -->
   <div id="theater">
      
   </div>
   </div><!-- tsMain end -->
  
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
         
         console.log($(this).parent().prev().children('#movie').attr('data-th-movie'));
         let movieName=$(this).parent().prev().children('#movie').attr('data-th-movie');
         
         console.log($(this).parent().prev().children('#watch').attr('data-th-watch'));
         let watchDate=$(this).parent().prev().children('#watch').attr('data-th-watch');
         
         console.log($(this).parents('.table').attr('data-th-theater'));
         let theater=$(this).parents('.table').attr('data-th-theater');
   
         location.href="./ticketInfo?movieName="+movieName+"&theater="+theater+"&watchDate="+watchDate+"&timeTable="+timeTable;
         
      });
   </script>
</body>
</html>