<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가격안내 Page</title>
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
   ul {
      list-style:none;
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
      margin: 0 200px;   
   }
   
   #contents {
      position: relative;
       width: 980px;
       margin: 0 auto;
       padding-bottom: 50px;
   }
   
   .title {
       position: relative;
       height: 51px;
       margin-top: 30px;
       border-bottom: 3px solid #241d1e;
   }
   .title > h3 {
      display: inline-block;
       position: relative;
       height: inherit;
       margin: 0;
       background-image: none;
       color: #222;
       font-weight: 540;
       font-size: 36px;
       text-align: left;
       vertical-align: middle;
   }
   
   .priceMain {
      width: 470px;
       margin: 50px auto 0 auto;
   }
   
   .priceMain > .normal {
      display: block;
       margin: 0 0 5px;
       padding-left: 17px;
       font-size: 24px;
       color: #000;
       font-weight: 500;
   }
   .priceMain > .p-table {
      position: relative;
       margin: 10px 0 20px;
       padding-bottom: 45px;
   }
   
   .p-table > table {
      width: 100%;
       border-bottom: 1px solid #ab9c8f;
         text-align: center;
       font-size: 20px;
       padding: 3px 5px;
       border-spacing: 0;
   }
   
   .p-table > table > thead> tr > th {
       color: #857362;
       font-weight: 300;
       padding: 7px 5px 10px 5px;
       vertical-align: middle;
   }
   
   .p-table > table > tbody> tr > td {
      padding: 7px 5px 10px 5px;
      padding-top: 12px;
       border-top: 1px solid #ab9c8f;
       color: #000;
       vertical-align: middle;
       font-weight: 300;
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

<div id="contents">

   <div class="title">
      <h3>관람가격 안내</h3>
   </div>
   <div class="priceMain">
      <div class="normal">■ 일반(2D)</div>
      <div class="p-table">
         <table>
            <thead>
            <tr>
               <th>요금</th>
               <th>시간대</th>
               <th>일반</th>
               <th>청소년</th>
            </tr>
            </thead>
            <tbody>
            <tr>
               <td>월~금</td>
               <td>일반</td>
               <td>10,000</td>
               <td>7,000</td>
            </tr>
            <tr>
               <td>주말,<br>공휴일</td>
               <td>일반</td>
               <td>10,000</td>
               <td>7,000</td>
            </tr>
            </tbody>
         </table>
      </div>
   </div>

</div>

<c:import url="../temp/mainFooter.jsp"></c:import>
</body>
</html>