<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

#cgvwrap #header {
	background: #fdfcf0
		url(https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif)
		repeat-x 0 0;
}

#cgvwrap #header>.head {
	position: relative;
	z-index: 100;
}

#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot,
	.sect-smuse, .sect-cinfo {
	position: relative;
	width: 980px;
	margin: 0 auto;
}

#cgvwrap #header>.head h1 {
	top: 40px;
	left: 0;
	width: 223px;
	height: 85px;
	padding: 18px 0 0 22px;
	z-index: 110;
}

.head h1, .sect-srh, .sect-booking, .sect-phototicket {
	position: absolute;
	/* z-index: 1; */
}

#cgvwrap #header>.head h1>a {
	display: block;
}

div[class^="sect-"] {
	clear: both;
	zoom: 1;
}

.sect-service {
	overflow: visible;
}

.sect-service {
	overflow: hidden;
	position: relative;
	height: 30px;
}

.sect-service h2, .im-wrap .lnb>ul>li>a, .sect-srh h2, .sect-booking h2,
	.sect-booking>a, .sect-phototicket h2, .sect-phototicket>a,
	.sect-person h2 {
	font: 0px/0 a;
}

.sect-service>.util {
	float: left;
}

ol, ul {
	list-style: none;
}

.sect-service>.util li:first-child {
	border-left: 1px solid #ddd;
}

.sect-service>.util li {
	border-right: 1px solid #ddd;
}

.sect-service>.util>li, .sect-service>.gnb>li, .im-wrap .lnb li {
	display: inline-block;
	float: left;
}

.sect-service .util li>a, .sect-service .gnb li>a, .lnb>ul>li>a,
	.sect-service a.showtimes, .sect-booking>a, .sect-phototicket>a,
	.sect-person li>a, .line-v, .line-dot, .sect-smuse li>a, .sect-cinfo .share a,
	.sect-cinfo .logo {
	overflow: hidden;
	background-image:
		url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png);
	background-repeat: no-repeat;
	text-indent: 100%;
	white-space: nowrap;
}

.sect-service>.util li>a.app {
	width: 74px;
	height: 30px;
	background-position: 10px -714px;
}

.sect-service>.util li>a {
	padding: 0 10px;
	line-height: 30px;
}

.sect-service>.util li>a.like {
	width: 44px;
	height: 30px;
	background-position: -85px -714px;
}

.sect-service>.util li>a {
	padding: 0 10px;
	line-height: 30px;
}

.sect-service>.util li>a.insta {
	width: 60px;
	height: 30px;
	background-position: -263px -714px;
}

.sect-service>.util li>a {
	padding: 0 10px;
	line-height: 30px;
}

.sect-service>.util li>a.frugal {
	width: 85px;
	height: 30px;
	background-position: -151px -714px;
}

.sect-service>.util li>a {
	padding: 0 10px;
	line-height: 30px;
}

