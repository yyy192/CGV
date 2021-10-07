<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">


body, input, textarea, select, button, table {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	background-color: #FDFCF0;
}

ol, ul {
	list-style: none;
}

.linemap-wrap {
	width: 1062px;
	height: 28px;
	margin: 0 auto;
	background-color: #f1f0e5;
	border-bottom: 1px solid #cacac0;
	display: block;
	padding-left: 200px;
}

.wrap-login {
	width: 1062px;
	height: 436px;
	position: relative;
	padding: 30px 30px 0;
	margin: 0 auto;
}

div[class^="sect-"] {
	clear: both;
	zoom: 1;
}

.sect-login {
	width: 541px;
	height: 334px;
	margin: 0 auto;
}

.linemap-wrap .sect-linemap>.sect-bcrumb ul>li:first-child>a>img {
	margin-top: 5px;
}

input, select, img {
	vertical-align: middle;
}

img {
	margin: 0 auto;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	padding-inline-start: 40px;
}

.tab-menu-round {
	clear: both;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_tabmenu_grade.gif')
		0 bottom repeat-x;
	width: 541px;
	height: 37px;
}

.tab-menu-round>li {
	float: left;
	position: relative;
	margin-top: 0px;
	line-height: 37px;
	margin-left: 1px;
	background: #E71A0F;
	color: #fdfcf0;
	text-align: center;
	width: 100px;
	height: 36px;
	border-radius: 4px;
}

.tab-menu-round>li>a2 {
	display: block;
	color: #ffffff;
	font-size: 13px;
	font-weight: 500;
}

.box-login {
	padding: 30px 0 0 132px;
	border-bottom: 2px solid #898987;
	height: 240px;
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	background-color: #FDFCF0;
}

p2 {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	width: 380px;
	height: 15.33px;
	display: block;
	margin-top: 20px;
	margin-bottom: 0px;
	margin-left: auto;
	margin-right: auto;
}

fieldset {
	display: block;
	margin-inline-start: 2px;
	margin-inline-end: 2px;
	padding-block-start: 0.35em;
	padding-inline-start: 0.75em;
	padding-inline-end: 0.75em;
	padding-block-end: 0.625em;
	min-inline-size: min-content;
	border-width: 2px;
	border-style: groove;
	border-color: threedface;
	border-image: initial;
}

.sect-login>.box-login fieldset {
	position: relative;
}

.box-login .login {
	position: relative;
	margin-top: 15px;
}

.box-login button[type="submit"] {
	width: 264px;
	height: 42px;
	line-height: 37px;
	left: 0;
	position: static;
	margin-top: 5px;
	padding: 2px;
	background: #e71a0f;
	text-align: center;
	border: 1px solid #f07469;
}

.box-login button[type="submit"]>span {
	display: block;
	width: 255px;
	height: 33px;
	border: 1px solid #f07469;
	color: #f2f0e5;
	font-size: 15px;
	font-weight: 500;
}

.box-login .login input[type="text"] {
	margin-bottom: 5px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') 12px
		-230px no-repeat;
}

.box-login .login input[type="password"] {
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') 12px
		-261px no-repeat;
}

input[type='text'], input[type='password'] {
	display: inline-block;
	height: 25px;
	line-height: 22px;
	padding-left: 10px;
	border: 2px solid #b5b5b5;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	text-align: start;
	appearance: auto;
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	padding: 1px 2px;
}

.box-login .login input[type="text"], .box-login .login input[type="password"]
	{
	display: block;
	width: 215px;
	height: 35px;
	padding: 0 5px 0 40px;
	border: 2px solid #b5b5b5;
	line-height: 33px;
}

.sect-login>.box-login fieldset .save-id {
	position: absolute;
	top: 148px;
	left: -1px;
}

.box-login fieldset>.login-option {
	position: absolute;
	top: 149px;
	right: 145px;
	padding-left: 0 !important;
}

.box-login fieldset>.login-option a2 {
	display: inline-block;
	margin-left: 5px;
	padding-right: 8px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_arrow03.png')
		right 1px no-repeat;
	font-size: 12px;
	text-decoration: underline;
}

a2 {
	color: inherit;
	text-decoration: none;
}

.box-useguide {
	margin-top: 50px;
	height: 60px;
	padding: 0 20px;
	border: 1px solid #d5d4ca;
}

.box-useguide>strong:first-child {
	padding-left: 0;
	font-size: 13px;
	line-height: 62px;
	color: #222222;
}

.box-useguide strong {
	display: inline-block;
	padding: 0 5px 0 18px;
}

strong {
	font-weight: 600;
	font-size: 13px;
}

.round, .round>* {
	display: inline-block;
	position: relative;
}

.round.red {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding: 0 5px 0;
	border-radius: 4px;
	border: 2px solid #e71a0f;
	color: #e71a0f;
	line-height: 23px;
	font-weight: 500;
	font-size: 13px;
	text-align: center;
	vertical-align: middle;
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

	<div class="wrap-login">
		<div class="sect-login">
			<ul class="tab-menu-round">
				<li class="on"><a2 href="/user/login/">로그인</a2></li>
			</ul>
			<p2>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p2>
			<div class="box-login">
				<form id="frm" method="post" action="./memberLogin"
					novalidate="novalidate">
					<fieldset>

						<div class="login">
							<input type="text" title="아이디" id="txtUserId" name="txtUserId"
								data-title="아이디를 " data-message="입력하세요." required="required">
							<input type="password" title="패스워드" id="txtPassword"
								name="txtPassword" data-title="패스워드를 " data-message="입력하세요."
								required="required">
						</div>

						<button type="submit" id="submit" title="로그인">
							<span>로그인</span>
						</button>
						<div class="save-id">
							<input type="checkbox" id="loginSet" checked="checked"><label
								for="save_id">아이디 저장</label>
						</div>
						<div class="login-option">
							<a2 href="/user/login/find-account.aspx">아이디 찾기</a2>
							<a2 href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a2>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div class="box-useguide">
			<strong>CGV 회원이 아니신가요?</strong> <span>회원가입하시고 다양한 혜택을 누리세요!</span> <strong>
				<a2 title="새창" target="_blank"
					href="http://localhost/s5/member/memberJoin" class="round red">
				<span>CGV 회원가입하기</span></a2>
			</strong> <em> </em>

		</div>
	</div>


</body>
</html>