<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: #FDFCF0;
} 

#footer {
   background:
      url('https://img.cgv.co.kr/r2014/images/common/bg/bg_footer_com.gif')
      repeat-x 0 100%;
   width: auto;
   height: auto;
}

#footer .sect-ad {
   width: auto;
   height: 240px;
   text-align: center;
}

#footer .sect-ad iframe {
   width: 100%;
   height: 240px;
   display: block;
}

#footer .foot {
   padding: 0 0 147px;
   width: 100%;
   height: 220px;   
}

.sect-smuse {
   padding-left: 15px;
   overflow: hidden;
   width: auto;
   border-top: 1px solid #949494;
   border-bottom: 1px solid #949494;
   height: 66px;
   padding-top: 22px;
}

.sect-smuse>ul {
   width: 980px;
   margin: 0 auto;
}

.sect-smuse li {
   height: 66px;
}

.sect-smuse li, .sect-cinfo li {
   display: block;
   float: left;
}

.sect-smuse li {
   margin-left: 32px;
}

.sect-smuse li:first-child {
   margin-left: 0;
}

.sect-smuse li>a {
   height: 44px;
}

.sect-smuse li>a.dx {
   width: 49px;
   background-position: 0 -768px;
}

.sect-smuse li>a.imax {
   width: 59px;
   background-position: -74px -768px;
}

.sect-smuse li>a.screenx {
   width: 88px;
   background-position: -159px -768px;
}

.sect-smuse li>a.spherex {
   width: 76px;
   background-position: -273px -768px;
}

.sect-smuse li>a.soundx {
   width: 72px;
   background-position: -379px -768px;
}

.sect-smuse li>a.tempur {
   width: 55px;
   background-position: -480px -768px;
}

.sect-smuse li>a.gold {
   width: 84px;
   background-position: -567px -768px;
}

.sect-smuse li>a.cine {
   width: 89px;
   background-position: -679px -768px;
}

.sect-smuse li>a.cinema {
   width: 86px;
   background-position: 0 -826px;
}

.sect-smuse li>a.kids {
   width: 70px;
   background-position: -113px -826px;
}

.sect-smuse li>a.cinenforet {
   width: 120px;
   background-position: -207px -826px;
}

.sect-cinfo {
   padding-top: 28px;
   width: 980px;
   height: 116px;
   margin: 0 auto;
}

.foot .sect-cinfo {
   
}

.sect-cinfo .familysite, .sect-cinfo .share, .sect-cinfo .logo {
   position: absolute;
}

.bottom_section {
   width: 1000px;
   height: 90px;
   float: left;
}

.bottom_section_left {
   width: 100px;
   height: 90px;
   float: left;
}

.bottom_section_left_img {
   width: 100px;
   height: 50px;
   margin-top: 23px;
   margin-bottom: 10px;
   background-position: -145px -319px;
}

.bottom_section_middle {
   width: 580px;
   height: 90px;
   float: left;
   margin-left: 10px;
}

.middle_address_1 {
   margin-top: 17px;
   width: 800px;
   height: 20px;
   text-align: left;
   font-family: Helvetica, verdana, sans-serif;
   font-size: 11px;
}

.middle_address_2 {
   margin-top: 5px;
   width: 800px;
   height: 20px;
   text-align: left;
   font-family: Helvetica, verdana, sans-serif;
   font-size: 11px;
}

.middle_address_3 {
   margin-top: 5px;
   width: 800px;
   height: 20px;
   text-align: left;
   font-family: Helvetica, verdana, sans-serif;
   font-size: 11px;
}

.bottom_section_right {
   width: 300px;
   height: 90px;
   float: left;
   margin-left: 10px;
}

.bottom_section_right_share {
   width: 120px;
   height: 50px;
   float: left;
   margin-top: 30px;
}

.facebook {
   width: 34px;
   height: 34px;
   background-position: -509px -429px;
   float: left;
}

.twitter {
   width: 34px;
   height: 34px;
   background-position: -551px -429px;
   float: left;
}

.instagram {
   width: 34px;
   height: 34px;
   background-position: -593px -429px;
   float: left;
}

