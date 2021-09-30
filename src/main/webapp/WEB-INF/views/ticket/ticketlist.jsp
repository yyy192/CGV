<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>영화를 선택해주세요.</h1>
	<c:forEach items="${list}" var="dto">
		<tr align=center>
			<td><button type="button" id="btn-theater" class="theater" data-board-movieName="${dto.movieName}">${dto.movieName}</button></td>
		</tr>
	</c:forEach>
	
	<div id="theaterList" data-board-movieName="${dto.movieName}">
         	
    </div>
    
    <script type="text/javascript">
    
    $('#theaterList').on("click", ".theater", function() {
        let moiveName = $(this).attr("data-board-movieName");
        $.ajax({
			type:"GET",
			url:"./select",
			data:{
				movieName:movieName,
			
			},
			success: function(result){
				
			}, 
			error: function(xhr, status, error){
				
			}
			
		
		});
        
     });
    
   
    </script>
	
	


</body>


</html>