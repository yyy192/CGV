<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

   <c:if test="${not empty member}">
   <h1>My CGV</h1>
   <div align=center>
   <div class="name"><h1>${member.name} 님</h1></div>
   <div class="id"><h3>${member.id}</h3></div>
   </div>
   <br>
   <div align=center>   
   <h6>PW : ${member.pw}</h6>
   <h6>NAME : ${member.name}</h6>
   <h6>PHONE : ${member.phone}</h6>
   <h6>E-mail : ${member.email}</h6>
   <h6>Birth : ${member.birth}</h6>
   </div>
   
   <br>
   <br>
   <br>
   <div align=center>
   <a href="./memberUpdate?id=${member.id}">정보수정</a>
   <a href="./memberDelete?id=${member.id}">회원탈퇴</a>
   <a href="./ticketList?id=${member.id}">예매내역</a>
   </div>
   </c:if>
   <c:if test="${empty member}">
   <h1>로그인 하세요.</h1>
   </c:if>
   
</body>
</html>