.facebook_a {
   width: 34px;
   height: 34px;
   float: left;
}

.twitter_a {
   width: 34px;
   height: 34px;
   float: left;
}

.instagram_a {
   width: 34px;
   height: 34px;
   float: left;
}

.sect-cinfo .policy {
   width: 1080px;
   height: 20px;
   letter-spacing: 0px;
}

.sect-cinfo .policy ul {
   width: 1080px;
   height: 20px;
   margin: 0 auto;
}

.sect-cinfo .policy li {
   margin: 0 auto;
   text-align: center;
   background:
      url(https://img.cgv.co.kr/r2014/images/common/bg/bg_li_vline2.gif)
      no-repeat 0 1px;
}

.sect-cinfo .policy li:first-child {
   background-image: none;
}

.sect-cinfo .policy li>a {
   padding: 0 6px;
   height: 14px;
   font-weight: 500;
   font-size: 13px;
   color: #444444;
   text-decoration: none;
   vertical-align: middle;
   letter-spacing: -1px
}

.sect-cinfo .policy li>a.empha-red {
   color: #e7612e;
}

.sect-cinfo .family {
   bottom: 22px;
   right: 0;
   margin-top: 30px;
}

.sect-cinfo .family select {
   width: 140px; /* background:transparent; */
/* border:1px solid #999; */
}

.sect-cinfo .family button[type='button'] {
   width: 29px;
   height: 29px;
   background-color: #666;
   color: #fdfcf0;
   font-family: verdana, sans-serif;
   font-size: 10px;
   font-weight: bold;
   text-align: center;
}


ol, ul {
   list-style: none;
}

.sect-service .util li>a, .sect-service .gnb li>a, .lnb>ul>li>a,
   .sect-service a.showtimes, .sect-booking>a, .sect-phototicket>a,
   .sect-person li>a, .line-v, .line-dot, .sect-smuse li>a, .sect-cinfo .share a,
   .sect-cinfo .bottom_section_left_img, .facebook, .twitter, .instagram {
   overflow: hidden;
   background-image:
      url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
   background-repeat: no-repeat;
   text-indent: 100%;
   white-space: nowrap;
}

a {
   color: inherit;
   text-decoration: none;
}

.sect-service>.util li>a, .sect-service>.gnb li>a, .sect-service a.showtimes,
   .im-wrap .lnb>ul>li>a, .im-wrap>h2>a, .im-wrap .ad-partner>a,
   .sect-booking>a, .sect-phototicket>a, .sect-person li>a, .sect-common li>a,
   .ciols-movie li>a, .sect-smuse li>a, .policy li a, .sect-cinfo .share a,
   .sect-bcrumb li>a, .sect-ad-external>a, .cols-banner .col-hd>a,
   .sect-showtimes .info-timetable a, .sect-aside-banner .aside-content-btm>a,
   .sect-aside-banner>.btn-top>a {
   display: block;
}

.sect-cinfo .logo {
   top: 1455px;
   left: 145px;
   width: 90px;
   height: 43px;
   background-position: -145px -319px;
}
</style>
</head>
<body>
   <div id="footer">
      <!-- footer_area (s) -->


      <div id="BottomWrapper" class="sect-ad">
         <iframe
            src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom"
            width="100%" height="240" title="" frameborder="0" scrolling="no"
            marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
      </div>
      <div class="foot">
         <div class="sect-smuse">
            <ul>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=4D14"
                  class="dx">4DX</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=07"
                  class="imax">IMAX</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=SCX"
                  class="screenx">SCREENX</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=SPX"
                  class="spherex">SphereX</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=99"
                  class="gold">GOLDCLASS</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=103"
                  class="cine">CINE de CHEF</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=pc"
                  class="cinema">THE PRIVATE CINEMA</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=CK"
                  class="kids">Cine kids</a></li>
               <li><a
                  href="http://www.cgv.co.kr/theaters/special/?regioncode=CF"
                  class="cinenforet">CINE&ampFORET;</a></li>
            </ul>
         </div>
         <div class="sect-cinfo">
            <div class="policy">
               <ul>
                  <li class="li_zip"><a href="http://corp.cgv.co.kr/company/"
                     target="_blank">회사소개</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx"
                     target="_blank">IR</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/recruit/step/default.aspx"
                     target="_blank">채용정보</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx"
                     target="_blank">광고/프로모션문의</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/advertize/af_default.aspx"
                     target="_blank">제휴문의</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/advertize/bp_insert.aspx"
                     target="_blank">출점문의</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/rules/privacy.aspx" class="empha-red">개인정보처리방침</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx"
                     target="_blank">윤리경영</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/company/cyberAudit.aspx"
                     class="empha-red">사이버감사실</a></li>
                  <li class="li_zip"><a
                     href="http://www.cgv.co.kr/guide/sitemap.aspx">사이트맵</a></li>
               </ul>
            </div>
            <div class="bottom_section">
               <div class="bottom_section_left">
                  <div class="bottom_section_left_img"></div>
               </div>
               <div class="bottom_section_middle">
                  <div class="middle_address_1">
                     <span>(04377) 서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</span>
                  </div>
                  <div class="middle_address_2">
                     <span>대표이사 : 허민회</span><span>사업자등록번호 : 104-81-45690</span><span>통신판매업신고번호
                        : 2017-서울용산-0662</span>
                  </div>
                  <div class="middle_address_3">
                     <span>호스팅사업자 : CJ올리브네트웍스</span><span>개인정보보호 책임자 : 심준범</span><span>대표이메일
                        : cjcgvmaster@cj.net</span><span>CGV고객센터 : 1544-1122</span>
                  </div>
               </div>
               <div class="bottom_section_right">
                  <div class="bottom_section_right_share">
                     <div class="facebook">
                        <a href="https://www.facebook.com/CJCGV" target="_blank"
                           class="facebook_a">FACEBOOK</a>
                     </div>
                     <div class="twitter">
                        <a href="https://twitter.com/cj_cgv" target="_blank"
                           class="twitter_a"></a>TWITTER
                     </div>
                     <div class="instagram">
                        <a href="https://www.instagram.com/cgv_korea/" target="_blank"
                           class="instagram_a"></a>INSTAGRAM
                     </div>
                  </div>

                  <div class="family">
                     <select id="family">
                        <option value="">계열사 바로가기</option>
                        <optgroup label="CJ그룹">
                           <option value="http://www.cj.net/">CJ주식회사</option>
                        </optgroup>
                        <optgroup label="식품 &amp; 식품서비스">
                           <option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
                           <option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
                           <option value="http://www.cjfreshway.com/index.jsp">CJ프레시웨이</option>
                        </optgroup>
                        <optgroup label="생명공학">
                           <option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당
                              BIO사업부문</option>
                           <option value="https://www.cj.co.kr/kr/about/business/bio">CJ
                              Feed&amp;Card</option>
                        </optgroup>
                        <optgroup label="물류 &amp; 신유통">
                           <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
                           <option value="http://www.cjenc.co.kr/kr/Default.asp">CJ대한통운
                              건설부문</option>
                           <option
                              value="https://www.oliveyoung.co.kr/store/company/brandStory.do">CJ올리브영</option>
                           <option value="https://www.cjolivenetworks.co.kr:449/">CJ올리브네트웍스</option>
                           <option value="https://www.cjoshopping.com:9002/index.asp">CJ
                              ENM 커머스부문</option>
                        </optgroup>
                        <optgroup label="엔터테인먼트 &amp; 미디어">
                           <option value="https://www.cjem.net:433/main/?locale=ko">CJ
                              ENM 엔터테인먼트부문</option>
                           <option
                              value="http://corp.cgv.co.kr/company/ir/manage/manage_list.aspx ">CJ
                              CGV</option>
                           <option value="http://www.cjpowercast.com/">CJ파워캐스트</option>
                        </optgroup>
                     </select>
                     <button type="button" title="새창" onclick="goFamilySite()">GO</button>
                  </div>
               </div>
            </div>
         </div>

      </div>
   </div>
</body>
</html>