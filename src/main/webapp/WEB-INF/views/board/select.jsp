<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select</title>
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
    a:hover { border: 2px solid #FFA07A;
            border-radius: 2px;
          }
   
   .ttt {
      font-size:16px;
      font-weight: bold;
   }
   .sttt {
      margin-top: 5px;
      font-size:14px;
   }
   .linemap-wrap {
       height: 28px;
       margin : 0 auto;
       background-color: #f1f0e5;
       border-bottom: 1px solid #cacac0;
      display: block;
   }
   .sec-wrap {
      margin: 0 200px;   
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
    .list-right {
        width: 880px;
        height: 1270px;
        /* background: red; */
        float:right;
        margin: 0 0 0 10px;
    }
   .addBtn {
       padding: 3px;
       color:white;
       border-radius:4px;
       background-color: black;
    }
    .delBtn {
       padding: 3px;
       color:white;
       border-radius:4px;
       background-color: black;
    }
    
    .board-select {
       margin-top: 20px;
    }
    
    .board-top {
       display: block;
       overflow: hidden;
       padding : 11px;
       border-top: solid 1px #b8b6aa;
        background-color: #edebe1;
    }
    .board-top > li {
       margin:0;
    }
    .board-top > .title {
       float: left;
       text-align:left;
       font-size: 12px;
       font-weight: bold;
       display: block;
       overflow: hidden;
       width: 520px;
       white-space: nowrap;
       text-overflow: ellipsis;
    }
    .board-top > .title > .title-margin {
       margin-left: 8px;
    }
    
    .board-top > .seb {
       float: right;
       font-size: 12px;
       line-height: 16px;
    }
    .board-top .seb .seb-padding {
       margin-left: 30px;
    }
    .board-top .seb .seb-bold {
       margin-left: 9px;
       font-weight: bold;
    }
    
    .board-main {
         display:block;
       padding: 35px 13px;
       text-align: left;
       font-size: 13px;
       border-bottom: solid 1px #b8b6aa;
       line-height: 24px;
    }
    
    .board-btn {
       margin: 20px 0px 30px 0px;
       text-align: right;
    }
    .board-btn .btn {
       background: #222222;
       border: 2px solid #222222;
       color: #ffffff;
       font-size:12px;
       line-height: 21px;
       border-radius: 3px;
    }
    
    .board-bottom {
       width: 100%;
       border-top: solid 1px #b8b6aa;
       border-bottom: solid 1px #b8b6aa;
       font-size: 13px;
    }
    
    .board-bottom .li-prev {
         padding: 12px 19px 12px 10px;
         display:block;
         overflow: hidden;
    }
    
    .board-bottom .li-prev .prev {
       float: left;
         margin: 0;
    }
    
    .board-bottom .li-prev .title {
       float:left;
       text-align: left;
       margin: 0 0 0 17px;
    }
    
    .board-bottom .li-prev .dd {
       float: right;
       font-size: 12px;
       margin: 0;
    }
    
    .board-bottom .li-next {
       padding: 12px 19px 12px 10px;
         display:block;
         overflow: hidden;
         border-top: solid 1px #d4d2c6;
    }
    
    .board-bottom .li-next .next {
       float: left;
         margin: 0;
    }
    
    .board-bottom .li-next .title {
       float:left;
       text-align: left;
       margin: 0 0 0 17px;
    }
    
    .board-bottom .li-next .dd {
       float: right;
       font-size: 12px;
       margin: 0;
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
         <li class="before"><a href="../question/list">자주찾는 질문</a></li>
         <li class="before"><a href="../notice/list">공지/뉴스</a></li>
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
      </div> <!-- align=left 끝 -->
      
   <div class="board-select">
   
      <ul class="board-top">
         <li class="title">[${dto.cord}] <span class="title-margin">${dto.title}</span></li>
         <li class="seb">
            <span>등록일 <em class="seb-bold">${dto.regDate}</em></span>
            <span class="seb-padding">조회수 <em class="seb-bold">${dto.hits}</em></span>
         </li>
      </ul>
      
      <div class="board-main">
         <p>${dto.contents}</p>
      </div>
      
      <div class="board-btn">
         <button type="button" class="btn">목록으로</button>
      </div>
      <div class="board-bottom">
         <ul class="li-prev">
            <li class="prev">이전글 ▲</li>
            <li class="title">
               <c:if test="${empty prev.title}">
               <span>이전 글이 없습니다.</span>
               </c:if>
               <c:if test="${not empty prev.title}">
                  <a href="./select?num=${prev.num}">${prev.title}</a>
               </c:if>
            </li>
            <li class="dd">등록일 <span class="dd-bold">${prev.regDate}</span></li>
         </ul>
         <ul class="li-next">
            <li class="next">다음글 ▼</li>
            <li class="title">
               <c:if test="${empty next.title}">
                  <span>다음 글이 없습니다.</span>
               </c:if>
               <c:if test="${not empty next.title}">
                  <a href="./select?num=${next.num}">${next.title}</a>
               </c:if>
            </li>
            <li class="dd">등록일 <span class="dd-bold">${next.regDate}</span></li>
         </ul>
      </div>
   </div>
   <br>
   
      <!-- 관리자만 들어갈 수 있게 관리자 아이디 생성 -->
      <div align="right">
         <c:if test="${not empty member and member.id eq 'admin'}">
            <button class="addBtn" type="button">ADD</button>
            <button class="delBtn" type="button">DELETE</button>
         </c:if>
      </div>
      
   </div><!-- class="list-right" 끝 -->   
</div><!-- list-main 끝 -->

<script type="text/javascript">
   $(".board-btn").on('click', '.btn', function(){
      location.href="../${board}/list";
   });
   
   $(".addBtn").click(function(){
      location.href="./update?num="+${dto.num};
   });
   $(".delBtn").click(function(){
      location.href="./delete?num="+${dto.num};
   });
</script>   
</body>
</html>