<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

   <h1>List Page</h1>
   <div id="clickEvent">
      <c:forEach items="${list}" var="dto">
         <button class="tClick" data-th-theater="${dto.theater}">${dto.theater}</button>
      </c:forEach>
   </div>
   
   <!-- 극장 클릭했을 경우 ajax -->
   <div id="theater">
      
   </div>
   
   
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
      
      $('#theater').on("click", ".time", function(){
         console.log($(this).attr('data-th-table'));
         let timeTable=$(this).attr('data-th-table');
         
         console.log($(this).parent().prev().children('#movie').attr('data-th-movie'));
         let movieName=$(this).parent().prev().children('#movie').attr('data-th-movie');
         
         console.log($(this).parent().prev().children('#watch').attr('data-th-watch'));
         let watchDate=$(this).parent().prev().children('#watch').attr('data-th-watch');
         
         console.log($(this).parents('table').prev().attr('data-th-theater'));
         let theater=$(this).parents('table').prev().attr('data-th-theater');
   
         location.href="./ticketInfo?movieName="+movieName+"&theater="+theater+"&watchDate="+watchDate+"&timeTable="+timeTable;
         
      });
   </script>
</body>
</html>