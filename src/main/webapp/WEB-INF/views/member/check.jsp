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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
     
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
          약관1. ~~~~~~~~~~~~~~~~~ [필수]
       </label>
   </div>
   <br>
   <div class="form-check">
        <input class="form-check-input c1 ch" type="checkbox" value="" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
          약관2. ~~~~~~~~~~~~~~~~~~~ [필수]
       </label>
   </div>
   <br>
   <div class="form-check">
        <input class="form-check-input c1 ch" type="checkbox" value="" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
          약관3. ~~~~~~~~~~~~~~~~~~~~ [필수]
       </label>
   </div>
   <br>
   <div class="form-check">
        <input class="form-check-input c1 option" type="checkbox" value="" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
          약관4. 광고성 수신 메일, 문자 수신 동의 여부 [선택]
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

<script type="text/javascript">
let c1 = document.getElementsByClassName('c1');
let all = document.getElementById('all');
let btn = document.getElementById('btn');
let option = document.getElementsByClassName('option');
let ch = document.getElementsByClassName('ch');

all.addEventListener('click', function(){
	if(all.checked){
		for(let ch of c1){
			ch.checked = true;
		}
	}else{
		for(let ch of c1){
			ch.checked = false;
		}	
	}
});

//--------------------- 약관동의 check ---------------------------

//--- 전체선택
for(let ch of c1){
	ch.addEventListener('click', function(){
		let result=true;
		for(let c of c1){
			if(!c.checked){
				result = false;
				break;
			}
		}
		
		all.checked=result;
		
	});
}


btn.addEventListener('click', function(){
	let r = true;
	
	for(let e of ch){
		if(!e.checked){
			r = false;
			break;
		}
	}
		
	if(r){
		location.href="./memberJoin";
	}else{
		alert('필수 약관 동의');
		
	}


	
	
	
/*	if(all.checked){
		location.href="./join";
	}else{
		alert('필수 약관 동의');
		
	}*/
});
</script>
</body>
</html>