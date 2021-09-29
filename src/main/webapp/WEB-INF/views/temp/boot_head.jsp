<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">



<style type="text/css">

/* ===========================================
   Grouping Class 
============================================ */
#cgvwrap .cgv-ad-wrap .sect-head-ad,
.head, .im-wrap, 
#contents, 
.foot, 
.sect-smuse, 
.sect-cinfo {position:relative; width:980px; margin:0 auto;}
.head h1, .sect-srh, .sect-booking,.sect-phototicket {position:absolute; z-index:1;}
.cf:before,.cf:after                                                    {content: " "; /* 1 */display: table; /* 2 */}
.cf:after                                                               {clear: both;}
.cf                                                                     {*zoom: 1;}

/* Background */
.sect-service .util li > a, 
.sect-service .gnb li > a, 
.lnb > ul > li > a, 
.sect-service a.showtimes, 
.sect-booking > a, 
.sect-phototicket > a, 
.sect-person li > a, 
.line-v, 
.line-dot, 
.sect-smuse li > a, 
.sect-cinfo .share a, 
.sect-cinfo .logo {overflow:hidden; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png); background-repeat:no-repeat; text-indent:100%; white-space:nowrap;}
.lnb h2, 
.sect-smuse h2, 
.sect-cinfo h2 {font:0px/0 a; visibility:hidden;}
.sect-service h2, 
.im-wrap .lnb > ul > li > a, 
.sect-srh h2, 
.sect-booking h2, 
.sect-booking > a, 
.sect-phototicket h2, 
.sect-phototicket > a, 
.sect-person h2 {font:0px/0 a;}

/* Display:block */
.sect-service > .util li > a, .sect-service > .gnb li > a, .sect-service a.showtimes, .im-wrap .lnb > ul > li > a, .im-wrap > h2 > a, .im-wrap .ad-partner > a,
.sect-booking > a,.sect-phototicket > a, .sect-person li > a, .sect-common li > a, .ciols-movie li > a, .sect-smuse li > a, .policy li a, .sect-cinfo .share a, .sect-bcrumb li > a,
.sect-ad-external > a, .cols-banner .col-hd > a, .sect-showtimes .info-timetable a, .sect-aside-banner .aside-content-btm > a, .sect-aside-banner > .btn-top > a {display:block;}

#cgvwrap {position:relative; width:100%;min-width:980px}
#cgvwrap #header {background:#fdfcf0 url(https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif) repeat-x 0 0;} /* 20140620 DanielKim Del height:255px; padding-top:80px; background-position:0 80px; */
#cgvwrap #header > .head {position:relative; z-index:100;}
#cgvwrap #header > .head h1 {top:40px; left:0; width:223px; height:85px; padding:18px 0 0 22px; z-index:110;}
#cgvwrap #header > .head h1 > a {display:block;}

/* Header AD Area */
#cgvwrap .cgv-ad-wrap {width:100%; height:80px;} /* 20140620 position:absolute; top:0; left:0; Del */
#cgvwrap .cgv-ad-wrap .sect-head-ad {width:100%; height:80px; margin:0 auto; text-align:center;}
.sect_txt_banner {height:80px;background:#fefcef}
.sect_txt_banner iframe,.sect_txt_banner .inner {display:block;width:980px;height:80px;margin:0 auto}
iframe#TopBanner {margin: 0 auto;display:block}
.adreduce {position:relative;height:80px;margin:0 auto}
.adextend {position: absolute;left: 50%;top: 0px;z-index: 1000;margin: 0 auto;width: 980px;margin-left: -490px;}

#cgvwrap #header {
    background: #fdfcf0 url(https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif) repeat-x 0 0;
}

.sect-service > .util li > a > span,
.sect-service > .gnb li > a > span {visibility:hidden;}

