<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
input, select, img {
   vertical-align: middle;
}

#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot,
   .sect-smuse, .sect-cinfo {
   position: relative;
   width: 980px;
   margin: 0 auto;
}

#contents {
    clear: both;
    padding-bottom: 50px;
}

body {
   background-color: #FDFCF0;
}

li {
   display: list-item;
   text-align: -webkit-match-parent;
}

.linemap-wrap {
   width: auto;
   height: 28px;
   margin: 0 auto;
   background-color: #f1f0e5;
   border-bottom: 1px solid #cacac0;
   display: block;
   padding-left: 200px;
}

h3 {
   height: 41px;
   margin: 30px 0 15px;
   line-height: 41px;
   text-align: center;
   font-weight: 500;
}

.wrap-join-2016 .join-hd {
    text-align: center;
}

.wrap-join-2016 .join-hd h3 {
   margin: 60px 0 18px;
   height: auto;
   background: none;
}

.joinMent {
   font-size: 13px;
   line-height: 1.2;
   color: #666;
   font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
   font-weight: 300;
   text-align: center;
}

.wrap-join-2016 .join-hd>p {
   margin-bottom: 33px;
   font-size: 15px;
   color: #222;
}

.wrap-join-2016 .join-benefit {
 
   margin-top: 46px;
   padding: 0 30px;
}

.wrap-join-2016 .benefit-list {
   overflow: hidden;
   margin-bottom: 30px;
}

.wrap-join-2016 .benefit-list>li {
   float: left;
   padding: 30px;
   margin-left: 10px;
   width: 238px;
   height: 188px;
   border: 1px solid #e1e0db;
   color: #222;
}

.wrap-join-2016 .join-benefit h4 {
   margin-bottom: 15px;
   font-size: 16px;
   color: #333;
   margin-bottom: 15px;
   font-weight: 500;
}

.wrap-join-2016 .benefit-list h5 {
   display: block;
   padding-bottom: 13px;
   font-size: 13px;
   color: #333;
   border-bottom: 1px solid #e1e0db;
}

.wrap-join-2016 .benefit-list .bl-dep1>li {
   padding-left: 8px;
   font-size: 13px;
   background:
      url('https://img.cgv.co.kr/R2014/images/common/bul_circle_small.gif')
      no-repeat 0 7px;
   line-height: 1.8;
}

.wrap-join-2016 .benefit-list>li:first-child {
   margin-left: 0;
}

.wrap-join-2016 .bl-desc {
   text-align: center;
   font-size: 14px;
   color: #222;
}

.container-fluid {
   padding: 0 30px;
}

.wrap-join-2016 .link-join {
    display: inline-block;
    padding: 2px;
    color: #fff;
    font-size: 15px;
    background-color: #e71a0f;
}

.wrap-join-2016 .link-join > span {
    display: block;
    padding: 0 50px;
    height: 44px;
    line-height: 44px;
    border: 1px solid #f07469;
}
</style>

</head>
<body>
   <c:import url="../temp/mainHome.jsp"></c:import>
   <div class="linemap-wrap">
      <ul>
         <li><a href="http://localhost/s5/"><img alt="home"
               src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
      </ul>
   </div>

   <div id="contents" class="">

      <!-- Contents Start -->


      <!-- 실컨텐츠 시작 -->
      <div class="wrap-join-2016">
         <div class="join-hd">
            <h3>
               <img src="http://img.cgv.co.kr/R2014/images/common/img_join_hd.jpg"
                  alt="CGV에 오신걸 환영합니다.">
            </h3>
            <p class="joinMent">
               CGV 회원이 되시면 하나의 통합된 회원 ID와 비밀번호로<br>CGV의 다양한 서비스를
               이용하실 수 있습니다.
            </p>
<a href="http://localhost/s5/member/memberJoin" title="새창" class="link-join"><span>CGV 회원 가입</span></a>

         </div>

         <div class="join-benefit">
            <h4>CJ ONE 상세 혜택</h4>
            <ul class="benefit-list">
               <li>
                  <h5>기본 적립율</h5>
                  <ul class="bl-dep1">
                     <li>유료 영화관람 금액의 3 ~ 7% 적립</li>
                     <li>매점 결제 금액의 0.5% 적립
                        <ul class="bl-dep2">
                           <li>적립 방법 : 영수증 하단의 적립번호와<br>인증번호를 CGV 홈페이지/모바일에서 입력
                           </li>
                           <li>이벤트 기간중에만 적립 가능<br>(일부매장 제외)
                           </li>
                        </ul>
                     </li>
                  </ul>
               </li>
               <li>
                  <h5>제휴할인 시 / 적립 가능매장</h5>
                  <ul class="bl-dep1">
                     <li>제휴할인 + 결제금액의 0 ~ 7% 적립</li>
                  </ul>
               </li>
               <li>
                  <h5>기타 적립안내 / 포인트 사용단위</h5>
                  <ul class="bl-dep1">
                     <li>단체할인 시, 무비머니, 관람권,<br>상품권 등으로 구매/결제 시 적립 제외
                     </li>
                     <li>최대 1일 6회(현장 또는 온라인) 또는 1일<br>24매(온라인) 예매제한
                     </li>
                     <li>사용 단위
                        <ul class="bl-dep2">
                           <li>매표, 매점 : 500P</li>
                           <li>온라인 예매 : 10P</li>
                        </ul>
                     </li>
                  </ul>
               </li>
            </ul>
            <p class="bl-desc">※ CJ ONE 통합회원으로 가입되더라도 정보 제공 및 약관 동의가 되지 않은
               CJ ONE 제휴 브랜드에는 개인정보가 제공되지 않습니다.</p>
         </div>

      </div>


   </div>
   <!-- 실컨텐츠 끝 -->


   <!--/ Contents End -->



</body>
</html>