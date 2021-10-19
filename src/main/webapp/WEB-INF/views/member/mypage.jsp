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

.box-polaroid {
	overflow: hidden;
	background-color: #f2f0e5;
	border: 1px solid #333;
	width: 798px;
	height: 120px;
	margin-bottom: 30px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.box-inner.preegg  a>h3 {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 16px;
}

.box-inner.preegg a>span {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
}

.box-inner.watched  a>h3 {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 16px;
}

.box-inner.watched a>span {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
}

.box-inner.mvdiary  a>h3 {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 16px;
}

.box-inner.mvdiary a>span {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
}

.box-inner {
	width: 265px;
	padding: 0;
	text-align: center;
	line-height: 16px;
	float: left;
}

.box-inner:first-child {
	border-left: 0 none;
}

.box-inner a {
	display: inline-block;
	padding: 50px 0 16px;
}

.box-inner.preegg {
	background:
		url(http://img.cgv.co.kr/R2014/images/common/ico/mycgv/icon_preegg.png)
		no-repeat 50% 16px;
	height: 120px;
}

.box-inner.watched {
	background:
		url(http://img.cgv.co.kr/R2014/images/common/ico/mycgv/icon_watched.png)
		no-repeat 50% 16px;
	border-left: 1px dashed #cdc9c0;
	height: 120px;
}

.box-inner.mvdiary {
	background:
		url(http://img.cgv.co.kr/R2014/images/common/ico/mycgv/icon_mvdiary.png)
		no-repeat 50% 16px;
	border-left: 1px dashed #cdc9c0;
	height: 120px;
}

.tit-mycgv {
	overflow: hidden;
	position: relative;
	line-height: 34px;
	height: 34px;
}

.tit-mycgv em {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
}

.tit-mycgv p {
	float: left;
	margin-left: 5px;
}

.tit-mycgv>span {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	color: #666;
	text-align: left;
	line-height: 1.2;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	color: #666666;
}

.tit-mycgv>h3 {
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

.tit-mycgv p>a {
	display: inline-block;
	width: 20px;
	height: 19px;
	margin-left: 5px;
	background:
		url(https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png)
		no-repeat -50px -62px;
	font: 0/0 a;
	vertical-align: middle;
	zoom: 1;
}

.mybooking {
	width: 800px;
	height: 220px;
	border: 1px solid #000;
}

.mybooking_inner {
	width: 746px;
	height: 170px;
	padding: 26px;
}

.box-number {
	width: 90px;
	float: left;
}

.box-number>em {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 11px;
	color: #666666;
}

.box-number>span {
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 11px;
	color: #666666;
}

.box-image {
	margin: 0 13px 0 19px;
	float: left;
	width: 55px;
	height: 70px;
}

.box-image>a {
	width: 55px;
	height: 70px;
}

.thumb-image {
	display: block;
	position: relative;
	width: 55px;
	height: 70px;
}

.thumb-image>img {
	width: 55px;
	height: 70px;
}

.qwer {
	width: 800px;
	height: 100px;
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
	background-color: #e71a0f;
	width: 142px;
	height: 34px;
	float: left;
}

.snb>ul>li.on_2 {
	margin-top: 3px;
	width: 142px;
	height: 34px;
	float: left;
}

.snb>ul>li.on>a {
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

.side_1 {
	width: 18px;
	height: 34px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/ribon_left.png')
		no-repeat 0 0;
	float: left;
}

.side_2 {
	width: 18px;
	height: 34px;
	float: left;
	margin-top: 3px;
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
				<li class="on"><a href="./mypage" title="현재 선택">MY CGV HOME
						<i></i>
				</a></li>
				<li class="side_2"><div></div></li>
				<li class="on_2"><a href="./mybookingpage" class="on_2_1">나의
						예매내역 </a></li>
			</ul>
		</div>
		<div class="detail_content" id="mycgv_contents">
			<div class="box-polaroid">
				<div class="box-inner preegg">
					<a href="http://www.cgv.co.kr/user/movielog/" title="기대되는 영화">
						<h3>기대되는 영화</h3> <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?
					</span>
					</a>
				</div>
				<div class="box-inner watched">
					<a href="http://www.cgv.co.kr/user/movielog/watched.aspx"
						title="내가 본 영화">
						<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?
					</span>
					</a>
				</div>
				<div class="box-inner mvdiary">
					<a href="http://www.cgv.co.kr/user/movielog/diary.aspx"
						title="무비다이어리">
						<h3>무비다이어리</h3> <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?
					</span>
					</a>
				</div>
			</div>
			<div class="tit-mycgv">
				<h3>MY 예매내역</h3>
				<p>
					<em class="bookingNum">1건</em> <a href="/user/mycgv/reserve/">예매내역 더보기</a>
				</p>
				<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
			</div>
			<div class="mybooking">
				<div class="mybooking_inner">
					<div class="7">
							<h1>예매 내역이 존재하지 않습니다.</h1>
						</div>
					<c:forEach items="${list}" var="dto">						
						<div class="box-number">
							<em>예매번호</em> <strong>${dto.ticketNum}</strong> <span>(${dto.watchDate})</span>
						</div>
						<div class="box-image">
							<a href="/movies/detail-view/?midx=84617"> <span
								class="thumb-image"> <img class="0"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83003/83003_320.jpg"
									alt="007 포스터" onerror="errorImage(this)"> <img class="1"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84872/84872_320.jpg"
									alt="보이스 포스터" onerror="errorImage(this)"> <img class="2"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85019/85019_320.jpg"
									alt="F20 포스터" onerror="errorImage(this)"> <img class="3"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84998/84998_320.jpg"
									alt="쁘띠마망 포스터" onerror="errorImage(this)"> <img class="4"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_320.jpg"
									alt="기적 포스터" onerror="errorImage(this)"> <img class="5"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85014/85014_320.jpg"
									alt="스틸워터 포스터" onerror="errorImage(this)"> <img class="6"
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84834/84834_320.jpg"
									alt="샹치 포스터" onerror="errorImage(this)">
							</span>
							</a>
						</div>
						<div class="box-contents has_not_storeitem">
							<dl>
								<dt>
									<a href="/movies/detail-view/?midx=84617" class="movieName">${dto.movieName}</a>

								</dt>
								<dd>
									<em>관람극장</em> <strong>${dto.theater}</strong> <a
										href="javascript:theaterMove('0074');">[극장정보]</a>
								</dd>
								<dd>
									<em>관람일시</em> <strong>${dto.watchDate}
										${dto.timeTable}</strong>
								</dd>
								<dd>
									<em>관람좌석</em> <strong>${dto.seat}</strong>
								</dd>
							</dl>
						</div>
						<div class="price-n-btns">
							<div class="bd-wrap">
								<dl>
									<dt>총 결제금액</dt>
									<dd>
										<strong class="txt-lightblue">${dto.price}원</strong>
									</dd>
								</dl>
								<div class="set-btn">
									<input type="hidden" class="reserve-no" name="reserve-no"
										value="jDIBiIjEpwLc75nVRkwLNCSrfhchDvL0sRm55EztTi8=">



								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class="qwer"></div>


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
			} else if (name == '쁘띠마망') {
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
				$('.bookingNum').html('0건');
				console.log($('.bookingNum').html());								
			}
							

		};

		$('.on_2').mouseover(function() {
			$('.on_2').css('background-color', '#e71a0f');
			$('.on_2_1').css('color', '#fdfcf0');
			$('.side_2').css('color', '#fdfcf0');
		});

		$('.on_2').mouseout(function() {
			$('.on_2').css('background-color', 'transparent');
			$('.on_2_1').css('color', '#222222');
		});
	</script>
</body>
</html>