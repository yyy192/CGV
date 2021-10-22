<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #FDFCF0;
}

@font-face {
	font-family: 'cj_onlyone_new_medium';
	src: url('/s5/resources/fonts/CJ+ONLYONE+Medium.ttf') format('truetype');
}

.asdf {
	height: 400px;
}

.bricks {
	width: auto;
	height: 450px;
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_c_bricks.png");
	background-repeat: repeat-x;
}

.mypage_img {
	width: 980px;
	height: 450px;
	background-image:
		url("https://img.cgv.co.kr/R2014/images/common/bg/bg_mycgv_info.gif");
	margin: 0 auto;
}

.empty_1 {
	margin: 0 auto;
	width: 882px;
	height: 60px;
}

.mypage_content_1 {
	margin: 0 auto;
	width: 882px;
	height: 135px;
}

.my_img {
	width: 135px;
	height: 135px;
	float: left;
}

.my_img_1 {
	width: 135px;
	height: 135px;
	float: left;
}

.my_img_2 {
	width: 135px;
	height: 135px;
	background-image:
		url("https://img.cgv.co.kr/R2014/images/common/bg/bg_photocircle03.png");
	float: left;
	position: absolute;
}

.my_info {
	width: 482px;
	height: 135px;
	margin-left: 165px;
}

.my_info_1 {
	width: 482px;
	height: 53px;
	border-bottom: 0.5px solid;
	border-color: #8c7651;
}

.my_info_1>strong {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 29px;
}

.my_info_1>em {
	font-size: 14px;
	line-height: 14px;
	margin-left: 20px;
}

.my_info_2 {
	margin-left: 50xp;
	width: 482px;
	height: 53px;
}

.my_grade {
	width: 482px;
	height: 20px;
	font-size: 20px;
	font-weight: bolder;
	line-height: 20px;
}

