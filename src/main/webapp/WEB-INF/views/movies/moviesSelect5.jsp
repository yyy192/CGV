<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
@font-face {
	font-family: 'cj_onlyone_new_medium';
	src: url('/s5/resources/fonts/CJ+ONLYONE+Medium.ttf') format('truetype');
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

#contents {
	clear: both;
	padding-bottom: 50px;
}

.cols-content .col-detail {
	position: relative;
	width: 800px;
	float: left;
}

#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot,
	.sect-smuse, .sect-cinfo {
	position: relative;
	width: 980px;
	margin: 0 auto;
}

div {
	display: block;
}

body, input, textarea, select, button, table {
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
}

html, body, #contaniner, #footer {
	background-color: #fdfcf0;
}

.tit-heading-wrap {
	position: relative;
	height: 51px;
	margin-top: 30px;
	border-bottom: 3px solid #241d1e;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
}

.tit-heading-wrap>h3 {
	display: inline-block;
	position: relative;
	height: inherit;
	margin: 0;
	background-image: none;
	color: #222;
	font-weight: 500;
	font-size: 36px;
	text-align: left;
	vertical-align: middle;
}

h3 {
	height: 41px;
	margin: 30px 0 15px;
	background:
		url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg)
		repeat-x 0 50%;
	line-height: 41px;
	text-align: center;
	font-weight: 500;
}

[class|="wrap-movie"][class$="detail"] [class^="sect-"] {
	margin-top: 40px;
}

div[class^="sect-"] {
	clear: both;
	zoom: 1;
}

div[class^="sect-"]:after {
	content: '';
	clear: both;
	display: block;
}

.sect-base-movie {
	position: relative;
	margin-top: 30px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 14px;
}

.sect-base-movie>strong {
	font-weight: 500;
	font-size: 13px;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
}

[class|="sect-base"][class$="movie"] .box-image {
	margin-right: 30px;
	width: 185px;
	height: 260px;
}

[class|="sect-base"] .box-image {
	float: left;
}

[class|="sect-base"][class$="movie"] .thumb-image img {
	width: 185px;
	height: 260px;
}

input, select, img {
	vertical-align: middle;
}

a {
	color: inherit;
	text-decoration: none;
}

a:-webkit-any-link {
	cursor: pointer;
}

[class|="sect-base"] h3 {
	font: 0/0 a;
	zoom: 1;
	height: auto;
	margin: 0;
	background: none;
	text-align: left;
}

[class|="sect-base"] .title strong {
	color: #1a1919;
	font-size: 25px;
	vertical-align: middle;
}

strong {
	font-weight: 500;
}

.round>* {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding: 0 5px 0;
}

.round, .round>* {
	display: inline-block;
	position: relative;
}

.round.lightblue {
	border: 2px solid #3e82a4;
	color: #3e82a4;
}

.round {
	line-height: 23px;
	font-weight: 500;
	font-size: 12px;
	text-align: center;
	vertical-align: middle;
}

em {
	font-style: normal;
}

.round.lightblue>*:before {
	right: -2px;
	top: -2px;
	background-position: -25px 0px;
}

.round:before, .round:after, .round>*:before, .round>*:after {
	content: '';
	display: block;
	position: absolute;
	width: 5px;
	height: 5px;
	background: #fdfcf0
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_corner01.png')
		no-repeat;
}

.round.lightblue>*:after {
	right: -2px;
	bottom: -2px;
	background-position: -25px -5px;
}

[class|="sect-base"] .title em {
	margin-left: 12px;
}

.round.lightblue {
	border: 2px solid #3e82a4;
	color: #3e82a4;
}

.round {
	line-height: 23px;
	font-weight: 500;
	font-size: 12px;
	text-align: center;
	vertical-align: middle;
}

.round, .round>* {
	display: inline-block;
	position: relative;
}

em {
	font-style: normal;
}

.round.lightblue:before {
	left: -2px;
	top: -2px;
	background-position: -20px 0;
}

.round:before, .round:after, .round>*:before, .round>*:after {
	content: '';
	display: block;
	position: absolute;
	width: 5px;
	height: 5px;
	background: #fdfcf0
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_corner01.png')
		no-repeat;
}

.round.lightblue:after {
	left: -2px;
	bottom: -2px;
	background-position: -20px -5px;
}

.round:before, .round:after, .round>*:before, .round>*:after {
	content: '';
	display: block;
	position: absolute;
	width: 5px;
	height: 5px;
	background: #fdfcf0
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_corner01.png')
		no-repeat;
}

[class|="sect-base"] .title p {
	color: #666666;
}