.sect-service {overflow:hidden; position:relative; height:30px;}
.sect-service > .util {float:left;}
.sect-service > .util > li, .sect-service > .gnb > li, .im-wrap .lnb li {display:inline-block; float:left;}
.sect-service > .util li {border-right:1px solid #ddd;}
.sect-service > .util li:first-child {border-left:1px solid #ddd;}
.sect-service > .util li > a {padding:0 10px; line-height:30px;}
.sect-service > .util li > a.app {width:74px; height:30px; background-position:10px -714px;}
.sect-service > .util li > a.like {width:44px; height:30px; background-position:-85px -714px;}
.sect-service > .util li > a.frugal {width:85px; height:30px; background-position:-151px -714px;}
.sect-service > .util li > a.insta {width:60px; height:30px; background-position:-263px -714px;}
.sect-service > .gnb {float:right; margin:0; text-align:left;}
.sect-service > .gnb li {background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_v_line.gif) no-repeat 0 50%;}
.sect-service > .gnb li:first-child {margin-left:0; background-image:none;}
.sect-service > .gnb li > a {padding:0 10px; line-height:30px;}
.sect-service > .gnb li > a.login {width:29px; background-position:10px 9px;}
.sect-service > .gnb li > a.logout {width:43px; background-position:-521px 9px;}
.sect-service > .gnb li > a.join {width:39px; background-position:-42px 9px;}
.sect-service > .gnb li > a.mycgv {width:39px; background-position:-103px 9px;}
.sect-service > .gnb li > a.vip {width:62px; background-position:-170px 9px;}
.sect-service > .gnb li > a.club {width:53px; background-position:-254px 9px;}
.sect-service > .gnb li > a.customer {width:38px; background-position:-328px 9px;}
.sect-service > .gnb li > a.showtimes {width:106px; padding-right:0; background-position:-388px 9px;}

.im-wrap {position:relative; z-index:100; height:50px; padding-top:69px;}
.im-wrap > h2 {position:absolute; top:28px; left:50%; width:428px; height:31px; margin-left:-214px; text-align:center;}
.im-wrap .lnb {width:376px; margin:0 auto; clear:both;} /* 이벤트&컬쳐 : width:376px; 이벤트 / 컬쳐 : width:440px; */
.im-wrap .lnb > ul > li {position:relative; height:35px;}
.im-wrap .lnb > ul > li:first-child {margin-left:0;}
.im-wrap .lnb > ul > li.on .sub-wrap {display:block;}
.im-wrap .lnb > ul > li.booking {margin-left:25px;}
.im-wrap .lnb > ul > li.theaters {margin-left:25px;}
.im-wrap .lnb > ul > li.event {margin-left:40px;}
.im-wrap .lnb > ul > li.culture {margin-left:40px;}
.im-wrap .lnb > ul > li.giftshop {margin-left:55px;}
.im-wrap .lnb > ul > li.movie > a, 
.im-wrap .lnb > ul > li.event > a, 
.im-wrap .lnb > ul > li.theaters > a, 
.im-wrap .lnb > ul > li.giftshop > a, 
.im-wrap .lnb > ul > li.booking > a,
.im-wrap .lnb > ul > li.culture > a {height:17px; text-align:center;}
.im-wrap .lnb > ul > li.movie > a {width:60px; background-position:13px -28px;}
.im-wrap .lnb > ul > li.booking > a {width:60px; background-position:-77px -28px;}
.im-wrap .lnb > ul > li.theaters > a {width:60px; background-position:-166px -28px;}
.im-wrap .lnb > ul > li.event > a {width:47px; background-position:-272px -28px;}
.im-wrap .lnb > ul > li.culture > a {width:90px; background-position:-517px -28px;}
.im-wrap .lnb > ul > li.giftshop > a {width:62px; background-position:-379px -28px;}

.im-wrap .lnb .sub-wrap {display:none; position:absolute; top:31px; z-index:100; width:164px; padding:3px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_smenu.png) repeat-y 0 0;}
.im-wrap .lnb > ul > li.movie > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.booking > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.theaters > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.event > .sub-wrap {left:-40px;}
.im-wrap .lnb > ul > li.culture > .sub-wrap {left:-37px;}

.im-wrap .lnb .sub-wrap > .smenu {padding:20px 15px; border:2px solid #828282;}
.im-wrap .lnb .sub-wrap > i {display:block; position:absolute; top:-10px; left:50%; width:19px; height:10px; margin-left:-9px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_smenu_arrow.png) no-repeat 0 0;}
.im-wrap .lnb .sub-wrap > .smenu li {margin-top:15px;}
.im-wrap .lnb .sub-wrap > .smenu li:first-child {margin-top:0;}
.im-wrap .lnb .sub-wrap > .smenu li > a {display:block; width:130px; color:#fff; font-weight:500; font-size:13px; line-height:15px;}
.im-wrap .lnb .sub-wrap > .smenu li > a:hover, 
.im-wrap .lnb .sub-wrap > .smenu li > a:focus, 
.im-wrap .lnb .sub-wrap > .smenu li.on > a {background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_smenu_hand.png) no-repeat 100% 1px; color:#e71a0f;}
.im-wrap .lnb .sub-wrap > .smenu li.last {padding-top:15px; border-top:2px solid #828282;}


</style>
	
<div class="sect-service">
				<h2>서비스 메뉴</h2>
                <ul class="util">             
                
                    <li><a href="/user/login/?returnURL=https%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx" class="login"><span>로그인</span></a></li>
					<li><a href="/user/join/" class="join"><span>회원가입</span></a></li>
               
					
				</ul>
           </div>


<h1>
	<a href="./"><img
		src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV"></a>
</h1>

<div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX"></h2>



				<div class="lnb">
					<h2>CGV 주메뉴</h2>
					<ul id="gnb_list">
						<li class="movie"><a href="/movies/">영화</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/movies/">무비차트</a></li>
										<li><a href="/movies/hd-trailer.aspx">HD 트레일러</a></li>
										<li><a href="/movies/finder.aspx">무비파인더</a></li>
                                        <!--
                                        2019-12-03 평점 서비스 삭제 by 안지은
										<li><a href="/movies/point/">평점</a></li>
                                        -->
										<li class="last"><a href="/arthouse/">CGV아트하우스</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="booking"><a href="/ticket/">예매</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/">빠른예매</a></li>
										<li><a href="/reserve/show-times/">상영시간표</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="theaters"><a href="/theaters/">극장</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/">CGV 극장</a></li>
										<li><a href="/theaters/special/">특별관</a></li>
										<li class="last"><a href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx" class="specialclub">CLUB 서비스</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="customer"><a href="/notice/list">고객 센터</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/notice/list/">공지/뉴스</a></li>
										<li><a href="/question/list">자주찾는 질문</a></li>								
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->

                
				
			</div>