.my_grade>p {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.empty_2 {
	margin: 0 auto;
	width: 882px;
	height: 60px;
}

.mypage_content_2 {
	margin: 0 auto;
	width: 580px;
	height: 135px;
}

.my_coupon {
	width: 250px;
	height: 135px;
	float: left;
}

.mycoupon {
	display: inline-block;
	height: 40px;
	margin: 0 0 14px;
	background:
		url("https://img.cgv.co.kr/R2014/images/sprite/sprite_text.png")
		no-repeat 0 0;
	line-height: 40px;
	font: 0/0 a;
	vertical-align: middle;
	zoom: 1;
	width: 246px;
	background-position: 31px 12px;
}

.my_point {
	width: 280px;
	height: 135px;
	margin-left: 20px;
	float: left;
	border-left: 0.5px solid;
	border-color: #8c7651;
	padding-left: 20px;
}

.mypoint {
	display: inline-block;
	height: 40px;
	margin: 0 0 14px;
	margin-left: 30px;
	background:
		url("https://img.cgv.co.kr/R2014/images/sprite/sprite_text.png")
		no-repeat 0 0;
	line-height: 40px;
	font: 0/0 a;
	vertical-align: middle;
	zoom: 1;
	width: 216px;
	background-position: 9px -27px;
}

.mypage_content_2 ul>li>span {
	float: right;
}

.licss {
	border-bottom: 2px solid;
	border-color: #8c7651;
	margin-top: 10px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 12px;
	line-height: 30px;
}

.detail_content_pa {
	margin: 0 auto;
	margin-top: 10px;
	width: 980px;
	height: 400px;
}

.detail_content {
	margin: 0 auto;
	margin-top: 10px;
	width: 800px;
	height: 400px;
	float: right;
}

.box-contents {
	width: 210px;
	height: 90px;
	float: left;
}

.box-contents>dl>dt>a {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #222222;
}

.box-contents>dl>dd {
	width: 300px;
}

.box-contents>dl>dd>a {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #222222;
}

.box-contents>dl>dd>em {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
	margin: 0 10px 0 0;
}

.box-contents>dl>dd>strong {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #000000;
}

.price-n-btns {
	clear: both;
	padding-top: 24px;
	padding-left: 109px;
}

.price-n-btns .bd-wrap {
	position: relative;
	border-top: 1px solid #d6d4ca;
	min-height: 48px;
}

.price-n-btns .bd-wrap>dl {
	position: absolute;
	left: 0;
	top: 27px;
	width: 160px;
	height: 17px;
}

.price-n-btns .bd-wrap>dl>dt {
	float: left;
	height: 17px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
	color: #222222;
}

.price-n-btns .bd-wrap dl>dd {
	float: left;
	margin-top: 0;
	margin-bottom: 0px;
	margin-left: 6px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
	color: #2275a4
}

.snb>ul {
	margin-bottom: 10px;
	float: left;
	margin-top: 10px;
	width: 160px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
}

.snb>ul>li.on {
	width: 142px;
	height: 34px;
	float: right;
	margin-left: 18px;
}

.snb>ul>li.on_2 {
	background-color: #e71a0f;
	width: 160px;
	height: 34px;
}

.snb>ul>li.on_2 {
	margin-top: 3px;
	width: 142px;
	height: 34px;
	float: left;
}

.side_2 {
	margin-top: 3px;
	width: 18px;
	height: 34px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/ribon_left.png')
		no-repeat 0 0;
	float: left;
}

.snb>ul>li.on_2>a {
	background-color: #e71a0f;
	color: #fdfcf0;
	width: 160px;
	height: 34px;
}

.snb>ul>li>a {
	width: 160px;
	height: 34px;
	padding-left: 5px;
	color: #222;
	font-weight: 500;
	font-size: 14px;
	line-height: 34px;
}

.type2 {
	padding-bottom: 8px;
	border-bottom: 2px solid #222;
	height: 56px;
}

.tit-mycgv {
	overflow: hidden;
	position: relative;
	line-height: 34px;
}

.tit-mycgv>h3, .cols-content .tit-mycgv>h4 {
	float: left;
	height: 34px;
	margin: 0;
	background-image: none;
	color: #222;
	font-weight: 500;
	font-size: 17px;
	line-height: 34px;
	text-align: left;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 17px;
	color: #222222;
}

.type2 p {
	clear: both;
	float: none;
	margin-left: 0;
	font-size: 13px;
	line-height: 1;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	font-weight: 300;
	color: #666666;
}

.type2 p>em {
	color: #fb4357;
}

.type2 a.round {
	position: absolute;
	right: 0;
	bottom: 18px;
}

.round.inblack {
	background: #222222;
	border: 2px solid #222222;
	color: #ffffff;
	line-height: 21px;
}

.round {
	line-height: 23px;
	font-weight: 500;
	font-size: 12px;
	text-align: center;
	vertical-align: middle;
	display: inline-block;
}

.round.inblack>* {
	border: 1px solid #5b5b58;
}

.cols-mycgv-booking {
	width: 800px;
	height: 530px;
}

.sect-register.booking {
	margin: 20px 0 10px;
}

.sect-register {
	margin-top: 50px;
	text-align: center;
}

.sect-register.booking>p>strong {
	margin-bottom: 5px;
}

.sect-register>p>strong {
	display: block;
	margin-bottom: 15px;
	color: #222;
	font-size: 24px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	color: #222222;
	font-weight: 500;
}

.sect-register.booking>p em {
	color: #fb4357;
}

.sect-register.booking>p>span {
	font-size: 13px;
	color: #666666;
}

.cols-mycgv-booking .lst-item {
	position: relative;
	width: 740px;
	padding: 30px;
	border-bottom: 1px solid #d6d4ca;
}

.box-set-info {
	position: relative;
}

.box-number {
	margin-bottom: 20px;
}

.box-number>em {
	margin-right: 13px;
	color: #666;
	font-weight: 300;
	font-size: 11px;
}

.box-number>strong {
	color: #000;
	font-family: verdana, sans-serif;
	font-weight: bold;
	font-size: 13px;
}

.box-number>strong i {
	color: #e71a0f;
}

.box-info {
	overflow: hidden;
	width: 740px;
}

.box-image {
	width: 90px;
	height: 140px;
	margin-right: 29px;
	float: left;
}

.box-image a {
	display: block;
	height: 140px;
}

.thumb-image {
	width: 90px;
	height: 140px;
}

.thumb-image>img {
	width: 90px;
	height: 140px;
}

.detail-area {
	float: left;
	width: calc(100% - 119px);
	height: 115px;
}

.reservation-info-wrap {
	overflow: hidden;
}

.box-contents.artHouse {
	float: left;
	width: 100%;
	margin-right: 0;
}

.reservation-info-wrap h2 {
	color: #222;
	font-size: 14px;
	overflow: hidden;
	line-height: 1.6;
	padding-bottom: 10px;
	border-bottom: 1px solid #bbb9b1;
	margin-bottom: 8px;
	height: 33px;
}

.res-title {
	float: left;
	max-width: calc(100% - 120px);
	font-size: 14px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	color: #222222;
}

.box-set-info .res-price_1 {
	float: right;
	font-size: 13px;
	color: #0077a8;
	font-weight: bold;
	padding-right: 30px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.reservation-mv-info {
	float: left;
}

.reservation-mv-info>li {
	box-sizing: border-box;
	float: left;
	width: 50%;
	padding-right: 10px;
	margin-top: 8px;
}

.reservation-mv-info>li>dl {
	overflow: hidden;
}

.reservation-mv-info>li dt {
	float: left;
	width: 60px;
	color: #222;
	font-size: 13px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.reservation-mv-info>li dd {
	float: left;
	width: calc(100% - 60px);
	font-weight: 500;
	line-height: 1.3;
	font-size: 13px;
	color: #666666;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.txt-red {
	color: #e71a0f !important;
}

.resevation-payment-info {
	margin-top: 32px;
	padding-left: 119px;
}

.resevation-payment-info>h2 {
	font-size: 14px;
	color: #222;
	font-weight: 500;
	margin-bottom: 10px;
	line-height: 1.6;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
	color: #222222;
}

.resevation-payment-info .resevation-payment {
	background-color: rgba(255, 255, 255, 0.75);
	padding: 26px 30px;
	box-shadow: 0px 0px 6px rgb(0 0 0/ 10%);
}

.resevation-payment-info .resevation-payment-total {
	overflow: hidden;
	padding-bottom: 20px;
	margin-bottom: 20px;
	border-bottom: 1px dotted #f0efe4;
}

.resevation-payment-total .totel-title {
	font-size: 14px;
	color: #222;
	font-weight: 500;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
	color: #222222;
}

.resevation-payment-info .resevation-payment-part {
	padding-left: 12px;
	position: relative;
	font-size: 12px;
	color: #666;
	overflow: hidden;
}

.part-price {
	float: right;
	font-weight: bold;
}

.res-price_2 {
	float: right;
	font-size: 13px;
	color: #0077a8;
	font-weight: bold;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.set-btn {
	position: static;
	overflow: hidden;
	margin-top: 20px;
}

input {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
}
</style>
</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	<div class="bricks">
		<div class="mypage_img">
			<div class="empty_1"></div>
			<div class="mypage_content_1">
				<div class="my_img">
					<div class="my_img_1">
						<img
							src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
							alt="" onerror="errorImage(this, {'type':'profile'})"
							width="135px" height="135px">
					</div>
					<div class="my_img_2"></div>
				</div>
				<div class="my_info">
					<div class="my_info_1">
						<strong>${member.name}님</strong> <em>${member.id}</em>
					</div>
					<br>
					<div class="my_info_2">
						<div class="my_grade">
							<p>현재 고객등급 조정 기간입니다.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="empty_2"></div>
			<div class="mypage_content_2">
				<div class="my_coupon">
					<div class="mycoupon"></div>
					<ul>

						<!-- <li><a href="http://www.cgv.co.kr/user/vip-lounge/"
                     class="round black1"><i>CGV VIP 혜택보기</i></a></li> -->

						<li class="licss"><strong>CGV 할인쿠폰</strong> <span><em>0</em>
								개</span></li>
						<li class="licss"><strong>영화관람권</strong> <span><em>0</em>
								개</span></li>
					</ul>
				</div>
				<div class="my_point">
					<div class="mypoint"></div>
					<!-- <a href="/user/mycgv/cjone-point/pointlist.aspx">CJ ONE POINT
                  더보기</a> -->
					<ul>
						<li class="licss"><strong>CJ ONE 사용가능 포인트</strong> <span><em
								class="txt-maroon">0</em> 점</span></li>
						<li class="licss"><strong>VIP선정 포인트</strong><a
							href="/user/mycgv/cjone-point/pointlist.aspx"
							class="mycgv_tooltip"></a> <span><em>0</em> 점</span></li>
					</ul>

				</div>
				<div></div>
			</div>
		</div>
	</div>
	<div class="detail_content_pa">
		<div class="snb">
			<ul>
				<li class="side_1"><div></div></li>
				<li class="on"><a href="../member/mypage" title="현재 선택"
					class="on_1_1">MY CGV HOME <i></i>
				</a></li>
				<li class="side_2"><div></div></li>
				<li class="on_2"><a href="/user/mycgv/reserve/?g=1"">나의
						예매내역 </a></li>
			</ul>
		</div>
		<div class="detail_content" id="mycgv_contents">
			<div class="tit-mycgv type2">
				<h3>나의 예매내역</h3>
				<p>
					지난 <em>1개월</em>까지의 예매내역을 확인하실 수 있으며, 영수증은 <em>신용카드 결제 내역</em>만 출력
					가능합니다.
				</p>
				<a href="/user/movielog/watched.aspx" class="round inblack"><span>내가
						본 영화</span></a>
			</div>
			<div class="cols-mycgv-booking">
				<div class="7">
					<h1>예매 내역이 존재하지 않습니다.</h1>
				</div>
				<c:forEach items="${list}" var="dto">
					<div class="sect-register booking">
						<p>
							<strong>현장에서 발권하실 경우 꼭 <em>예매번호</em>를 확인하세요.
							</strong> <span>티켓판매기에서 예매번호를 입력하면 티켓을 발급받을 수 있습니다.</span>
						</p>
					</div>


					<div class="lst-item">
						<div class="box-set-info">
							<div class="box-number">
								<em>예매번호</em> <strong>${dto.ticketNum}</strong>
							</div>

							<div class="box-info">
								<div class="box-image">
									<a href="/movies/detail-view/?midx=84617"> <span
										class="thumb-image"> <img class="0"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83003/83003_320.jpg"
											alt="007 포스터" onerror="errorImage(this)"> <img
											class="1"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84872/84872_320.jpg"
											alt="보이스 포스터" onerror="errorImage(this)"> <img
											class="2"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85019/85019_320.jpg"
											alt="F20 포스터" onerror="errorImage(this)"> <img
											class="3"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84998/84998_320.jpg"
											alt="쁘띠마망 포스터" onerror="errorImage(this)"> <img
											class="4"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_320.jpg"
											alt="기적 포스터" onerror="errorImage(this)"> <img class="5"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85014/85014_320.jpg"
											alt="스틸워터 포스터" onerror="errorImage(this)"> <img
											class="6"
											src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84834/84834_320.jpg"
											alt="샹치 포스터" onerror="errorImage(this)">
									</span>
									</a>
								</div>

								<div class="detail-area">
									<div class="reservation-info-wrap">
										<h2 class="box-contents artHouse">
											<a href="/movies/detail-view/?midx=84617"
												class="res-title movieName">${dto.movieName}</a> <span
												class="res-price_1">${dto.price}원</span>
										</h2>
										<ul class="reservation-mv-info">
											<li>
												<dl>
													<dt>관람극장</dt>
													<dd>
														${dto.theater} <a href="javascript:theaterMove('0074');">[극장정보]</a>
													</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>관람인원</dt>
													<dd>1명</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>관람일시</dt>
													<dd class="txt-red">${dto.watchDate}${dto.timeTable}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>관람좌석</dt>
													<dd>${dto.seat}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>상영관</dt>
													<dd>씨네앤리빙룸</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>매수</dt>
													<dd>1매</dd>
												</dl>
											</li>
										</ul>
									</div>

									<div class="reservation-info-wrap store-history"
										style="display: none;">
										<h2>
											<span class="res-title">


												<button type="button" class="all-goods-btn"
													title="상품모두 열기/닫기"
													onclick="fn_SnackVisible(this, '0074202109174137998')">
													<span>전체상품보기버튼</span>
												</button>
											</span> <span class="res-price"> 원</span>
										</h2>
										<ul class="store-goods-list"
											id="divSnackList0074202109174137998">
										</ul>
									</div>
								</div>
							</div>
							<div class="resevation-payment-info">
								<h2>결제내역</h2>
								<div class="resevation-payment">
									<p class="resevation-payment-total">
										<span class="totel-title">총 결제금액</span> <span
											class="res-price_2"> ${dto.price}원</span>
									</p>
									<p class="resevation-payment-part">
										<span>신용카드</span><span class="part-price">${dto.price}원</span>
									</p>
								</div>
							</div>

						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>
	<div class="asdf"></div>


	<%-- <a href="./memberUpdate?id=${member.id}">개인정보 변경</a>
   <a href="./memberDelete?id=${member.id}">회원탈퇴</a>
   <a href="./ticketList?id=${member.id}">나의 예매내역</a>
 --%>
	<c:if test="${empty member}">
		<h1>로그인 하세요.</h1>
	</c:if>

	<c:import url="../temp/mainFooter.jsp"></c:import>

	<script type="text/javascript">
		i();

		function i() {
			let name = $('.movieName').html();

			console.log(name);

			if (name == '007 노 타임 투 다이') {
				$('.0').show();
				$('.1').hide();
				$('.2').hide();
				$('.3').hide();
				$('.4').hide();
				$('.5').hide();
				$('.6').hide();
				$('.7').hide();
				console.log('0');
			} else if (name == '보이스') {
				$('.1').show();
				$('.0').hide();
				$('.2').hide();
				$('.3').hide();
				$('.4').hide();
				$('.5').hide();
				$('.6').hide();
				$('.7').hide();
			} else if (name == 'F20') {
				$('.2').show();
				$('.0').hide();
				$('.1').hide();
				$('.3').hide();
				$('.4').hide();
				$('.5').hide();
				$('.6').hide();
				$('.7').hide();
			} else if (name == '쁘띠 마망') {
				$('.3').show();
				$('.0').hide();
				$('.1').hide();
				$('.2').hide();
				$('.4').hide();
				$('.5').hide();
				$('.6').hide();
				$('.7').hide();
			} else if (name == '기적') {
				$('.4').show();
				$('.0').hide();
				$('.1').hide();
				$('.2').hide();
				$('.3').hide();
				$('.5').hide();
				$('.6').hide();
				$('.7').hide();
			} else if (name == '스틸워터') {
				$('.5').show();
				$('.0').hide();
				$('.1').hide();
				$('.2').hide();
				$('.3').hide();
				$('.4').hide();
				$('.6').hide();
				$('.7').hide();
			} else if (name == '샹치와 텐 링즈의 전설') {
				$('.6').show();
				$('.0').hide();
				$('.1').hide();
				$('.2').hide();
				$('.3').hide();
				$('.4').hide();
				$('.5').hide();
				$('.7').hide();
			} else if (name == undefined) {
				$('.7').show();
				console.log('success');
			}

		};

		$('.on').mouseover(function() {
			$('.on').css('background-color', '#e71a0f');
			$('.on_1_1').css('color', '#fdfcf0');
		});

		$('.on').mouseout(function() {
			$('.on').css('background-color', 'transparent');
			$('.on_1_1').css('color', '#222222');
		});
	</script>
</body>
</html>