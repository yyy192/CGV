<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<style type="text/css">


@font-face {
	font-family: 'cj_onlyone_new_medium';
	src: url('/s5/resources/fonts/CJ+ONLYONE+Medium.ttf') format('truetype');
}
body, input, textarea, select, button, table {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	background-color: #FDFCF0;
}
div {
	display: block;
}

ol, ul, li{
    list-style: none;
}

.h1_tit {
	margin: 0;
	color: #222;
	font-weight: normal;
	text-align: center;
	font-size: 32px;
	font-family: 'cj_onlyone_new_medium';
	padding-top: 50px;
	line-height: 48px;
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
.container-fluid {
	width: 884px;
	height: 300px;
	margin: 0 auto;
	padding: 50px;
}
.check_member_txt {
	float: left;
	width: 470px;
}
.container-fluid .check_member_txt dt {
	color: #222;
	font-size: 24px;
}
.container-fluid .check_member_txt dd {
	padding-top: 39px;
}
.bul_list .dot_arr {
	display: block;
	margin-bottom: 6px;
	padding-left: 10px;
	background:
		url('https://www.cjone.com/cjmweb/images/common/ico_dot.png')
		no-repeat 0 8px;
	color: #555;
	line-height: 1.5;
	font-size: 14px;
	font-family: Arial, nbgr, '나눔바른고딕', '돋음';
	margin-left: 0px;
	margin-top: 0px;
}
.check_member_form {
	width: 350px;
	float: right;
}
.mb-3 {
	padding-right: 0;
	padding-bottom: 8px;
}
.form-label-input {
	width: 318px;
	height: 32px;
}
.btn.btn_em {
	width: 326px;
	height: 46px;
	background-color: #333;
	color: #fff;
	cursor: pointer;
}
.em {
	color: #ee6900;
}
.allianceBrand_box{
	
	width: 884px;
	height : 400px;
   	margin : 0 auto;
    padding-top: 110px;
    padding-left: 50px;
    padding-right: 50px;
}
.allianceBrand_box .alliance_list li {
    float: left;
    padding: 20px 0 0 20px;
    margin-left: 0px;
}
.allianceBrand_box .alliance_list li a {
    display: block;
    width: 120px;
    height: 30px;
    
}
.in_sec {
	width : 860px;
	height : 270px;
	margin : 0px auto;
    padding: 0px 0px 40px 2px;
    
}
.joinImage {
	width: 90px;
	height: 40px;
}
.error_check {
	font-size: 10px;
	font-family: Arial, nbgr, '나눔바른고딕', '돋음';
}
</style>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>

	<div class="linemap-wrap">
		<ul>
			<li><a href="http://localhost/s5/"><img alt="home"
					src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
		</ul>
	</div>
	<h1 class="h1_tit">CJV 회원가입</h1>

	<div class="container-fluid">

		<form id="frm" class="col-md-5 mx-auto" action="./memberJoin"
			method="post">

			<dl class="check_member_txt">
				<dt>회원가입 여부 안내</dt>
				<dd>
					<ul class="bul_list">
						<li class="dot_arr">기존 회원가입 정보와 일치하는 정보를 입력하셔야 회원가입 여부를 정확하게
							확인하실 수 있습니다. <em class="em">입력하신 정보는 회원가입 여부에만 사용되며 저장되지
								않습니다.</em>
						</li>
						<li class="dot_arr">CGV에서는 전자상거래에 의거하여 만 14세 미만의 어린이/학생의
							회원가입을 제한합니다.</li>
					</ul>
				</dd>
			</dl>

			<div class="check_member_form">

				<div class="mb-3">
					<input type="text" class="form-label-input" name="id" id="id"
						placeholder="아이디를 입력해주세요">
					<div id="idResult" class="error_check"></div>
				</div>

				<div class="mb-3">
					<input type="password" class="form-label-input" name="pw" id="pw"
						placeholder="비밀번호를 입력해주세요">
				</div>

				<div class="mb-3">
					<input type="password" class="form-label-input"
						name="passwordcheck" id="passwordcheck"
						placeholder="비밀번호를 한번 더 입력해주세요">
					<div id="pwResult" class="error_check"></div>
				</div>

				<div class="mb-3">
					<input type="text" class="form-label-input" name="name" id="name"
						placeholder="이름을 입력해주세요">
					<div id="nameResult" class="error_check"></div>
				</div>

				<div class="mb-3">
					<input type="tel" class="form-label-input" name="phone" id="phone"
						placeholder="전화번호를 입력해주세요">
					<div id="phoneResult" class="error_check"></div>
				</div>

				<div class="mb-3">
					<input type="email" class="form-label-input" name="email"
						id="email" placeholder="이메일을 입력해주세요">
					<div id="emailResult" class="error_check"></div>
				</div>

				<div class="mb-3">
					<input type="number" class="form-label-input"
						placeholder="생년월일을 입력해주세요 ex)19970515" name="birth" id="birth">
					<div id="birthResult" class="error_check"></div>
				</div>

				<div class="mb-3 my-4">
					<label class="form-label"></label>
					<button id="btn" type="button" class="btn btn_em">회원가입</button>
				</div>

			</div>


		</form>
		
	</div>
	
	<div class="allianceBrand_box">
			<div class="in_sec">
				<ul class="alliance_list">
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7010&amp;brnd_cd=1000&amp;mcht_no=1000"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20190809_1724081.png"
							alt="CGV"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7190&amp;brnd_cd=1900&amp;mcht_no=1900"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20191211_16ef2602d5451.png"
							alt="TVING"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7150&amp;brnd_cd=1501&amp;mcht_no=1501"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20180914_1352121.png"
							alt="CJ문화재단"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7040&amp;brnd_cd=4160&amp;mcht_no=4160"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20180910_1411221.png"
							alt="CATCHON"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7190&amp;brnd_cd=1910&amp;mcht_no=1910"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20191105_1610451.png"
							alt="티빙몰"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7230&amp;brnd_cd=2301&amp;mcht_no=2301"><img
							class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210827_17b86a5fb1071.png"
							alt="CJ더마켓(오프라인)"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7030&amp;brnd_cd=3000&amp;mcht_no=3000"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20191007_1836371.png"
							alt="올리브영"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7050&amp;brnd_cd=5000&amp;mcht_no=30"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210510_17953c8f11841.png"
							alt="CJ온스타일"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7060&amp;brnd_cd=6130&amp;mcht_no=6130"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20190628_1544231.png"
							alt="쿡킷"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7060&amp;brnd_cd=6010&amp;mcht_no=6010"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20190703_0846461.png"
							alt="CJ더마켓"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7060&amp;brnd_cd=6050&amp;mcht_no=6050"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20180803_1422401.png"
							alt="CJ제일제당(이마트)"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7050&amp;brnd_cd=5010&amp;mcht_no=5010"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20190820_1553051.png"
							alt="스타일온에어"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7040&amp;brnd_cd=4170&amp;mcht_no=4170"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20171116_1540221.png"
							alt="MYCT"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2190&amp;mcht_no=2190"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210608_179ea51de4881.png"
							alt="N서울타워"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2200&amp;mcht_no=2200"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210608_179ea59d4f111.png"
							alt="더플레이스 다이닝"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2220&amp;mcht_no=2220"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210608_179ea5ff31341.png"
							alt="엔테라스"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2210&amp;mcht_no=2210"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210608_179ea654d5361.png"
							alt="엔버거"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2040&amp;mcht_no=2040"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160811_0152481.png"
							alt="빕스"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2010&amp;mcht_no=2010"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160901_1057571.png"
							alt="뚜레쥬르"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2170&amp;mcht_no=2170"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160811_0202191.png"
							alt="계절밥상"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2120&amp;mcht_no=2120"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160811_0224521.png"
							alt="제일제면소"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2090&amp;mcht_no=2090"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20190718_1653551.png"
							alt="더플레이스"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2150&amp;mcht_no=2150"><img
							class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20210929_17c2f1854d751.png"
							alt="더스테이크하우스"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2140&amp;mcht_no=2140"><img
							class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160811_0241291.png"
							alt="CJ푸드월드"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2180&amp;mcht_no=2180"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20160811_0303271.png"
							alt="주스 솔루션"></a></li>
					<li><a
						href="/cjmweb/point-card/brand/detail.do?coopco_cd=7130&amp;brnd_cd=1301&amp;mcht_no=1301"
						class=""><img class="joinImage"
							src="https://www.cjone.com/cjmweb/upfile/20180803_1401051.png"
							alt="CJ대한통운"></a></li>
				</ul>

			</div>
		</div>
	<!-- <script type="text/javascript" src="../resources/js/join.js"></script> -->

	<script type="text/javascript">
		let idCheckResult = false;
		let pwCheckResult = false;
		$('#id')
				.blur(
						function() {
							let id = $('#id').val();
							console.log(id);
							$
									.ajax({
										type : "GET",
										url : "./idCheck",
										data : {
											id : id
										},
										success : function(result) {
											result = result.trim();
											if (result == '1') {
												if (id == "") {
													$("#idCheck").html(
															"아이디를 입력하세요.");
												} else {
													$('#idResult')
															.html(
																	'<font color=blue>사용 가능한 ID 입니다.</font>');
													idCheckResult = true;
												}
											} else {
												$('#idResult')
														.html(
																'<font color=red>사용 불가능한 ID 입니다.</font>');
											}
										}
									});
						});
		$('#passwordcheck').blur(
				function() {
					let pw = $('#pw').val();
					let passwordcheck = $('#passwordcheck').val();
					console.log(pw);
					console.log(passwordcheck);
					if (pw == passwordcheck) {
						if (pw != "" && passwordcheck != "") {
							$('#pwResult').html(
									'<font color=blue>비밀번호가 일치합니다.</font>');
							pwCheckResult = true;
						}
					} else {
						$('#pwResult').html(
								'<font color=red>비밀번호가 일치하지 않습니다.</font>');
					}
				});
		$('#name').blur(function() {
			if ($('#name').val() == "") {
				$('#nameResult').html("<font color=red>이름을 입력하세요</font>");
			} else {
				$('#nameResult').html("");
			}
		});
		$('#phone').blur(function() {
			if ($('#phone').val() == "") {
				$('#phoneResult').html("<font color=red>핸드폰 번호를 입력하세요</font>");
			} else {
				$('#phoneResult').html("");
			}
		});
		$('#email').blur(function() {
			let emailCheckResult = true;
			if ($('#email').val() == "") {
				$('#emailResult').html("<font color=red>이메일을 입력하세요</font>");
				emailCheckResult = false;
			} else {
				$('#emailResult').html("");
			}
		});
		$('#birth').blur(
				function() {
					if ($('#birth').val() == "") {
						$('#birthResult').html(
								"<font color=red>생년월일 번호를 입력하세요</font>");
					} else {
						$('#birthResult').html("");
					}
				});
		$("#btn").click(
				function() {
					if (idCheckResult == true && pwCheckResult == true
							&& $('#name').val() != ""
							&& $('#phone').val() != ""
							&& $('#email').val() != ""
							&& $('#birth').val() != "") {
						alert("회원가입 성공");
						$("#frm").submit()
					} else {
						alert("필수 사항을 입력하셔야합니다.");
					}
				});
	</script>
</body>
</html>