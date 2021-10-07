<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
   background-color: #FDFCF0;
}



#footer {background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_footer_com.gif) repeat-x 0 100%; width: 100%; height: auto;} /* .sect-ad height 값에 따라 background-position 값 변경 */
#footer .sect-ad {width:auto; height:240px; text-align:center;}
#footer .sect-ad iframe {width:100%; height:240px;display:block;}
#footer .foot {padding:0 0 147px; width:100%; height:330px;}


.sect-smuse {overflow:hidden; width:100%; border-top:1px solid #949494; border-bottom:1px solid #949494; height: 66px; padding-top: 22px;}
.sect-smuse > ul {width:980px; margin:0 auto; }
.sect-smuse li {height: 66px;}
.sect-smuse li, .sect-cinfo li {display:block; float:left;}
.sect-smuse li {margin-left:32px;}
.sect-smuse li:first-child {margin-left:0;}
.sect-smuse li > a {height:44px;}
.sect-smuse li > a.dx {width:49px; background-position:0 -768px;}
.sect-smuse li > a.imax {width:59px; background-position:-74px -768px;}
.sect-smuse li > a.screenx {width:88px; background-position:-159px -768px;}
.sect-smuse li > a.spherex {width:76px; background-position:-273px -768px;}
.sect-smuse li > a.soundx {width:72px; background-position:-379px -768px;}
.sect-smuse li > a.tempur {width:55px; background-position:-480px -768px;}
.sect-smuse li > a.gold {width:84px; background-position:-567px -768px;}
.sect-smuse li > a.cine {width:89px; background-position:-679px -768px;}
.sect-smuse li > a.cinema {width:86px; background-position:0 -826px;}
.sect-smuse li > a.kids {width:70px; background-position:-113px -826px;}
.sect-smuse li > a.cinenforet {width:120px; background-position:-207px -826px;}

.sect-cinfo {padding-top:28px; width:980px; height: 116px; margin: 0 auto;}
.foot .sect-cinfo{}
/* Common Css : sect-cinfo */
.sect-cinfo .familysite, .sect-cinfo .share, .sect-cinfo .logo {position:absolute;}

.sect-cinfo .policy {width: 1080px; height:20px; letter-spacing:0px; }
.sect-cinfo .policy ul {width: 1080px; height: 20px; margin: 0 auto;}
.sect-cinfo .policy li {margin:0 auto; text-align:center;}
/* background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_li_vline2.gif) no-repeat 0 1px; */
.sect-cinfo .policy li:first-child {background-image:none;}
/* .sect-cinfo .policy li:first-child > a:first-child {padding-left:170px;} */
.sect-cinfo .policy li > a {padding:0 6px; height: 14px; font-weight:500; font-size:13px; color:#444444; text-decoration:none; vertical-align:middle;letter-spacing:-1px}
.sect-cinfo .policy li > a.empha-red {color:#e7612e;}

.sect-cinfo .familysite {bottom:22px; right:0;}
.sect-cinfo .familysite select {width:140px; background:transparent; border:1px solid #999;}
.sect-cinfo .familysite button[type='button'] {width:29px; height:29px; background-color:#666; color:#fdfcf0; font-family:verdana, sans-serif; font-size:10px; font-weight:bold; text-align:center;}

.sect-cinfo .share {position:absolute; display:inline-block; right:182px; top:63px;}
.sect-cinfo .share a {float:left; width:34px; height:34px; margin-left:2px;}
.sect-cinfo .share a:first-child {margin-left:0;}
.sect-cinfo .share a.facebook {background-position:-509px -429px;}
.sect-cinfo .share a.twitter {background-position:-551px -429px;}
.sect-cinfo .share a.instagram {background-position:-593px -429px;}

.sect-cinfo .logo {top:65px; left:0; width:90px; height:43px; background-position:-145px -319px;}


.foot .sect-cinfo .address {padding:20px 0 0 108px; font-size:12px; color:#555555;}
.sect-cinfo .address address {font-style:normal; height:12px;}
.sect-cinfo .address p {margin-top:4px;}
.sect-cinfo .address p.vl > span {display:inline-block; padding-left:5px; margin-left:5px; height:12px; border-left:1px solid #c0c0c0;}
.sect-cinfo .address p.vl > span:first-child {padding-left:0; margin-left:0; border-left:0;}
.sect-cinfo .address p.copyright {position:absolute; right:0; bottom:0; font-family:Helvetica, verdana, sans-serif; font-size:11px;}
.sect-cinfo .address .btn_goFtc{margin-left:2px;vertical-align:2px}

ol, ul {
    list-style: none;
}

.sect-service .util li > a, .sect-service .gnb li > a, .lnb > ul > li > a, .sect-service a.showtimes, .sect-booking > a, .sect-phototicket > a, .sect-person li > a, .line-v, .line-dot, .sect-smuse li > a, .sect-cinfo .share a, .sect-cinfo .logo {
    overflow: hidden;
    background-image: url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
    background-repeat: no-repeat;
    text-indent: 100%;
    white-space: nowrap;
}

a {
    color: inherit;
    text-decoration: none;
}

.sect-service > .util li > a, .sect-service > .gnb li > a, .sect-service a.showtimes, .im-wrap .lnb > ul > li > a, .im-wrap > h2 > a, .im-wrap .ad-partner > a, .sect-booking > a, .sect-phototicket > a, .sect-person li > a, .sect-common li > a, .ciols-movie li > a, .sect-smuse li > a, .policy li a, .sect-cinfo .share a, .sect-bcrumb li > a, .sect-ad-external > a, .cols-banner .col-hd > a, .sect-showtimes .info-timetable a, .sect-aside-banner .aside-content-btm > a, .sect-aside-banner > .btn-top > a {
    display: block;
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
                  <li class="li_zip"><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
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
                  <li class="li_zip"><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/rules/privacy.aspx"
                     class="empha-red">개인정보처리방침</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
                  <li class="li_zip"><a
                     href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx"
                     target="_blank">윤리경영</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/company/cyberAudit.aspx"
                     class="empha-red">사이버감사실</a></li>
                  <li class="li_zip"><a href="http://www.cgv.co.kr/guide/sitemap.aspx"></a></li>
               </ul>
            </div>
            
            <!-- <div class="address">
               <address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
               <p class="vl">
                  <span>대표이사 : 허민회</span><span>사업자등록번호 : 104-81-45690</span><span>통신판매업신고번호
                     : 2017-서울용산-0662</span> <a href="javascript:void(0);" onclick="goFtc()"
                     class="btn_goFtc"><img
                     src="http://img.cgv.co.kr/r2014/images/common/btn_reg.png"
                     alt="사업자정보확인"></a><a> </a>
               </p>
               <a>
                  
                     <span>호스팅사업자 : CJ올리브네트웍스</span><span>개인정보보호 책임자 : 심준범</span><span>대표이메일
                        : cjcgvmaster@cj.net</span><span>CGV고객센터 : 1544-1122</span>
                  
                  
               </a>
            </div>  -->
            
         </div>
         
      </div>
      </div>
</body>
</html>