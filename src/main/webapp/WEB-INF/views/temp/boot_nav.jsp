<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
	  <div class="container-fluid" align="center">
	    <a class="navbar-brand" href="#">Navbar</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            MOVIE
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="#">MOVIE CHART</a></li>	            
	          </ul>
	        </li>
	       <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            BOOK
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="#">FAST BOOKING</a></li>
	            <li><a class="dropdown-item" href="#">MOVIE TIMETABLE</a></li>	            
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath}/qna/list">THEATER</a>
	        </li>
	       <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath}/notice/list">NOTICE</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath}/question/list">QUESTION</a>
	        </li>
	        <c:choose>
	        	
	        	<c:when test="${not empty member}">
	        		<li class="nav-item">
	          			<a class="nav-link" href="${pageContext.request.contextPath}/member/mypage">MYPAGE</a>
	        		</li>	        	
	        		<li class="nav-item">
	          			<a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogout">LOGOUT</a>
	        		</li>
	        	</c:when>
	        	
	        	<c:otherwise>
	        		<li class="nav-item">
	          			<a class="nav-link" href="${pageContext.request.contextPath}/member/check">CHECK</a>
	        		</li>	        	
	        		<li class="nav-item">
	          			<a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogin">LOGIN</a>
	        		</li>
	        	</c:otherwise>
	        	
	        </c:choose>
	      </ul>	      
	    </div>
	  </div>
	</nav>