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
<style type="text/css">
   body, input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
    
   }
   
   body {
   background-color: #FDFCF0;
   }
   a:link { color: #666; text-decoration: none;}
    a:visited { color: #666; text-decoration: none;}
    a:hover { font-weight:bold; text-decoration: underline;}

   
   .ttt {
      font-size:16px;
      font-weight: bold;
   }
   .sttt {
      margin-top: 5px;
      font-size:14px;
   }
   
   .linemap-wrap {
       /* width: 1062px; */
       
       height: 28px;
       margin : 0 auto;
       background-color: #f1f0e5;
       border-bottom: 1px solid #cacac0;
      display: block;
   }
   
   .sec-wrap {
      margin: 0 auto;
      width: 1112px;   
   }
   .sec-wrap>ul {
   display: inline-block;
   }
   .sec-wrap>ul>li {
   margin-left: 0;
   margin-top: 3px;
   }
   
   
   .list-main {
   width:1112px;
   margin: 27px auto 0 auto;
   height:1270px;
   padding-bottom : 70px;
   }
   
   .list-left {
        width: 202px;
        height: 245px;
        float:left;
        margin: 0 20px 0 0;
    }
    .list-left > ul {
       display:inline-block;
       width:100%;
    }
    .list-left > ul > li {
       border-top: 1px solid #bbb9b1;
       height:40px;
       line-height: 30px;
       width:100%;
       padding: 5px 0 0 5px; 
       vertical-align: baseline;
       margin : 5px 0 0 0;
       font-weight: bold;
    }
    
    .list-left > ul > li :hover {
       display:inline-block;
       background-color:#ea1400;
       height:40px;
       width:202px;
       text-decoration: none;
       color: white;
    }     
    /* .list-left > ul > li > a.on {
         display:inline-block;
       background-color:#ea1400;
       height:40px;
       width:202px;
       text-decoration: none;
       color: white;
    } */
    
    .notice-tab > button.on {
         background-color: #ea1400;
    }
    .question-tab > button.on {
         background-color: #ea1400;
    }
    
   .list-right {
        width: 880px;
        height: 1270px;
        /* background: red; */
        float:right;
        margin: 0 0 0 10px;
    }
    
    .search-area {
    margin-top: 20px;
    }
    
    .search-btn {
        background: #222222;
       border: 2px solid #222222;
       color: #ffffff;
       line-height: 21px;
       text-align: center;
       border-radius: 2px;
       
    }
    
    .form-select {
       width:100px;
       line-height: 27px;
       height: 29px;
       padding: 3px 5px;
       border: 1px solid #b4b3aa;
       border-radius: 2px;
    }
    
    .form-control {
       display: inline-block;
       width: 200px;
       height: 25px;
       line-height: 22px;
       padding: 1px 2px 1px 10px;
       border: 1px solid #b5b5b5;
       border-radius: 2px;
    }
    
    #cordBtn {
       position: relative;
       margin-top: 15px;
       border-bottom: 2px solid #898987;
       height: 35px;
    }
    .notice-tab > button:first-child{
    margin-left: 0;
   }
   .question-tab > button:first-child{
    margin-left: 0;
   }
    
    .notice-tab > button {
       float: left;
       position: relative;
       display:inline-block;
       width: 87px;
       height: 37px;
       margin-left: 2px;
       line-height: 36px;
       text-align: center;
       background-color: #898987;
       font-weight: bold;
       font-size: 13px;
       color: #fff;
       border-top-left-radius:6px;
      border-top-right-radius:6px;
      outline:0;
      border:0;
       
    }
    
    .question-tab > button {
       float: left;
       position: relative;
       display: inline-block;
       padding: 0 12px 0 12px;
       height: 37px;
       margin-left: 2px;
       line-height: 36px;
       text-align: center;
       background-color: #898987;
       font-weight: bold;
       font-size: 12px;
       color: #fff;
       border-top-left-radius:6px;
      border-top-right-radius:6px;
      outline:0;
      border:0;
       
    }
    
    .search-result {
       margin: 25px 0px 10px 0px;
       font-size:13px;
    }
    
    .table-result {
       overflow: hidden;
       padding-top: 10px;
    }
    .table-set {
       width: 100%;
       border-collapse: separate;
       border-spacing: 0;
       border-top: solid 1px #d6d4ca;
       border-bottom: solid 1px #b8b6aa;
       font-size:13px;
    }
    
    .table-set thead th {
       padding: 13px 0px 11.5px 0px;
       border-bottom: solid 1px #e1dfd5;
       text-align: center;
       background-color: #edebe1;
       font-weight:bold;
       line-height: 1.5em;
    }
    .table-set tbody td {
       padding: 13px 0px 11.5px 0px;
       border-top: solid 1px #d6d4ca;
       text-align: center;
    }
    .table-set thead th.titleleft {
       padding: 8px 12px 6px 13px;
       text-align: left;
    }
    .table-set tbody td.titleleft {
       padding: 8px 12px 6px 13px;
       text-align: left;
    }
    
    .addBtn {
       padding: 3px;
       color:white;
       border-radius:4px;
       background-color: black;
    }
    
    .paging-result {
       margin-top: 25px;
       display: block;
       height:28px;
       text-align: center;
    }
    
    .paging-result > ul {
       display: inline-block;
       vertical-align: top;
       font-weight : 600;
       font-size: 14px;
    }
    
    .ct {
       font-weight: bold;
    }
    .ctc {
       color: #e71a0f;
       font-weight: bold;
    }
    
    ul li {
       list-style-type: none;
       float: left;
       margin-top: 5px;
       margin-left: 50px;
   }

   .sh-cc {
      display: inline-block;
       margin: 6px 0px 0px 15px;   
       width: 400px;
       font-weight: 550;
       font-size: 12px;
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
   
   <div class="list-main">
   
   <div class="list-left">
      <ul>
         <li><a class="" href="../question/list">자주찾는 질문</a></li>
         <li><a class="" href="../notice/list">공지/뉴스</a></li>
      </ul>
   </div>
   
   <div class="list-right" align="center">
   
   <div align="left">
   <c:if test="${board eq 'notice'}">
      <h2 class="ttt">공지/뉴스</h2>
      <p class="sttt">CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</p>
   </c:if>
   <c:if test="${board eq 'question'}">
      <h1 class="ttt">자주찾는 질문</h1>
      <p class="sttt">회원님들께서 가장 자주하시는 질문을 모았습니다.<br>궁금하신 내용에 대해 검색해보세요.</p>
   </c:if>
   
   
   <!-- Search Form Start -->
   <div class="search-area">
         <c:if test="${board eq 'notice'}">
            <form action="./list" method="get">
               
               <c:if test="${empty pager.keyword or pager.keyword eq 'title'}">
                  <select data-board-keyword="${pager.keyword}" id="keyword" name="keyword" class="form-select" aria-label="Default select example">
                   <option selected="selected" value="title">제목</option>
                   <option value="contents">내용</option>
                   </select>
               </c:if>
               <c:if test="${pager.keyword eq 'contents'}">
                  <select data-board-keyword="${pager.keyword}" id="keyword" name="keyword" class="form-select" aria-label="Default select example">
                   <option value="title">제목</option>
                   <option selected="selected" value="contents">내용</option>
                   </select>
               </c:if>
                 
                <input value="${pager.search}" id="search" type="text" name="search" placeholder="검색어를 입력해 주세요." class="form-control" aria-label="Text input with dropdown button">
                <button type="submit" class="search-btn">검색하기</button>

               
            </form>
         </c:if>
         <c:if test="${board eq 'question'}">
            <form action="./list" method="get">
      
               <div class="input-group mb-3">
                <input value="${pager.search}" id="search" type="text" name="search" placeholder="검색어를 입력해 주세요." class="form-control" aria-label="Text input with dropdown button">
                <button type="submit" class="search-btn">검색하기</button>
                  <div class="sh-cc">
                     추천검색어 : <a href="./list?search=관람권">관람권</a> |
                     <a href="./list?search=홈페이지">홈페이지</a> |
                     <a href="./list?search=예매">예매</a> |
                     <a href="./list?search=환불">환불</a>
                  </div>
               </div>
               
            </form>
         </c:if>
      
   </div>   
   <!-- Search Form Finish -->
   
   
   <div id="cordBtn">
   
      <c:if test="${board eq 'notice'}">
      <div class="notice-tab">
         <button class="a before on" type="button" data-board-cord="">전체</button>
         <button class="a before" type="button" data-board-cord="시스템점검">시스템점검</button>
         <button class="a before" type="button" data-board-cord="극장">극장</button>
         <button class="a before" type="button" data-board-cord="기타">기타</button>
      </div>
      </c:if>
      <c:if test="${board eq 'question'}">
      <div class="question-tab">
         <button class="a before on" type="button" data-board-cord="">전체</button>
         <button class="a before" type="button" data-board-cord="예매/매표">예매/매표</button>
         <button class="a before" type="button" data-board-cord="관람권/결제수단">관람권/결제수단</button>
         <button class="a before" type="button" data-board-cord="멤버쉽/클럽서비스">멤버쉽/클럽서비스</button>
         <button class="a before" type="button" data-board-cord="VIP관련">VIP관련</button>
         <button class="a before" type="button" data-board-cord="할인혜택">할인혜택</button>
         <button class="a before" type="button" data-board-cord="영화관이용">영화관이용</button>
         <button class="a before" type="button" data-board-cord="기프트샵">기프트샵</button>
         <button class="a before" type="button" data-board-cord="홈페이지/모바일">홈페이지/모바일</button>
      </div>
      </c:if>
   
   </div>
   
   </div> <!-- align left 끝 -->
   
   <div id="cordList">



   </div><!-- cordList div 끝 -->   
   
   <br>
      <!-- 관리자만 들어갈 수 있게 관리자 아이디 생성 -->
      <div align="right">
         <c:if test="${not empty member and member.id eq 'admin'}">
            <button class="addBtn" type="button">ADD</button>
         </c:if>
      </div>
   </div><!-- class="list-right" 끝 -->
</div>

<c:import url="../temp/mainFooter.jsp"></c:import>

<script type="text/javascript">
   start();
   
   function start(){
      let keyword = $("#keyword").attr('data-board-keyword');
      //console.log(keyword);
      let search = $("#search").val();
      //console.log(search);
      let cord= '';
      //console.log(cord);
      $.ajax({
         type:"GET",
         url:"./cordList",
         data:{
            cord:cord,
            search:search,
            keyword:keyword
         },
         success:function(result){
            result=result.trim();   
            $('#cordList').html(result);
         }
         
      });
      
   }
   
   let cord='';
   $("#cordBtn").on('click', '.a', function(){
      cord = $(this).attr('data-board-cord');
      console.log(cord);
      let keyword = $("#keyword").attr('data-board-keyword');
      //console.log(keyword);
      let search = $("#search").val();
      //console.log(search);
      
      
      /* location.href="./list?cord="+cord; */
      $.ajax({
         type:"GET",
         url:"./cordList",
         data:{
            cord:cord,
            search:search,
            keyword:keyword
         },
         success:function(result){
            result=result.trim();
            $('#cordList').html(result);
         }
         
      });
   });
   
   /* 페이지 넘겨주기 위함 */
   $("#cordList").on("click", ".pn", function(){
      let pn = $(this).attr('data-pn-num');
      console.log(pn);
      let keyword = $("#keyword").attr('data-board-keyword');
      console.log(keyword);
      let search = $("#search").val();
      console.log(search);
      console.log(cord);
      $.ajax({
         type:"GET",
         url:"./cordList",
         data:{
            cord:cord,
            search:search,
            keyword:keyword,
            pn:pn
         },
         success:function(result){
            result=result.trim();   
            $('#cordList').html(result);
         }
         
      });
   });
   
   $(".addBtn").click(function(){
      location.href="./insert";
   });
   
   $(".before").click(function(){
      $(".before").removeClass("on");
       $(this).addClass("on");
   });

</script>
</body>
</html>