.sect-service>.gnb {
	float: right;
	margin: 0;
	text-align: left;
}
</style>
</head>
<body>

	<div id="header">
		<div class="head">

			<!-- 서비스 메뉴 -->


			<!-- 앱다운로드 레이어 팝업 -->
			<script type="text/javascript">
    $(function () {
        $('.btn_send').on('click', function () {

            var smsyn = $('input:radio[name="myapp"]:checked').val();
            var phoneNum_1 = $('#phoneNum1').val();
            var phoneNum_2 = $('#phoneNum2').val();
            var phoneNum_3 = $('#phoneNum3').val();


            var $btn = $('.util .app');
            var $btnli = $btn.parent();
            var $layer = $btnli.find('.app-downinfo');
            var $closebtn = $layer.find('.btn_close');

            if ($("input:radio[name='myapp']:checked").val() == undefined) {

                alert('앱을 선택해주세요.');
                return;
            }

            if ($('#phoneNum1').val() == '') {

                alert('첫번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum1').focus();
            }

            if ($('#phoneNum2').val() == '') {
                alert('두번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum2').focus();
            }

            if ($('#phoneNum3').val() == '') {
                alert('세번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum3').focus();
            }

            $.ajax({
                type: "POST",
                url: '/common/ajax/user.aspx/GetSMSMaster',
                data: "{'sms_yn':'" + smsyn + "' , 'phoneNum1':'" + app.crypto.AESEncryptToBase64(phoneNum_1) + "',  'phoneNum2':'" + app.crypto.AESEncryptToBase64(phoneNum_2) + "', 'phoneNum3':'" + app.crypto.AESEncryptToBase64(phoneNum_3) + "'  }",
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                success: function (result) {
                    switch (result.d.toString()) {
                        case "0":
                            // 등록되지 않음
                            alert('전송에 실패하였습니다. 잠시후 다시 시도해주시길 바랍니다.');
                            break;
                        case "1":

                            //alert('성공');
                            alert('고객님의 핸드폰 번호 ' + phoneNum_1 + '-' + phoneNum_2 + '-' + phoneNum_3 + '로 전송완료 하였습니다.');
                            $('#phoneNum1').val('')
                            $('#phoneNum2').val('')
                            $('#phoneNum3').val('')
                            $layer.removeClass('on');
                            $(this).blur();

                            // 등록완료
                            break;
                        case "2":
                            // 등록되지 않음
                            alert('1일 3회까지만 발송 가능합니다.');
                            break;
                        default:
                            //   alert('Error result Value : ' + result);
                            break;
                    }
                }
            });
        });  // SMS
    });
    

    function numberOnly() {
        if (event.keyCode != 8 && event.keyCode != 9) {
            if ((event.keyCode < 48) || (event.keyCode > 57)
				&& (event.keyCode < 96 || event.keyCode > 105)) {
                event.returnValue = false;
            }
        }
    }

    $("#phoneNum1").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    $("#phoneNum2").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    $("#phoneNum3").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    function appDownInfoPop() {

        var $btn = $('.util .app');
        var $btnli = $btn.parent();
        var $layer = $btnli.find('.app-downinfo');
        var $closebtn = $layer.find('.btn_close');

        var isCheck = function () {
            if (!$layer.hasClass('hover') && !$btnli.find('*').is(':focus')) {
                $layer.removeClass('on');
            }
        }

        $btn.on('focusin', inHandler);
        $btnli.on('mouseenter focusin', mouseenterHandler).on('mouseleave focusout', mouseleaveHandler);
        $layer.on('mouseenter', function () {
            $layer.addClass('hover');
        }).on('mouseleave', function () {
            $layer.removeClass('hover');
        })

        function inHandler(e) {
            $layer.addClass('on');

            return false;
        }
        function mouseenterHandler(e) {
            $layer.addClass('on');

            /******************************************
            GA Tag 상단 appdownload 마우스 오버시 전송
            *******************************************/
            ga('send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });
            ga('cgvTracker.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });
            ga('rollup.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });

            return false;
        }
        function mouseleaveHandler(e) {
            setTimeout(isCheck, 100);
            return false;
        }

        $closebtn.on('click', function () {
            $layer.removeClass('on');
            $(this).blur();
            return false;
        })
    }
</script>



			<h1>
				<a href="/"><img
					src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV"></a>
			</h1>

			<div class="sect-service">
				<h2>서비스 메뉴</h2>
				<ul class="util">
					<li>
						<!-- 2019.09 수정 --> <a href="#" class="app"
						style="cursor: pointer" title="CGV앱 4.0 설치 새창"><span>CGV앱
								4.0 설치</span></a> <!-- 앱 다운로드 레이어 팝업 2019.09 SMS 전송,하단 영역 제거 -->
						<div class="app-downinfo v2">
							<div class="inner">
								<div class="tit-box">
									<strong><em>CGV</em>앱에서<br>더 편리하게 이용하세요.</strong>
								</div>
								<div class="choice-way">
									<div class="qr">
										<div class="qr-codeimg">
											<img
												src="https://img.cgv.co.kr/R2014//images/common/img_qrcode.gif"
												alt="QR CODE">
										</div>
										<div class="qr-desc">
											<p>
												QR코드를 스캔하고<br>앱 설치 페이지로 바로 이동하세요
											</p>
										</div>
									</div>
								</div>
								<a class="btn_close" href="#">팝업 닫기</a>
							</div>
						</div> <!-- 2019.09 수정 -->
					</li>
					<li><a href="https://www.facebook.com/CJCGV" class="like"
						target="_blank" title="Facebook 좋아요! 새창"><span>Facebook
								좋아요!</span></a></li>
					<li><a href="https://www.instagram.com/cgv_korea/"
						class="insta" target="_blank" title="Instagram Follow"><span>Instagram
								Follow</span></a></li>
					<li><a href="/discount/" class="frugal"><span>알뜰한
								영화관람법!</span></a></li>
					<!-- 할인카드 -->
				</ul>
				<ul class="gnb">

					<li><a
						href="/user/login/?returnURL=https%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx"
						class="login"><span>로그인</span></a></li>
					<li><a href="/user/join/" class="join"><span>회원가입</span></a></li>



					<li><a href="/user/mycgv/" class="mycgv required-login"
						data-url="/user/mycgv/"><span>MY CGV</span></a></li>
					<li><a href="/user/vip-lounge/" class="vip"><span>VIP
								LOUNGE</span></a></li>
					<li><a
						href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx"
						title="새창" class="club specialclub"><span>CLUB 서비스</span></a></li>
					<!-- 2014.12.8 리뉴얼-->
					<li><a href="/support/default.aspx" class="customer"><span>고객센터</span></a></li>
					<!-- 2014.12.8 리뉴얼-->
					<li><a href="/ticket/eng/newdefault.aspx" class="showtimes"><span>ENGLISH
								TICKETING</span></a></li>
				</ul>
			</div>
			<!-- 서비스 메뉴 -->

			<div class="im-wrap">
				<!-- Important wrap -->
				<h2>
					<img
						src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png"
						alt="CULTUREPLEX">
				</h2>

				<!-- 서브 메뉴 -->


				<script type="text/javascript">
    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)


    //특별관 클럽 팝업
    function openSpecialClub() {
        
        var win = window.open('http://www.cgv.co.kr/event/develop/1503_CLUB_Info.aspx', 'winSpecialClub', 'left=0,top=0,width=580,height=700,toolbar=no,scrollbars=yes');
        win.focus();
    }

    //동성로타운
//    function openDownTown() {
//        var win = window.open('http://section.cgv.co.kr/event/dongsungroTown/serviceInfo.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
//        win.focus();
//    }

    //노원타운
    function openNowonTown() {
        var win = window.open('http://section.cgv.co.kr/event/NowonTown/serviceInfo.aspx', 'winNowonTown', 'left=0,top=0,width=700,height=800,toolbar=no,scrollbars=yes');
        win.focus();
    }


    //상단광고닫기
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //비즈스프링 클릭로그
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }
   
    //]]>
</script>

				<!-- 통합검색 -->
				<script type="text/javascript">
    (function ($) {
        $(function () {

            //검색 입력창 클릭 시 광고값 reset
            $('#header_keyword').on('click', function () {
                $(this).attr('placeholder', '');
                $('#header_ad_keyword').val('');
            });

            //통합검색 상단 검색 버튼
            $('#btn_header_search').on('click', function () {
                if ($('#header_ad_keyword').val() != "")
                    goSearch($('#header_ad_keyword'));      //광고
                else
                    goSearch($('#header_keyword'));

                return false;
            });

            //통합검색 검색어 입력창
            $('#header_keyword').keyup(function (e) {
                if (e.keyCode == 13) goSearch($('#header_keyword'));
            });

            //통합검색
            function goSearch($objKeyword) {

                if ($objKeyword.val() == "") {
                    alert("검색어를 입력해 주세요");
                    $objKeyword.focus();
                    return false;
                }

                location = "/search/?query=" + escape($objKeyword.val());
            }
        });
    })(jQuery);
</script>
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
							</div></li>
						<li class="booking"><a href="/ticket/">예매</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/">빠른예매</a></li>
										<li><a href="/reserve/show-times/">상영시간표</a></li>
									</ul>
								</div>
							</div></li>
						<li class="theaters"><a href="/theaters/">극장</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/">CGV 극장</a></li>
										<li><a href="/theaters/special/">특별관</a></li>
										<li class="last"><a
											href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx"
											class="specialclub">CLUB 서비스</a></li>
									</ul>
								</div>
							</div></li>
						<li class="culture"><a href="/culture-event/event/">이벤트&amp;컬쳐</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/culture-event/event/">이벤트</a></li>
										<li><a href="/culture-event/popcorn-store/">기프트샵</a></li>
										<li><a href="/magazine/">매거진</a></li>
									</ul>
								</div>
							</div></li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->

				<!-- Integrated search(통합검색) -->
				<div class="sect-srh">
					<h2>통합검색서비스</h2>
					<fieldset>
						<legend>통합검색</legend>
						<input type="text" title="통합검색" id="header_keyword"
							name="header_keyword" minlength="2" maxlength="20"> <input
							type="hidden" id="header_ad_keyword" name="header_ad_keyword">
						<button type="button" class="btn-go-search" id="btn_header_search">검색</button>
						<iframe
							src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt"
							width="0" height="0" title="" frameborder="0" scrolling="no"
							marginwidth="0" marginheight="0"
							allowfullscreen="allowfullscreen"
							mozallowfullscreen="mozallowfullscreen"
							msallowfullscreen="msallowfullscreen"
							oallowfullscreen="oallowfullscreen"
							webkitallowfullscreen="webkitallowfullscreen"></iframe>
					</fieldset>
				</div>
				<!-- /Integrated search(통합검색) -->


				<!-- Advertisement -->

				<div class="ad-partner">
					<a
						href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=30008">
						<img
						src="https://img.cgv.co.kr/WingBanner/2020/1015/16027565478490.png"
						alt="간편결제 차이">
					</a>
				</div>

				<!-- /Advertisement -->
				<!-- 서브 메뉴 -->

			</div>
		</div>
		<!-- txt banner -->

		<!-- /text banner -->
	</div>

</body>
</html>