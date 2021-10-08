<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
}

.my_info_1>strong {
	font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 29px;
}

.my_info_1>em {
	font-size: 14px;
	line-height: 14px;
	font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;
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

.empty_2 {
	margin: 0 auto;
	width: 882px;
	height: 60px;
}

.mypage_content_2 {
	margin: 0 auto;
	width: 550px;
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
}

.mypoint {
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
	width: 280px;
	background-position: 9px -27px;
}

.mypage_content_2 ul>li>span {
	float: right;
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

						<li><a href="http://www.cgv.co.kr/user/vip-lounge/"
							class="round black1"><i>CGV VIP 혜택보기</i></a></li>

						<li><strong>CGV 할인쿠폰</strong> <span><em>0</em> 개</span></li>
						<li><strong>영화관람권</strong> <span><em>0</em> 개</span></li>
					</ul>
				</div>
				<div class="my_point">
					<div class="mypoint"></div>
					<a href="/user/mycgv/cjone-point/pointlist.aspx">CJ ONE POINT
						더보기</a>
					<ul>
						<li><strong>CJ ONE 사용가능 포인트</strong> <span><em
								class="txt-maroon">0</em> 점</span></li>
						<li><strong>VIP선정 포인트</strong><a
							href="/user/mycgv/cjone-point/pointlist.aspx"
							class="mycgv_tooltip"></a> <span><em>0</em> 점</span></li>
					</ul>

				</div>
				<div></div>
			</div>
		</div>



	</div>
	<c:if test="${not empty member}">
		<h1>My CGV</h1>
		<div align=center>
			<div class="name">
				<h1>${member.name}님</h1>
			</div>
			<div class="id">
				<h3>${member.id}</h3>
			</div>
		</div>
		<br>
		<div align=center>
			<h6>PW : ${member.pw}</h6>
			<h6>NAME : ${member.name}</h6>
			<h6>PHONE : ${member.phone}</h6>
			<h6>E-mail : ${member.email}</h6>
			<h6>Birth : ${member.birth}</h6>
		</div>

		<br>
		<br>
		<br>
		<div align=center>
			<a href="./memberUpdate?id=${member.id}">개인정보 변경</a> <a
				href="./memberDelete?id=${member.id}">회원탈퇴</a> <a
				href="./ticketList?id=${member.id}">나의 예매내역</a>
		</div>
	</c:if>
	<c:if test="${empty member}">
		<h1>로그인 하세요.</h1>
	</c:if>
	<c:import url="../temp/mainFooter.jsp"></c:import>
</body>
</html>