.title p {
	font-size: 12px;
	font-family: Verdana, Geneva, sans-serif;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

[class|="sect-base"] .score {
	margin-top: 25px;
	padding-bottom: 10px;
	border-bottom: 1px solid #d9d6c8;
	font-size: 14px;
}

[class|="sect-base"] .score .egg-gage, [class|="sect-base"] .score .percent
	{
	vertical-align: middle;
}

[class|="sect-base"][class$="movie"] .box-contents {
	width: 765px;
}

[class|="sect-base"] .box-contents {
	float: left;
	position: relative;
}

.score .percent span {
	color: #333333;
	font-size: 12px;
	font-weight: normal;
	font-family: Verdana, Geneva, sans-serif;
	vertical-align: -1px;
}

[class|="sect-base"] .score .egg-gage {
	margin-top: -8px;
	margin-left: 2px;
	padding-left: 6px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_writeinfo.gif') 0
		12px no-repeat;
}

[class|="sect-base"] .score .egg-gage, [class|="sect-base"] .score .percent
	{
	vertical-align: middle;
}

.egg-gage {
	display: inline-block;
	width: auto !important;
	line-height: 1;
}

.egg-gage.small .egg.great {
	width: 16px;
	background-position: -41px -47px;
}

.egg-gage.small .egg {
	display: inline-block;
	margin-right: 2px;
	width: 18px;
	height: 26px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_egg.png') 0
		-47px no-repeat;
	vertical-align: middle;
}

[class|="sect-base"] .score .egg-gage, [class|="sect-base"] .score .percent
	{
	vertical-align: middle;
}

.egg-gage.small .percent {
	display: inline-block;
	margin-top: 8px;
	font-family: 'verdana';
	font-size: 12px;
	color: #000000;
	vertical-align: middle;
}

.egg-gage {
	display: inline-block;
	width: auto !important;
	line-height: 1;
}

.ico-grade.grade-15 {
	background-position: -72px 0;
}

.ico-grade {
	display: block;
	position: absolute;
	left: 5px;
	top: 5px;
	width: 21px;
	height: 21px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png')
		no-repeat;
	font: 0/0 a;
	zoom: 1;
}

[class|="sect-base"][class$="movie"] .spec {
	padding-top: 18px;
	line-height: 1.6;
}

.spec {
	color: #333333;
	font-size: 13px;
	font-weight: 500;
}

dl:after, ul:after, ol:after {
	content: '';
	clear: both;
	display: block;
}

.spec dt {
	float: left;
}

[class|="sect-base"][class*="movie"] .spec dd {
	float: left;
}

[class|="sect-base"][class*="movie"] .spec dd {
	white-space: normal;
	text-overflow: clip;
	overflow: visible;
}

[class|="sect-base"][class$="movie"] .spec .on {
	float: none;
}

dd {
	display: block;
	margin-inline-start: 40px;
}

.spec>a {
	color: inherit;
	text-decoration: none;
}

[class|="sect-base"] .like {
	margin-top: 22px;
}

.link-count {
	width: 104px;
	height: 33px;
	border: 1px solid #222222;
	line-height: 33px;
	text-align: center;
	display: inline-block;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	margin-right: 2px;
	color: #222222;
	font-size: 14px;
	font-weight: 400;
	background-color: #fdfcf0;
}

.link-reservation {
	display: inline-block;
	width: 91px;
	height: 35px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png') 0 0
		no-repeat;
	font: 0/0 a;
	zoom: 1;
	vertical-align: top;
}

.ico-posterdetail {
	display: block;
	position: absolute;
	left: 4px;
	bottom: 5px;
	width: 24px;
	height: 24px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') 0 0
		no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.thumb-image {
	display: block;
	position: relative;
}

.wrap-movie-detail .cols-content {
	margin-top: 30px;
}

.cols-content:after {
	content: '';
	clear: both;
	display: block;
}

.tab-menu {
	clear: both;
	text-align: center;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

.tab-menu li {
	display: inline-block;
	margin-left: -4px;
}

.tab-menu li a {
	display: inline-block;
	position: relative;
	height: 39px;
	padding: 0 15px;
	background: #e71a0f
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_tebmenu-line.gif')
		0 12px no-repeat;
	color: #ffffff;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	line-height: 39px;
}

.tab-menu li:first-child a {
	background: #e71a0f;
}

.tab-menu li:first-child {
	padding-left: 20px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_corner.png') 0
		-20px no-repeat;
}

.tab-menu .last {
	padding-right: 19px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/ribon_right.png')
		right 0 no-repeat;
}

.tab-menu li.on a:before {
	content: '';
	display: inline-block;
	width: 26px;
	height: 39px;
	padding-right: 5px;
	background: #e71a0f
		url('https://img.cgv.co.kr/R2014/images/common/ico/ico_finger.png') 0
		50% no-repeat;
	vertical-align: top;
}

[class|="sect-story"][class*="movie"] {
	margin-top: 35px;
	color: #333333;
	line-height: 1.8;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
	font-weight: lighter;
}

.graph {
	overflow: hidden;
	border-bottom: 1px solid #cccccc;
}

.sect-graph.sect-graph-emotion li {
	width: 50% !important;
}

.graph li:first-child {
	border-left: none;
}

.graph li {
	overflow: hidden;
	height: 250px;
}

.sect-graph li {
	width: 33.3%;
}

.graph li {
	float: left;
	padding-bottom: 10px;
	border-top: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
	margin-right: -1px;
}

.graph li strong {
	display: block;
	height: 58px;
	border-bottom: 1px solid #cccccc;
	color: #4a4a4a;
	text-align: center;
	line-height: 58px;
	font-size: 13px;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
}

strong {
	font-weight: 500;
}

.graph li>.chart {
	min-height: 192px;
}

.jqplot-title {
	top: 0;
	left: 0;
	padding-bottom: .5em;
	font-size: 1.2em;
}

.jqplot-target {
	position: relative;
	color: #666;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 1em;
}

.movie-detail-ad {
	clear: both;
	padding: 30px 0 0;
}

canvas[Attributes Style] {
	aspect-ratio: auto 400/192;
}

[class|="wrap-movie"][class$="detail"] .heading {
	margin-bottom: 20px;
}

.heading {
	position: relative;
	width: 100%;
	height: 39px;
	background: #e2e0d2;
}

.heading h4 {
	float: left;
	margin-left: 16px;
	line-height: 39px;
	color: #333333;
	font-size: 13px;
	font-weight: 500;
	letter-spacing: -1px;
}

.heading .count {
	display: inline-block;
	margin-left: 4px;
	font-weight: 300;
	line-height: 40px;
	font-size: 13px;
}

.heading .count+.link-more {
	margin-top: 0;
}

.heading .link-more {
	margin-top: 9px;
	margin-left: 9px;
}

.link-more {
	display: inline-block;
	width: 20px;
	height: 19px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png') -50px
		-62px no-repeat;
	vertical-align: middle;
	font: 0/0 a;
	zoom: 1;
}

.wrap-movie-detail .sect-trailer>ul {
	margin-left: -10px;
}

.wrap-movie-detail .sect-trailer li {
	width: 260px;
	margin: 0 0 15px 10px;
}

.sect-trailer>ul>li {
	float: left;
}

.wrap-movie-detail .sect-trailer li .box-image {
	width: 260px;
	height: 142px;
}

.box-image a {
	display: block;
}

.wrap-movie-detail .sect-trailer li .thumb-image {
	width: 260px;
	height: 142px;
}

.thumb-image {
	display: block;
	position: relative;
}

.wrap-movie-detail .sect-trailer li .thumb-image img {
	width: 260px;
	height: 142px;
}

.ico-play {
	position: absolute;
	right: 5px;
	bottom: 6px;
	width: 44px;
	height: 44px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') -60px
		-21px no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.box-contents>a {
	display: block;
}

.wrap-movie-detail .sect-trailer .txt-info {
	margin-top: 3px;
	color: #666666;
	font-family: Verdana, Geneva, sans-serif;
}

.txt-info {
	display: block;
	color: #999999;
	font-size: 12px;
}

.wrap-movie-detail .sect-trailer .title {
	margin-top: 10px;
	font-size: 13px;
	line-height: 16px;
}

.sect-trailer .title {
	font-size: 13px;
	vertical-align: middle;
}

.title {
	display: block;
	color: #333333;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.slider .item-wrap {
	display: inline-block;
	float: left;
}

.slider {
	overflow: hidden;
	position: relative;
	z-index: 1;
	width: 100%;
	height: 100%;
}

.slider .item-wrap.on>.item {
	z-index: 10;
}

.slider .item-wrap>.item {
	position: absolute;
	z-index: 5;
	text-align: center;
}

.sect-stillcut .slider-wrap {
	width: 800px;
	height: 450px;
}

.slider button[type='button'] {
	z-index: 20;
}

.slider>button[type='button'] {
	position: absolute;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png);
	background-repeat: no-repeat;
	font: 0/0 a;
	zoom: 1;
}

.slider>.btn-prev {
	left: 19px;
	background-position: 0 -97px;
}

.slider>.btn-next {
	right: 19px;
	background-position: -30px -97px;
}

.slider>.btn-prev, .slider>.btn-next, .slider>.btn-prev.dim, .slider>.btn-next.dim
	{
	overflow: hidden;
	top: 50%;
	width: 26px;
	height: 52px;
	text-indent: 100%;
	white-space: nowrap;
	margin-top: -26px;
}

button, input[type='submit'], input[type='reset'] {
	padding: 0;
	border: 0 none;
	background-color: transparent;
	vertical-align: middle;
}

.movie_grade {
	position: relative;
	border-top: 2px solid #666666;
}

.movie_grade .info {
	position: absolute;
	top: 11px;
	right: 0;
}

.movie_grade .egg_point {
	height: 134px;
}

.movie_grade .egg_point .title {
	font-size: 24px;
	line-height: 30px;
	position: absolute;
	top: 35px;
	left: 0;
}

.movie_grade .egg_point .rating {
	position: absolute;
	top: 40px;
	right: 30px;
	font-size: 13px;
}

.movie_grade .egg_point .rating .box {
	position: relative;
	width: 55px;
	height: 50px;
	float: left;
	padding-left: 60px;
}

.sprite_preegg.btn_md.default {
	background-position: -30px 0px;
}

.sprite_preegg.btn_md {
	width: 18px;
	height: 22px;
}

.movie_grade .egg_point .rating .box .sprite_preegg {
	position: absolute;
	top: 0px;
	left: 0px;
}

.sprite_preegg.big.default {
	background-position: 0px -40px;
}

.sprite_preegg.big {
	width: 54px;
	height: 54px;
	background-position: 0px -40px;
}

.sprite_preegg {
	background:
		url(https://img.cgv.co.kr/R2014/images/sprite/sprite_preegg.png)
		no-repeat 0 0;
	background-size: 300px;
	display: inline-block;
	vertical-align: middle;
}

.big {
	width: 450px;
}

.movie_grade .egg_point .rating .box .desc {
	padding-top: 14px;
	display: block;
	font-size: 14px;
	color: #c2291c;
	font-weight: 400;
}

.movie_grade .egg_point .rating .box .percent {
	display: block;
	font-size: 24px;
	font-weight: bold;
	line-height: 1.0;
	color: #000;
}

.movie_grade .egg_point .rating .box:first-child:after {
	content: '';
	border-left: 1px solid #dddddd;
	display: inline-block;
	position: absolute;
	top: 10px;
	right: -30px;
	width: 1px;
	height: 40px;
}

.movie_grade .egg_point .rating .box .tooltip {
	position: absolute;
	top: -10px;
	left: 60px;
	width: 73px;
	height: 22px;
	background-image:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_preegg.png');
	background-position: -150px 0;
	background-size: 300px;
	font-size: 10px;
	text-align: center;
	color: #ffffff;
	font-weight: bold;
	padding-top: 4px;
}

.movie_grade .egg_point .rating .box.box_golden {
	width: 85px;
}

.movie_grade .egg_point .rating .box+.box {
	margin-left: 55px;
}

.sprite_preegg.big.great {
	background-position: -120px -140px;
}

.movie_grade .chart_total {
	border: 1px solid #ddd;
	margin-bottom: 20px;
	height: 310px;
}

.movie_grade .chart_total .box:first-child {
	border: none;
}

.movie_grade .chart_total .box {
	width: 50%;
	box-sizing: border-box;
	border-left: 1px solid #dddddd;
	float: left;
	height: 100%;
	position: relative;
}

.movie_grade .chart_total .radar-graph {
	text-align: center;
}

.movie_grade .chart_total .title {
	position: relative;
	padding-top: 28px;
	padding-left: 30px;
	font-size: 20px;
	line-height: 1.5em;
	color: #222222;
	font-weight: 500;
}

.cols-content .col-aside {
	width: 160px;
	float: right;
}

.cols-content .col-aside .ad-partner01, .cols-content .col-aside .ad-partner02
	{
	margin-bottom: 10px;
}

.col-aside .ad-partner01 {
	margin-bottom: 35px;
}

.col-aside .ad-external01 {
	margin-bottom: 30px;
}

.searchrank h3 {
	height: auto;
	margin: 0;
	background: none;
	line-height: 1.2;
	text-align: left;
	font-family: 'cj_onlyone_new_medium', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-size: 13px;
}

.sect-moviesearch .searchrank ol {
	padding: 12px 0 30px;
	border-bottom: 1px solid #cccccc;
	font-family: Dotum;
	line-height: 1.3;
	font-size: 13px;
}

.searchrank ol>li {
	position: relative;
	padding-right: 43px;
}

.searchrank ol>li a {
	display: inline-block;
	width: 100%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.sect-moviesearch .searchrank li {
	padding-right: 0;
}

#jqplot_sex {
	background-image: url('/s5/resources/images/jqplot_sex5.PNG');
	background-size: 290px 138px;
	background-repeat: no-repeat;
	background-position: center;
}

#jqplot_age {
	background-image: url('/s5/resources/images/jqplot_age5.PNG');
	background-size: 360px 168px;
	background-repeat: no-repeat;
	background-position: center;
}

.ico-trailer.hd {
	border-color: #2a6fb6;
	color: #2a6fb6;
}

.ico-trailer {
	display: inline-block;
	height: 13px;
	margin-right: 5px;
	padding: 0 3px;
	border: 1px solid #c62424;
	font-size: 10px;
	font-family: Dotum, '돋움';
	text-align: center;
	font-weight: bold;
	line-height: 13px;
}

.btn-next {
	cursor: pointer;
}

.btn-prev {
	cursor: pointer;
}

/* ------------------------------------------------------------- */
element.style {
	margin-top: 765px;
	margin-left: -510px;
	position: absolute;
}

#lay_pop_1 {
	width: 1030px;
	height: 720px;
	display: none;
	z-index: 200;
	margin-left: -515px;
	margin-top: -360px;
	background-color: #333;
	text-align: left;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	color: #666;
}

#lay_pop_2 {
	width: 1030px;
	height: 720px;
	display: none;
	z-index: 200;
	margin-left: -515px;
	margin-top: -360px;
	background-color: #333;
	text-align: left;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	color: #666;
}

#lay_pop_3 {
	width: 1030px;
	height: 720px;
	display: none;
	z-index: 200;
	margin-left: -515px;
	margin-top: -360px;
	background-color: #333;
	text-align: left;
	line-height: 1.2;
	color: #666;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	font-weight: 300;
	color: #666;
}

