<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.br{
		width: 150%;
	}
</style>
</head>
<body>
	
	<c:import url="../temp/mainHome.jsp"></c:import>
	
	<div align=center>
	<br>
		<h1>CGV + CJ ONE 통합회원가입</h1>
		<br>
		<h6>통합 아이디로 CJ ONE 브랜드 혜택도 받고! 포인트도 쌓고!</h6>
	<br>
	<hr>
	<br class="br">		
	</div>	
	<div class="container-fluid">
	<div class="form-check">
  		<input class="form-check-input c1 ch" type="checkbox" value="" id="flexCheckDefault">
  		<label class="form-check-label" for="flexCheckDefault">
    		약관1. ~~~~~~~~~~~~~~~~~
 		</label>
	</div>
	<br>
	<div class="form-check">
  		<input class="form-check-input c1 ch" type="checkbox" value="" id="flexCheckDefault">
  		<label class="form-check-label" for="flexCheckDefault">
    		약관2. ~~~~~~~~~~~~~~~~~~~
 		</label>
	</div>
	<br>
	<div class="form-check">
  		<input class="form-check-input c1 ch" type="checkbox" value="" id="flexCheckDefault">
  		<label class="form-check-label" for="flexCheckDefault">
    		약관3. ~~~~~~~~~~~~~~~~~~~~
 		</label>
	</div>
	<br>
	<div class="form-check">
  		<input class="form-check-input c1" type="checkbox" value="" id="flexCheckDefault">
  		<label class="form-check-label" for="flexCheckDefault">
    		약관4. 광고성 수신 메일, 문자 수신 동의 여부
 		</label>
	</div>
	<br><br>
	<div class="form-check">
  		<input class="form-check-input" type="checkbox" value="" id="all">
  		<label class="form-check-label" for="all">
    		CHECK ALL
 		</label>
	</div>
	<br><br>	
	</div>	
	
	<div align=center>
	<button id="btn">회원가입</button>
	</div>	
	<script type="text/javascript" src="../resources/js/check.js"></script>
</body>
</html>