#all_body {
	position: absolute;
	z-index: 9;
	display: block;
	-moz-opacity: 0.5;
	background-color: rgba(0, 0, 0, 0.8);
	left: 0;
	top: 0
}

.layer-wrap .popwrap {
	position: relative;
	padding: 5px;
	background-color: #333333;
}

.col-pop-player {
	float: left;
	width: 800px;
}

.sect-layerplayer .cols-pop-player>.title {
	margin-bottom: 20px;
	font-size: 17px;
	font-weight: 500;
	color: #cccccc;
	font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
}

.sect-layerplayer {
	position: relative;
	width: 980px;
	height: 670px;
	padding: 20px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_pop_dim.png') 0 0
		repeat;
}

.warp-pop-player {
	position: relative;
	width: 800px;
	height: 450px;
}

.descri-trailer {
	width: 800px;
	height: 157px;
}

.sect-layerplayer .col-pop-player .descri-trailer .title {
	margin: 17px 0 10px;
}

.sect-layerplayer .cols-pop-player .title {
	color: #cccccc;
}

.title {
	display: block;
	color: #333333;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

strong {
	font-weight: 500;
}

.sect-layerplayer .col-pop-player textarea {
	width: 780px;
	height: 110px;
	border-color: #4d4d4d;
	background: none;
}

textarea {
	border: 1px solid #ddd;
	line-height: 1.7;
	padding: 10px;
}

textarea {
	resize: none;
}

.sect-layerplayer .col-pop-playerinfo {
	float: right;
	width: 140px;
}

.sect-layerplayer .col-pop-playerinfo .box-image {
	float: none;
	width: 140px;
	height: 200px;
	margin-bottom: 10px;
}

.box-image a {
	display: block;
}

a {
	color: inherit;
	text-decoration: none;
}

.thumb-image {
	display: block;
	position: relative;
}

.box-image img {
	width: 100%;
}

.sect-layerplayer .col-pop-playerinfo .box-contents {
	float: none;
	width: 140px;
	height: auto;
	margin-bottom: 10px;
}

.sect-layerplayer .col-pop-playerinfo .box-contents .title {
	margin-bottom: 4px;
}

.txt-info {
	display: block;
	color: #999999;
	font-size: 12px;
}

.txt-info>em {
	display: block;
}

em {
	font-style: normal;
}

.btn-close, .layer-wrap .popwrap button[type='button'].btn-close {
	display: block;
	position: absolute;
	top: 20px;
	left: auto;
	right: 20px;
	width: 18px;
	height: 18px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_btn.png')
		no-repeat -72px -62px;
	border: none;
	font-size: 0px;
	line-height: 0;
	zoom: 1;
	cursor: pointer;
}
/* -------------------------------------------------------------------------- */
</style>

<meta charset="UTF-8">
<title>CGV</title>



</head>
<body>
	<c:import url="../temp/mainHome.jsp"></c:import>
	
	<!-- ================================================트레일러 1============================================ -->
	
	<div id="lay_pop_1" style="position: fixed;" tabindex="0">	
		<div class="popwrap">

			<div class="sect-layerplayer">

				<div class="cols-pop-player">

					<h1 class="title" id="movie_player_popup_title">
						<span class="ico-trailer hd">HD</span>[쁘띠 마망]뮤직비디오
					</h1>

					<div class="col-pop-player">

						<div class="warp-pop-player" style="position: relative;">

							<video width="800px" height="450px"
								poster="https://img.cgv.co.kr/movie/thumbnail/trailer/84617/84617195169_1024.jpg"
								controls="" autoplay="">
								<source
									src="http://h.vod.cgv.co.kr:80/vodCGVa/84617/84617_195169_1200_128_960_540.mp4"
									deletecommandtype="video/mp4">
							</video>

							<div class="sect-replay" style="display: none"
								id="pop_player_relation_wrap">

								<button class="btn-replay movie_player_inner_popup"
									type="button" data-gallery-idx="195437" id="btn_movie_replay">다시보기</button>
							</div>
							<!-- .sect-replay -->

						</div>
						<!-- .warp-pop-player -->
						<div class="descri-trailer">
							<strong class="title">영상설명</strong>
							<textarea readonly="readonly" id="movie_player_popup_caption">컨텐츠 준비 중 입니다.</textarea>
						</div>
					</div>
					<!-- .col-player -->
					<div class="col-pop-playerinfo">
						<div id="movie_player_popup_movie_info">
							<div class="box-image">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 새창"> <span class="thumb-image">
										<img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_185.jpg"
										alt="기적 새창"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span>
								</a>
							</div>
							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 상세보기 새창"> <strong class="title">기적</strong>
								</a> <span class="txt-info" style="margin-bottom: 2px;"> <em
									class="genre">드라마</em> <span> <i>2021.09.15</i> <strong>개봉</strong>
								</span>
								</span> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027655&amp;MOVIE_CD_GROUP=20027655">예매</a>
							</div>
						</div>
						<div class="sect-trailer">
							<strong class="title">신규영상</strong>
							<ul>

							</ul>
						</div>
					</div>
					<!-- .col-playerinfo -->
				</div>
				<!-- .cols-player -->
				<button type="button" class="btn-close"
               onclick="layerClose('lay_pop_1','all_body')">닫기</button>
         </div>
      </div>
   </div>

   <div id="all_body"></div>

	<!-- -----------------------------------------------------------------------------------  -->
	
	<!-- ================================================트레일러 2============================================ -->
	
	<div id="lay_pop_2" style="position: fixed;" tabindex="0">	
		<div class="popwrap">

			<div class="sect-layerplayer">

				<div class="cols-pop-player">

					<h1 class="title" id="movie_player_popup_title">
						<span class="ico-trailer hd">HD</span>[기적]<기적> 같은 리뷰 소개 영상
					</h1>

					<div class="col-pop-player">

						<div class="warp-pop-player" style="position: relative;">

							<video width="800px" height="450px"
								poster="https://img.cgv.co.kr/movie/thumbnail/trailer/84617/84617194855_1024.jpg"
								controls="" autoplay="">
								<source
									src="http://h.vod.cgv.co.kr:80/vodCGVa/84617/84617_194855_1200_128_960_540.mp4"
									deletecommandtype="video/mp4">
							</video>

							<div class="sect-replay" style="display: none"
								id="pop_player_relation_wrap">

								<button class="btn-replay movie_player_inner_popup"
									type="button" data-gallery-idx="195437" id="btn_movie_replay">다시보기</button>
							</div>
							<!-- .sect-replay -->

						</div>
						<!-- .warp-pop-player -->
						<div class="descri-trailer">
							<strong class="title">영상설명</strong>
							<textarea readonly="readonly" id="movie_player_popup_caption">컨텐츠 준비 중 입니다.</textarea>
						</div>
					</div>
					<!-- .col-player -->
					<div class="col-pop-playerinfo">
						<div id="movie_player_popup_movie_info">
							<div class="box-image">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 새창"> <span class="thumb-image">
										<img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_185.jpg"
										alt="기적 새창"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span>
								</a>
							</div>
							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 상세보기 새창"> <strong class="title">기적</strong>
								</a> <span class="txt-info" style="margin-bottom: 2px;"> <em
									class="genre">드라마</em> <span> <i>2021.09.15</i> <strong>개봉</strong>
								</span>
								</span> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027655&amp;MOVIE_CD_GROUP=20027655">예매</a>
							</div>
						</div>
						<div class="sect-trailer">
							<strong class="title">신규영상</strong>
							<ul>

							</ul>
						</div>
					</div>
					<!-- .col-playerinfo -->
				</div>
				<!-- .cols-player -->
				<button type="button" class="btn-close"
               onclick="layerClose('lay_pop_2','all_body')">닫기</button>
         </div>
      </div>
   </div>

   <div id="all_body"></div>

	<!-- -----------------------------------------------------------------------------------  -->
	
	<!-- ================================================트레일러 3============================================ -->
	
	<div id="lay_pop_3" style="position: fixed;" tabindex="0">	
		<div class="popwrap">

			<div class="sect-layerplayer">

				<div class="cols-pop-player">

					<h1 class="title" id="movie_player_popup_title">
						<span class="ico-trailer hd">HD</span>[기적]올 추석 저격 리뷰 예고편
					</h1>

					<div class="col-pop-player">

						<div class="warp-pop-player" style="position: relative;">

							<video width="800px" height="450px"
								poster="https://img.cgv.co.kr/movie/thumbnail/trailer/84617/84617194796_1024.jpg"
								controls="" autoplay="">
								<source
									src="http://h.vod.cgv.co.kr:80/vodCGVa/84617/84617_195169_1200_128_960_540.mp4"
									deletecommandtype="video/mp4">
							</video>

							<div class="sect-replay" style="display: none"
								id="pop_player_relation_wrap">

								<button class="btn-replay movie_player_inner_popup"
									type="button" data-gallery-idx="195437" id="btn_movie_replay">다시보기</button>
							</div>
							<!-- .sect-replay -->

						</div>
						<!-- .warp-pop-player -->
						<div class="descri-trailer">
							<strong class="title">영상설명</strong>
							<textarea readonly="readonly" id="movie_player_popup_caption">컨텐츠 준비 중 입니다.</textarea>
						</div>
					</div>
					<!-- .col-player -->
					<div class="col-pop-playerinfo">
						<div id="movie_player_popup_movie_info">
							<div class="box-image">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 새창"> <span class="thumb-image">
										<img
										src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_185.jpg"
										alt="기적 새창"> <span
										class="ico-grade grade-12">12세 이상</span>
								</span>
								</a>
							</div>
							<div class="box-contents">
								<a href="/movies/detail-view/?midx=84617"
									title="기적 상세보기 새창"> <strong class="title">기적</strong>
								</a> <span class="txt-info" style="margin-bottom: 2px;"> <em
									class="genre">드라마</em> <span> <i>2021.09.15</i> <strong>개봉</strong>
								</span>
								</span> <a class="link-reservation"
									href="/ticket/?MOVIE_CD=20027655&amp;MOVIE_CD_GROUP=20027655">예매</a>
							</div>
						</div>
						<div class="sect-trailer">
							<strong class="title">신규영상</strong>
							<ul>

							</ul>
						</div>
					</div>
					<!-- .col-playerinfo -->
				</div>
				<!-- .cols-player -->
				<button type="button" class="btn-close"
               onclick="layerClose('lay_pop_3','all_body')">닫기</button>
         </div>
      </div>
   </div>

   <div id="all_body"></div>

	<!-- -----------------------------------------------------------------------------------  -->
	
	<!-- LineMap -->
	<div class="linemap-wrap">
		<ul>
			<li><a href="http://localhost/s5/"><img alt="home"
					src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
		</ul>
	</div>

	<div id="contents" class="">

		<!-- Contents Start -->


		<!-- 실컨텐츠 시작 -->
		<div class="wrap-movie-detail" id="select_main">


			<div class="tit-heading-wrap">
				<h3>영화상세</h3>
			</div>
			<!-- ----------------------------------------------------------------------------------------------------------------------- -->
			<div class="sect-base-movie">
				<h3>
					<strong class="st">기적</strong>기본정보
				</h3>
				<div class="box-image">
					<a
						href="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_320.jpg"
						title="포스터 크게 보기 새창" target="_blank"> <span
						class="thumb-image"> <img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84617/84617_320.jpg"
							alt="보이스 포스터 새창" onerror="errorImage(this)"> <span
							class="ico-posterdetail">포스터 크게 보기</span> <span
							class="ico-grade grade-15"> 12세 이상</span>
					</span>
					</a>
				</div>
				<div class="box-contents">
					<div class="title">
						<strong>기적</strong> <em class="round lightblue"><span>현재상영중</span></em>


						<p>On the Line</p>
					</div>
					<div class="score">
						<strong class="percent">예매율&nbsp;<span>2.5%</span></strong>
						<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
						<div class="egg-gage small">
							<span class="egg great"></span> <span class="percent">96%</span>
						</div>
					</div>
					<!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
					<div class="spec">
						<dl>
							<dt>감독 :&nbsp;</dt>
							<dd>


								<a href="/movies/persons/?pidx=105436">이장훈</a>
							</dd>

							<dd></dd>

							<dt>&nbsp;/ 배우 :&nbsp;</dt>
							<dd class="on">


								<a href="/movies/persons/?pidx=115000">박정민</a> ,&nbsp; <a
									href="/movies/persons/?pidx=105796">이성민</a> ,&nbsp; <a
									href="/movies/persons/?pidx=115100">임윤아</a> ,&nbsp; <a
									href="/movies/persons/?pidx=106256">이수경</a>

							</dd>

							<dt>장르 :&nbsp;드라마</dt>
							<dd></dd>
							<dt>&nbsp;/ 기본 :&nbsp;</dt>
							<dd class="on">12세 이상,&nbsp;117분,&nbsp;한국</dd>
							<dt>개봉 :&nbsp;</dt>
							<dd class="on">2021.09.15</dd>




						</dl>
					</div>
					<span class="screentype"> </span>
					<p class="like">
						<!-- 2020.05.07 영화찜하기 -> 프리에그 선택 변경(조회하여 노출) -->
						<a class="link-count" href="javascript:void (0);"><i
							class="sprite_preegg btn_md default"></i>프리에그</a> <a
							class="link-reservation"
							href="/ticket/?MOVIE_CD=20027456&amp;MOVIE_CD_GROUP=20027456">예매</a>

					</p>

				</div>
			</div>
			<!-- ----------------------------------------------------------------------------------------------------------------------- -->


			<!-- .sect-base -->

			<div class="cols-content" id="menu">
				<div class="col-detail">
					<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
					<ul class="tab-menu">
						<li class="on"><a title="현재 선택됨"
							href="/movies/detail-view/?midx=84872#menu">주요정보 </a></li>
						<li><a
							href="/movies/detail-view/trailer.aspx?midx=84872#menu">트레일러</a></li>
						<li><a
							href="/movies/detail-view/still-cut.aspx?midx=84872#menu">스틸컷</a></li>
						<li><a href="/movies/detail-view/?midx=84872#commentReg">평점/리뷰</a></li>
						<li class="last"><a
							href="/movies/detail-view/show-times.aspx?midx=84872#menu">상영시간표</a></li>
					</ul>
					<div class="sect-story-movie">
						오갈 수 있는 길은 기찻길밖에 없지만<br>정작 기차역은 없는 마을.<br>오늘부로 청와대에 딱
						54번째 편지를 보낸 ‘준경’(박정민)의 목표는 단 하나! <br> 바로 마을에 기차역이 생기는 것이다.<br>
						<br> 기차역은 어림없다는 원칙주의 기관사 아버지 ‘태윤’(이성민)의 반대에도<br> 누나
						‘보경’(이수경)과 마을에 남는 걸 고집하며 왕복 5시간 통학길을 오가는 ‘준경’. <br> 그의 엉뚱함 속
						비범함을 단번에 알아본 자칭 뮤즈 ‘라희’(임윤아)와 함께<br> 설득력 있는 편지쓰기를 위한 맞춤법 수업,
						<br>유명세를 얻기 위한 장학퀴즈 테스트,<br>대통령배 수학경시대회 응시까지!<br>
						오로지 기차역을 짓기 위한 ‘준경’만의 노력은 계속되는데...! <br> <br>포기란 없다<br>기차가
						서는 그날까지!&nbsp;
					</div>



					<!-- .sect-story -->
					<!-- 2020.05.07 성별예매분포, 연령별예매분포 UI 변경 -->
					<div id="ctl00_PlaceHolderContent_Section_Chart"
						class="sect-graph sect-graph-emotion">
						<ul class="graph">
							<li><strong>성별 예매 분포</strong>
								<div id="jqplot_sex" class="chart jqplot-target"
									style="position: relative;"></div></li>
							<li><strong>연령별 예매 분포</strong>
								<div id="jqplot_age" class="chart jqplot-target"
									style="position: relative;"></div></li>
						</ul>
					</div>
					<!-- .sect-graph -->
					<div class="movie-detail-ad">
						<iframe
							src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_800"
							width="800" height="90" title="" frameborder="0" scrolling="no"
							marginwidth="0" marginheight="0" name="SponsorBar_800"
							id="SponsorBar_800"></iframe>
					</div>

					<!-- .sect-staff -->
					<div id="ctl00_PlaceHolderContent_Section_Trailer"
						class="sect-trailer">
						<div class="heading">
							<h4>트레일러</h4>
							<span id="ctl00_PlaceHolderContent_TrailerTotalCount"
								class="count">7건</span><a class="link-more"
								href="trailer.aspx?midx=84872">더보기</a>
						</div>
						<ul>
							<!-- 사진 동영상 조회 -->

							<li>
								<div class="box-image">
									<!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="195401" onclick="pushLayer_1()" > <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/84617/84617195169_1024.jpg"
											alt="[보이스]리뷰 예고편"
											onerror="errorImage(this, {'type':'landscape'})"> <span
											class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="195401"> <strong class="title">

											<span class="ico-trailer hd">HD</span> 미라클 강력 추천 영상
									</strong>
									</a> <span class="txt-info">2021.09.27</span>
								</div>
							</li>

							<li>
								<div class="box-image">
									<!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="194852" onclick="pushLayer_2()"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/84617/84617194855_1024.jpg"
											alt="[보이스]제작기 영상"
											onerror="errorImage(this, {'type':'landscape'})"> <span
											class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="194852"> <strong class="title">

											<span class="ico-trailer hd">HD</span> <기적> 같은 리뷰 소개 영상


















											
									</strong>
									</a> <span class="txt-info">2021.09.09</span>
								</div>
							</li>

							<li>
								<div class="box-image">
									<!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="194660" onclick="pushLayer_3()"> <span class="thumb-image">
											<img
											src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/84617/84617194796_1024.jpg"
											alt="[보이스]메인 예고편"
											onerror="errorImage(this, {'type':'landscape'})"> <span
											class="ico-play">영상보기</span>
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="#" title="새창" class="movie_player_popup"
										data-gallery-idx="194660"> <strong class="title">

											<span class="ico-trailer hd">HD</span> 올 추석 저격 리뷰 예고편
									</strong>
									</a> <span class="txt-info">2021.09.01</span>
								</div>
							</li>

						</ul>
					</div>

					<!-- .sect-trailer -->
					<div id="ctl00_PlaceHolderContent_Section_Still_Cut"
						class="sect-stillcut">
						<div class="heading">
							<h4>스틸컷</h4>
							<span class="count"><strong id="stillcut_current">1</strong>/17건</span><a
								class="link-more" href="still-cut.aspx?midx=84872">더보기</a>
						</div>
						<div class="slider-wrap">
							<div class="slider" id="still_motion">

								<div class="item-wrap">
									<div class="item 0" style="width: 800px; height: 450px;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195735_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195735_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 1"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195734_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195734_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 2"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195733_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195733_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 3"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195732_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195732_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 4"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195730_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195730_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 5"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195729_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195729_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 6"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195728_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195728_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 7"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195727_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195727_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 8"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195726_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195726_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 9"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195289_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617195289_727.jpg"
											style="height: 100%;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 10"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194804_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194804_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 11"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194802_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194802_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 12"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194801_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194801_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 13"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194514_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617194514_727.jpg"
											style="height: 100%;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 14"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191172_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191172_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 15"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191171_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191171_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<div class="item-wrap">
									<div class="item 16"
										style="width: 800px; height: 450px; display: none;">
										<img
											data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191168_727.jpg"
											alt="기적" onerror="errorImage(this)"
											src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84617/84617191168_727.jpg"
											style="margin-top: 22.5px;">
									</div>
								</div>

								<button type="button" class="btn-prev">이전 페이지 이동</button>
								<button type="button" class="btn-next">다음 페이지 이동</button>
							</div>
						</div>
					</div>


					<!-- .sect-stillcut -->




					<div class="sect-grade">
						<!-- preegg.css 연관 UI -->
						<div class="movie_grade">
							<a class="info" id="goldenEggAlert" href="javascript:void(0);"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png"
								alt="?"></a>
							<div class="egg_point">
								<!-- 영화요약문구 -->
								<div class="title">
									배우들의 연기가 메소드급인<br>몰입하여 보게 되는 영화
								</div>
								<div class="rating">
									<div class="box">
										<span class="sprite_preegg big default"></span> <span
											class="desc">Pre Egg</span> <span class="percent">99%</span>
										<span class="tooltip">사전기대지수</span>
									</div>
									<div class="box box_golden">
										<span class="sprite_preegg big great"></span> <span
											class="desc">Golden Egg</span> <span class="percent">96%</span>
										<span class="tooltip">실관람평지수</span>
									</div>
								</div>
							</div>

							<div class="chart_total">
								<div class="box">
									<div class="title">매력 포인트</div>
									<div class="radar-graph" id="chart2">
										<div id="charm"
											style="width: 350px; height: 250px; margin: 0px auto; overflow: hidden; text-align: left;">
											<div class="amcharts-main-div" style="position: relative;">
												<div class="amcharts-chart-div"
													style="overflow: hidden; position: relative; text-align: left; width: 350px; height: 250px; padding: 0px;">
													<svg version="1.1"
														style="position: absolute; width: 350px; height: 250px; top: 0px; left: 0.166672px;">
														<g>
														<path cs="100,100"
															d="M0.5,0.5 L349.5,0.5 L349.5,249.5 L0.5,249.5 Z"
															fill="#FFFFFF" stroke="#000000" fill-opacity="0"
															stroke-width="1" stroke-opacity="0"></path></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<path cs="100,100" d="M0.5,0.5 L0.5,-86.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="middle"
															transform="translate(0,-102)">
														<tspan y="6" x="0">감독연출</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L83.5,-26.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="start"
															transform="translate(98,-30)">
														<tspan y="6" x="0">스토리</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L51.5,71.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="start"
															transform="translate(62,79)">
														<tspan y="6" x="0">영상미</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L-50.5,71.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-62,79)">
														<tspan y="6" x="0">배우연기</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L-82.5,-26.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-98,-30)">
														<tspan y="6" x="0">OST</tspan></text></g></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<g>
														<path cs="100,100"
															d="M0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-16.5 L17.5,-4.5 L10.5,14.5 L-9.5,14.5 L-16.5,-4.5 L0.5,-16.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-33.5 L33.5,-10.5 L20.5,28.5 L-19.5,28.5 L-32.5,-10.5 L0.5,-33.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-51.5 L50.5,-15.5 L31.5,42.5 L-30.5,42.5 L-49.5,-15.5 L0.5,-51.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-68.5 L66.5,-20.5 L41.5,56.5 L-40.5,56.5 L-65.5,-20.5 L0.5,-68.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-86.5 L83.5,-26.5 L51.5,71.5 L-50.5,71.5 L-82.5,-26.5 L0.5,-86.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100" d="M0.5,-7.5 L-0.5,-7.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<path cs="100,100"
															d="M0.5,-7.5 L8.5,-2.5 L5.5,7.5 L-4.5,7.5 L-7.5,-2.5 L0.5,-7.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100" d="M0.5,1.5 L-0.5,1.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<path cs="100,100"
															d="M0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-7.5 L8.5,-2.5 L5.5,7.5 L-4.5,7.5 L-7.5,-2.5 L0.5,-7.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 Z"
															fill="#000000" stroke="#000000" fill-opacity="0.1"
															stroke-width="0.01" stroke-opacity="0.1"></path></g></g></g>
														<desc>JavaScript chart by amCharts 3.21.8</desc>
														<g></g>
														<g></g>
														<g></g>
														<g></g>
														<g>
														<g transform="translate(175,125)">
														<g></g>
														<g>
														<path cs="100,100"
															d="M0.5,-31.875 L52.09482,-16.26417 L21.07248,28.81559 L-40.13066,56.4233 L-16.97566,-5.17819 L0.5,-31.875 M0,0 L0,0"
															fill="none" stroke-width="1" stroke-opacity="1"
															stroke="#fb8c43" stroke-linejoin="round"></path>
														<path cs="100,100"
															d="M0.5,-31.875 L52.09482,-16.26417 L21.07248,28.81559 L-40.13066,56.4233 L-16.97566,-5.17819 L0.5,-31.875 L0.5,0.5 Z"
															fill="#fb8c43" stroke="#000" fill-opacity="0.1"
															stroke-width="1" stroke-opacity="0"></path></g>
														<g></g></g></g>
														<g></g>
														<g></g>
														<g></g>
														<g>
														<g transform="translate(175,125)">
														<circle r="3.5" cx="0" cy="0" fill="rgb(255,133,179)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(0,-32)" aria-label=" 감독연출 37"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(254,196,70)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(52,-17)" aria-label=" 스토리 62"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(142,189,255)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(21,28)" aria-label=" 영상미 40"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(100,169,178)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(-41,56)" aria-label=" 배우연기 79"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(178,103,183)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(-17,-6)" aria-label=" OST 21"></circle></g></g>
														<g>
														<g></g></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-4,-8)">
														<tspan y="6" x="0"></tspan></text>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-4,1)">
														<tspan y="6" x="0"></tspan></text></g></g>
														<g></g>
														<g></g>
														<g></g>
														<g></g></svg>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box">
									<div class="title">감정 포인트</div>
									<div class="radar-graph" id="chart3">
										<div id="emotion"
											style="width: 350px; height: 250px; margin: 0px auto; overflow: hidden; text-align: left;">
											<div class="amcharts-main-div" style="position: relative;">
												<div class="amcharts-chart-div"
													style="overflow: hidden; position: relative; text-align: left; width: 350px; height: 250px; padding: 0px;">
													<svg version="1.1"
														style="position: absolute; width: 350px; height: 250px; top: 0px; left: -0.333313px;">
														<g>
														<path cs="100,100"
															d="M0.5,0.5 L349.5,0.5 L349.5,249.5 L0.5,249.5 Z"
															fill="#FFFFFF" stroke="#000000" fill-opacity="0"
															stroke-width="1" stroke-opacity="0"></path></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<path cs="100,100" d="M0.5,0.5 L0.5,-86.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="middle"
															transform="translate(0,-102)">
														<tspan y="6" x="0">스트레스 해소</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L83.5,-26.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="start"
															transform="translate(98,-30)">
														<tspan y="6" x="0">즐거움</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L51.5,71.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="start"
															transform="translate(62,79)">
														<tspan y="6" x="0">공감</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L-50.5,71.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-62,79)">
														<tspan y="6" x="0">몰입감</tspan></text>
														<path cs="100,100" d="M0.5,0.5 L-82.5,-26.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-98,-30)">
														<tspan y="6" x="0">감동</tspan></text></g></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<g>
														<path cs="100,100"
															d="M0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-16.5 L17.5,-4.5 L10.5,14.5 L-9.5,14.5 L-16.5,-4.5 L0.5,-16.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-33.5 L33.5,-10.5 L20.5,28.5 L-19.5,28.5 L-32.5,-10.5 L0.5,-33.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-51.5 L50.5,-15.5 L31.5,42.5 L-30.5,42.5 L-49.5,-15.5 L0.5,-51.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-68.5 L66.5,-20.5 L41.5,56.5 L-40.5,56.5 L-65.5,-20.5 L0.5,-68.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-86.5 L83.5,-26.5 L51.5,71.5 L-50.5,71.5 L-82.5,-26.5 L0.5,-86.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100" d="M0.5,-7.5 L-0.5,-7.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<path cs="100,100"
															d="M0.5,-7.5 L8.5,-2.5 L5.5,7.5 L-4.5,7.5 L-7.5,-2.5 L0.5,-7.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100" d="M0.5,1.5 L-0.5,1.5" fill="none"
															stroke-width="1" stroke-opacity="0.15" stroke="#000000"></path>
														<path cs="100,100"
															d="M0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5"
															fill="none" stroke-width="1" stroke-opacity="0.15"
															stroke="#000000"></path></g>
														<g>
														<path cs="100,100"
															d="M0.5,-7.5 L8.5,-2.5 L5.5,7.5 L-4.5,7.5 L-7.5,-2.5 L0.5,-7.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 L0.5,0.5 Z"
															fill="#000000" stroke="#000000" fill-opacity="0.1"
															stroke-width="0.01" stroke-opacity="0.1"></path></g></g></g>
														<desc>JavaScript chart by amCharts 3.21.8</desc>
														<g></g>
														<g></g>
														<g></g>
														<g></g>
														<g>
														<g transform="translate(175,125)">
														<g></g>
														<g>
														<path cs="100,100"
															d="M0.5,-12.625 L29.62611,-8.96365 L19.01524,25.98404 L-18.52955,26.69193 L-68.57048,-21.94236 L0.5,-12.625 M0,0 L0,0"
															fill="none" stroke-width="1" stroke-opacity="1"
															stroke="#FB4357" stroke-linejoin="round"></path>
														<path cs="100,100"
															d="M0.5,-12.625 L29.62611,-8.96365 L19.01524,25.98404 L-18.52955,26.69193 L-68.57048,-21.94236 L0.5,-12.625 L0.5,0.5 Z"
															fill="#FB4357" stroke="#000" fill-opacity="0.1"
															stroke-width="1" stroke-opacity="0"></path></g>
														<g></g></g></g>
														<g></g>
														<g></g>
														<g></g>
														<g>
														<g transform="translate(175,125)">
														<circle r="3.5" cx="0" cy="0" fill="rgb(255,133,179)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(0,-13)" aria-label=" 스트레스 해소 15"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(254,196,70)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(29,-9)" aria-label=" 즐거움 35"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(142,189,255)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(19,25)" aria-label=" 공감 36"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(100,169,178)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(-19,26)" aria-label=" 몰입감 37"></circle>
														<circle r="3.5" cx="0" cy="0" fill="rgb(178,103,183)"
															stroke="rgb(255,255,255)" fill-opacity="1"
															stroke-width="1" stroke-opacity="1"
															transform="translate(-69,-22)" aria-label=" 감동 83"></circle></g></g>
														<g>
														<g></g></g>
														<g>
														<g transform="translate(175,125)" visibility="visible">
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-4,-8)">
														<tspan y="6" x="0"></tspan></text>
														<text y="6" fill="rgb(0,0,0)" font-family="CJONLYONENEW"
															font-size="12px" opacity="1" text-anchor="end"
															transform="translate(-4,1)">
														<tspan y="6" x="0"></tspan></text></g></g>
														<g></g>
														<g></g>
														<g></g>
														<g></g></svg>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Chart code -->
							<script>
								// 2020.05.07 매력포인트 차트
								var chart = AmCharts
										.makeChart(
												"charm",
												{
													"type" : "radar",
													"radius" : "35%", //넓이

													"dataProvider" : [
															{
																"key" : "감독연출",
																"value" : 36,
																"color" : "rgb(255,133,179)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "스토리",
																"value" : 55,
																"color" : "rgb(254,196,70)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "영상미",
																"value" : 18,
																"color" : "rgb(142,189,255)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "배우연기",
																"value" : 80,
																"color" : "rgb(100,169,178)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "OST",
																"value" : 9,
																"color" : "rgb(178,103,183)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															} ],
													"valueAxes" : [ {
														"axisTitleOffset" : 10,
														"minimum" : 0,
														"maximum" : 100,
														"axisAlpha" : 0.15,
														"unitPosition" : "right",
														"gridColor" : "#000000",
														"autoGridCount" : false,
														"gridCount" : 5,
														"labelsEnabled" : false,
														"tickLength" : 1
													} ],
													"guides" : [ {
														"fillAlpha" : 0.10,
														"value" : 0,
														"toValue" : 10,
														"color" : "#060"
													} ],
													"balloon" : {
														"enabled" : false
													},
													"startDuration" : 0,
													"graphs" : [ {
														"bullet" : "round",
														"bulletSize" : 7,
														"bulletBorderAlpha" : "1",
														"bulletBorderColor" : "rgb(255,255,255)",
														"bulletBorderThickness" : "1",
														"lineThickness" : 1,
														"lineColor" : "#fb8c43",
														"fillAlphas" : 0.1,
														"valueField" : "value",
														"lineColorField" : "color"
													} ],
													"categoryField" : "key",
													"export" : {
														"enabled" : false
													},
													"autoResize" : false,
													"color" : "rgb(0,0,0)",
													"fontSize" : 12,
													"fontFamily" : "CJONLYONENEW",
													"tapToActivate" : false,
													"rollOverGraphItem" : function() {
														console
																.log('rollOverGraphItem')

													}
												});

								// 2020.05.07 감정포인트 차트(7시방향 1번째, 12시 방향이 3번째 순서로 3번째항목부터 데이터 셋팅)
								var chart = AmCharts
										.makeChart(
												"emotion",
												{
													"type" : "radar",
													"radius" : "35%", //넓이

													"dataProvider" : [
															{
																"key" : "스트레스 해소",
																"value" : 22,
																"color" : "rgb(255,133,179)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "현실감",
																"value" : 58,
																"color" : "rgb(254,196,70)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "긴장감",
																"value" : 40,
																"color" : "rgb(142,189,255)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "몰입감",
																"value" : 64,
																"color" : "rgb(100,169,178)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															},
															{
																"key" : "무서움",
																"value" : 16,
																"color" : "rgb(178,103,183)",
																"rollOverColor" : "rgb(0,0,0)",
																"selectedColor" : "rgb(0,0,0)",
															} ],
													"valueAxes" : [ {
														"axisTitleOffset" : 10,
														"minimum" : 0,
														"maximum" : 100,
														"axisAlpha" : 0.15,
														"unitPosition" : "right",
														"gridColor" : "#000000",
														"autoGridCount" : false,
														"gridCount" : 5,
														"labelsEnabled" : false,
														"tickLength" : 1
													} ],
													"guides" : [ {
														"fillAlpha" : 0.10,
														"value" : 0,
														"toValue" : 10,
														"color" : "#060"
													} ],
													"balloon" : {
														"enabled" : false
													},
													"startDuration" : 0,
													"graphs" : [ {
														"bullet" : "round",
														"bulletSize" : 7,
														"bulletBorderAlpha" : "1",
														"bulletBorderColor" : "rgb(255,255,255)",
														"bulletBorderThickness" : "1",
														"lineThickness" : 1,
														"lineColor" : "#FB4357",
														"fillAlphas" : 0.1,
														"valueField" : "value",
														"lineColorField" : "color"
													} ],
													"categoryField" : "key",
													"export" : {
														"enabled" : false
													},
													"autoResize" : false,
													"color" : "rgb(0,0,0)",
													"fontSize" : 12,
													"fontFamily" : "CJONLYONENEW",
													"tapToActivate" : false,
													"rollOverGraphItem" : function() {
														console
																.log('rollOverGraphItem')
													}
												});
							</script>

						</div>
					</div>

				</div>

				<div class="col-aside">
					<div class="ad-partner01">
						<iframe
							src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"
							width="160" height="300" title="영화광고-듄" frameborder="0"
							scrolling="no" marginwidth="0" marginheight="0"
							name="M_Rectangle" id="M_Rectangle"></iframe>
					</div>
					<div class="ad-external01">
						<iframe
							src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@C_Rectangle"
							width="160" height="300" title="기업광고-CGV" frameborder="0"
							scrolling="no" marginwidth="0" marginheight="0"
							name="C_Rectangle" id="C_Rectangle"></iframe>
					</div>
					<div class="sect-moviesearch">
						<div class="searchrank">
							<h3>인기 영화 검색어</h3>
							<ol>

								<li><a href="/search/?query=%eb%b6%80%ed%99%9c">1. <strong>부활</strong></a>
								</li>

								<li><a
									href="/search/?query=%ea%b0%95%ec%b2%a0%eb%b9%842+%ec%a0%95%ec%83%81%ed%9a%8c%eb%8b%b4">2.
										<strong>강철비2 정상회담</strong>
								</a></li>

								<li><a href="/search/?query=%eb%b0%98%eb%8f%84">3. <strong>반도</strong></a>
								</li>

								<li><a
									href="/search/?query=%ec%82%b4%ec%95%84%ec%9e%88%eb%8b%a4">4.
										<strong>살아있다</strong>
								</a></li>

								<li><a href="/search/?query=%ec%bd%94%eb%82%9c">5. <strong>코난</strong></a>
								</li>

								<li><a href="/search/?query=%ec%95%8c%eb%9d%bc%eb%94%98">6.
										<strong>알라딘</strong>
								</a></li>

								<li><a href="/search/?query=%ed%8c%ac%eb%8d%b0%eb%af%b9">7.
										<strong>팬데믹</strong>
								</a></li>

								<li><a
									href="/search/?query=%ed%95%b4%eb%a6%ac%ed%8f%ac%ed%84%b0">8.
										<strong>해리포터</strong>
								</a></li>

								<li><a href="/search/?query=%eb%b1%85%eb%93%9c%eb%a6%bc">9.
										<strong>뱅드림</strong>
								</a></li>

								<li><a
									href="/search/?query=%eb%aa%85%ed%83%90%ec%a0%95%ec%bd%94%eb%82%9c">10.
										<strong>명탐정코난</strong>
								</a></li>

							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<c:import url="../temp/mainFooter.jsp"></c:import>
</body>

<script type="text/javascript">
	let flag = 0;

	$('.btn-next').click(function() {

		if (flag <= 15) {

			$('.' + flag).css("display", "none");
			flag++;
			$('.' + flag).show();

			document.getElementById("stillcut_current").innerText = flag + 1;

		} else if (flag > 15) {
			$('.' + flag).css("display", "none");
			flag = 0;
			$('.' + flag).show();

			document.getElementById("stillcut_current").innerText = flag + 1;
		}

		console.log(flag);
	});

	$('.btn-prev').click(function() {

		if (flag > 0) {
			$('.' + flag).css("display", "none");
			flag--;
			$('.' + flag).show();
			document.getElementById("stillcut_current").innerText = flag + 1;

		} else if (flag <= 0) {
			$('.' + flag).css("display", "none");
			flag = 16;
			$('.' + flag).show();
			document.getElementById("stillcut_current").innerText = flag + 1;

		}

		console.log(flag);
	});
	
	function pushLayer_1() {
		var $width = parseInt($("#lay_pop_1").css("width"));
		var $height = parseInt($("#lay_pop_1").css("height"));
		var sctop = $(window).scrollTop() * 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop_1").css("left", "50%");
		$("#lay_pop_1").css("top", "50%");
		$("#lay_pop_1").css("display", "block");
		$("#lay_pop_1").css("z-index", "555");
		$("#all_body").css("display", "block");
		$("#all_body").css("width", $(window).width());
		$("#all_body").css("height", height);

	} 
	
	function pushLayer_2() {
		var $width = parseInt($("#lay_pop_2").css("width"));
		var $height = parseInt($("#lay_pop_2").css("height"));
		var sctop = $(window).scrollTop() * 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop_2").css("left", "50%");
		$("#lay_pop_2").css("top", "50%");
		$("#lay_pop_2").css("display", "block");
		$("#lay_pop_2").css("z-index", "555");
		$("#all_body").css("display", "block");
		$("#all_body").css("width", $(window).width());
		$("#all_body").css("height", height);

	} 
	
	function pushLayer_3() {
		var $width = parseInt($("#lay_pop_3").css("width"));
		var $height = parseInt($("#lay_pop_3").css("height"));
		var sctop = $(window).scrollTop() * 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop_3").css("left", "50%");
		$("#lay_pop_3").css("top", "50%");
		$("#lay_pop_3").css("display", "block");
		$("#lay_pop_3").css("z-index", "555");
		$("#all_body").css("display", "block");
		$("#all_body").css("width", $(window).width());
		$("#all_body").css("height", height);

	}
		
	
	function layerClose(lay1, lay2) {
		$("#" + lay1).css("display", "none");
		$("#" + lay2).css("display", "none");
	}
</script>
</html>

