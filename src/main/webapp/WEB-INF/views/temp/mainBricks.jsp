<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot,
	.sect-smuse, .sect-cinfo {
	position: relative;
	width: 980px;
	margin: 0 auto;
}

.sect-common {
	margin: 0 auto;
}

input, select, img {
	vertical-align: middle;
}

button, input[type='submit'], input[type='button'] {
	cursor: pointer;
	margin: 0;
	padding: 0;
}

.slider {overflow:hidden; position:relative; z-index:1; width:100%; height:100%;}
.slider > button[type='button'] {position:absolute; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png); background-repeat:no-repeat; font:0/0 a; zoom:1;}
.slider > .btn-prev, 
.slider > .btn-next, 
.slider > .btn-prev.dim, 
.slider > .btn-next.dim {overflow:hidden; top:50%; width:26px; height:52px; text-indent:100%; white-space:nowrap; margin-top:-26px;}
.slider > .btn-prev {left:19px; background-position:0 -97px;}
.slider > .btn-prev.dim {background-position:0 -155px;}
.slider > .btn-next {right:19px; background-position:-30px -97px;}
.slider > .btn-next.dim {background-position:-30px -155px;}

.slider .item-wrap {display:inline-block; float:left;}
*+html .slider .item-wrap {display:inline;}
.slider button[type='button'] {z-index:20;}
.slider button[type='button'].btn-pause, 
.slider button[type='button'].btn-play, 
.slider .item-wrap > button[type='button'] {overflow:hidden; position:absolute; top:415px; width:13px; height:13px; background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_icon.png) no-repeat 0 -90px; text-indent:100%; white-space:nowrap;}
.slider .item-wrap button[type='button'].on {background-position:-16px -90px;}
.slider .item-wrap > .item {position:absolute; z-index:5; text-align:center;}
.slider .item-wrap.on > .item {z-index:10;}
.slider .item-wrap.move > .item {z-index:15;}
.slider .item-wrap.on > .item > a {display:block;}
.slider .item-wrap > .item .ico-play {top:50%; left:50%; width:66px; height:66px; margin:-33px 0 0 -33px; background-position: -121px -21px;}

.slider button[type='button'].btn-play {left:534px; background-position:-32px -90px;}
.slider button[type='button'].btn-pause {left:551px; background-position:-48px -90px;}

div[class^="sect-"] {
	clear: both;
	zoom: 1;
}

.sect-common {
	height: 450px;
}

.sect-common {
	overflow: hidden;
	width: 980px;
}

.sect-common:before, .sect-common:after {
	position: absolute;
	top: 0;
	z-index: 10;
	content: '';
	width: 14px;
	height: 450px;
}

.sect-common:before {
	left: 0;
	background:
		url(https://img.cgv.co.kr/r2014/images/common/bg/bg_bricks_before.png)
		no-repeat 0 0;
}

.sect-common:after {
	right: 0;
	background:
		url(https://img.cgv.co.kr/r2014/images/common/bg/bg_bricks_after.png)
		no-repeat 0 0;
}

.btn-pause {
	left: 528px;
	display: block;
}

button, input[type='submit'], input[type='reset'] {
	padding: 0;
	border: 0 none;
	background-color: transparent;
	vertical-align: middle;
}


.bricks {
	width: auto;
	height: 450px;
	background-image:
		url("https://img.cgv.co.kr/r2014/images/common/bg/bg_c_bricks.png");
	background-repeat: repeat-x;
}

</style>
</head>
<body>
	<div class="bricks">
		<div id="contents">
		<div class="sect-common">
			<div class="slider" id="slider">
				<button type="button" class="btn-pause"
					style="left: 528px; display: block;">일시멈춤</button>
				<!-- 고혜진님 요청으로 인한 삭제 -->

				<div class="item-wrap vip">
					<button type="button" class="" style="left: 438px; display: block;">VIP
						익스프레스</button>
					<a class="item" style="width: 980px; height: 450px; display: none;">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/0913/16315036396800.jpg"
						alt="VIP 익스프레스" style="width: 100%; height: 100%;">
					</a>
				</div>

				<div class="item-wrap 007">
					<button type="button" class=""
						style="left: 456px; display: block;" title="선택됨.">007 스탠딩
						포스터 팩</button>
					<a class="item"
						style="width: 980px; height: 450px; display: block;"
						href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=33194">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/1004/16333547813370.jpg"
						alt="007 스탠딩 포스터 팩" style="width: 100%; height: 100%;">
					</a>
				</div>

				<div class="item-wrap venom">
					<button type="button" style="left: 474px; display: block;" class="">베놈2
						필름마크</button>
					<a class="item" style="width: 980px; height: 450px; display: none;">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/1006/16335097273370.jpg"
						alt="베놈2 필름마크" style="width: 100%; height: 100%;">
					</a>
				</div>

				<div class="item-wrap venom2">
					<button type="button" style="left: 492px; display: block;" class="">베놈2
						SCREENX 포스터 팩</button>
					<a class="item" style="width: 980px; height: 450px; display: none;">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/1006/16335195084410.jpg"
						alt="베놈2 SCREENX 포스터 팩" style="width: 100%; height: 100%;">
					</a>
				</div>

				<div class="item-wrap venom4DX">
					<button type="button" style="left: 510px; display: block;" class="">베놈2
						4DX 포스터 팩</button>
					<a class="item" style="width: 980px; height: 450px; display: none;">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/1006/16335195084880.jpg"
						alt="베놈2 4DX 포스터 팩" style="width: 100%; height: 100%;">
					</a>
				</div>
				<div class="item-wrap venomPoster">
					<button type="button" style="left: 510px; display: block;"
						class="" title="선택됨.">베놈2 4DX 포스터 팩</button>
					<a class="item"
						style="width: 980px; height: 450px; display: block;"
						href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=33211">
						<img
						src="https://img.cgv.co.kr/Front/Main/2021/1006/16335195084880.jpg"
						alt="베놈2 4DX 포스터 팩" style="width: 100%; height: 100%;">
					</a>
				</div>


				<button type="button" class="btn-prev">이전 페이지 이동</button>
				<button type="button" class="btn-next">다음 페이지 이동</button>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript">
	
	$('.btn-next').click(function(){
		alert('hi');
		let ta = '<a class="item" style="width: 980px; height: 450px; display: none;"
		href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=33211">';
		ta = ta + '</a>';
		ta = ta + '<img src="https://img.cgv.co.kr/Front/Main/2021/1006/16335195084880.jpg" alt="베놈2 4DX 포스터 팩" style="width: 100%; height: 100%;">';
			
		</a>';
		
		<a class="item"
			style="width: 980px; height: 450px; display: block;"
			href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=33211">
			<img
			src="https://img.cgv.co.kr/Front/Main/2021/1006/16335195084880.jpg"
			alt="베놈2 4DX 포스터 팩" style="width: 100%; height: 100%;">
		
		
		
		let ta = '<textarea class="form-control" cols=""  name="contents" id="contents" rows="6">';
		ta = ta+content.trim() +'</textarea>';
		ta = ta +'<button type="submit" class="btn btn-success up" id="">UPDATE</button>';
		ta = ta +'<button type="submit" class="btn btn-danger can" id="">CANCEL</button>';
		
	})
    //<![CDATA[
     //CGV 공지 팝업 주석처리
    //function getCookie(name) {
    //    var nameOfCookie = name + "=";
    //    var x = 0;
    //    while (x <= document.cookie.length) {
    //        var y = (x + nameOfCookie.length);
    //        if (document.cookie.substring(x, y) == nameOfCookie) {
    //            if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
    //                endOfCookie = document.cookie.length;
    //            return unescape(document.cookie.substring(y, endOfCookie));
    //        }
    //        x = document.cookie.indexOf(" ", x) + 1;
    //        if (x == 0)
    //            break;
    //    }
    //    return "";
    //}    
    //if (getCookie("cgv_notice") != "done") {
    //    var spcwin = window.open('/popup/1411_personal_popup_1107_v2.html', 'cgv_notice', "height=414,width=280,menubar=no,scrollbars=no,resizeable=no,toolbar=no,left=355,top=100")
    //    spcwin.focus();        
    //}       
    (function ($) {
        $(function () {

        
            var eventData = [{"EventGroup":"05","EventTitle":"CGV 여의도 4DX 오픈 이벤트","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/1216/cgv-4dxopen banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10975&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"05","EventTitle":"[CGV 부천]RENEWAL OPENING","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/1212/membership.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10999&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"04","EventTitle":"더블적립","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0915/16316758541400.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/user/vip-lounge/event/2017/vip-point-save.aspx","Blank":false},{"EventGroup":"08","EventTitle":"CGV VIP EXPRESS","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0913/16315179619950.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32998","Blank":false},{"EventGroup":"04","EventTitle":"포인트 반값할인","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0915/16316758541560.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/user/vip-lounge/event/2017/vip-half-sale.aspx ","Blank":false},{"EventGroup":"08","EventTitle":"IMAX WORLD TRAVEL","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0913/16315139087750.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32617&menu=001","Blank":false},{"EventGroup":"03","EventTitle":"KT 멤버십","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2020/1231/16093946547390.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20635&menu=4","Blank":false},{"EventGroup":"03","EventTitle":"영화즉시할인은 NH농협카드","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0629/16249597733760.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32606&menu=006","Blank":false},{"EventGroup":"06","EventTitle":"씨네키즈 특별관 페이지","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/1113/cinekids_banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=CK","Blank":false},{"EventGroup":"04","EventTitle":"온라인 쿠폰북","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0915/16316758541090.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/Vip_CouponBook/default.aspx","Blank":false},{"EventGroup":"08","EventTitle":"CJ ONE 7% 적립","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0913/16315139088220.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=32759&menu=001","Blank":false},{"EventGroup":"03","EventTitle":"마이신한포인트","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2020/1223/16087026751200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=30002&menu=006","Blank":false},{"EventGroup":"05","EventTitle":"private dining CINE de CHEF","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/1202/cinedechef private dining.jpg","ThumnailLinkUrl":" http://www.cgv.co.kr/event/running/view.aspx?Idx=10866&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"4DX","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/0731/4dx.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=4D14","Blank":false},{"EventGroup":"04","EventTitle":"스페셜데이","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0913/16315035321080.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/user/vip-lounge/event/2017/vip-special-day.aspx","Blank":false},{"EventGroup":"08","EventTitle":"시그니처 K","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2021/0330/16170705205160.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31811","Blank":false},{"EventGroup":"05","EventTitle":"[인천] 청소년 5천원 이벤트","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/1128/sale.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10825&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"imax","ThumnailImage":"https://img.cgv.co.kr/Front/Main/2013/0731/imax.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=07","Blank":false}];
            var popupData = {'List' : [{"Title":"SSGPAY 5천원 관람","Contents":"<div class=\"item-wrap\"><div class=\"item\"><div style=\"text-align:center;\"><div><a href=\"http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=33174&menu=006\"><img alt=\"\" height=\"380\" src=\"http://img.cgv.co.kr/Event/cultureplexPhoto/16335001354780.jpg\" width=\"280\" /></a></div></div></div></div>"}]};
            var userPopupData = [];

            var sliderOptions = { 'effect': 'fade', 'auto': true };
            mainMotion = $('#slider').visualMotion(sliderOptions);

            var mSliderOptions = { 'effect': 'fade', callback: moveCallback };
            function moveCallback(_index) {
                $('#movie_slider > .now-showing').eq(_index).show().siblings('.now-showing').hide();
            }
            $('#movie_slider').visualMotion(mSliderOptions);

            function getCookie(cName) {
                cName = cName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cName);
                var cValue = '';
                if (start != -1) {
                    start += cName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) end = cookieData.length;
                    cValue = cookieData.substring(start, end);
                }
                return unescape(cValue);
            }

            function setCookie(name, value, expiredays) {
                var todayDate = new Date();
                todayDate.setDate(todayDate.getDate() + expiredays);
                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }

            function setCookie_Main(name, value) {
                var todayDate = new Date();

                todayDate.setSeconds(59);
                todayDate.setMinutes(59);
                todayDate.setHours(23);

                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }

            function openPopup() {
                var cookie = getCookie("mainpopup");

                if (!popupData || !popupData.List || popupData.List.length < 1 || cookie == "true")
                    return;

                /* 전체 template */
                var $std = $('.skipnaiv'),
				options = {
				    '$target': $std,
				    'html': $("#temp_popup").tmpl(popupData)
				};
                app.instWin.add(options);
                /* 위치잡는 스크립트 */
                var offsetLeft = $('#contents').offset().left;
                $std.next('.layer-wrap').css('left', offsetLeft + 30);
                /* 슬라이더 */
                var popsliderOptions = {
                    //2014.09.15 디마팀 방재현님 요청으로 2초로 (수정 default : 4초), 이지용님 요청으로 3초로 재수정
                    'term'      : 3000,
                    'effect': 'none',
                    'auto': true,
                    callback: function (_index) {
                        $('.noti-num strong').text(_index + 1);
                    }
                };
                $('#mainNoticeSlider').visualMotion(popsliderOptions);
            }

            openPopup();

            $('#open_today').on('click', function () {
                var isChecked = $("#open_today").is(":checked");

                if (isChecked) {
                    setCookie_Main("mainpopup", "true");

                    $('.layer-wrap').remove();
                }

            });

            $('.tab-menu > li > a').on('click', function () {
                var filterType = $(this).attr('data-filter-type');
                var liObj = $('.tab-menu > li');
                var selectObj = $(this).parent('li');

                liObj.removeClass("on");
                liObj.attr("title", "");
                selectObj.addClass("on");
                selectObj.attr("title", "현재 선택");

                searchEventList(filterType);
                return false;

            });

            function searchEventList(filterType) {
                var count = 0;

                var $temp = $('<ul></ul>');

                for (var idx in eventData) {
                    var item = eventData[idx];

                    if (item['EventGroup'] == filterType) {
                        count++;
                        if (count > 4) break;
                        $("#temp_event").tmpl(item).appendTo($temp);
                    }
                }
                
                $('.sect-event').html($temp);
            }



            function OpenVip(){  

             var cookie = getCookie("vip2016");

             if (cookie == 'true')
                return;

             if($('#isVip').val() == 'Y') 
             {  
                  window.open('/user/popup/vip-2016.aspx', 'vip2016', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
             }
           }

            function OpenSystemPopup() {
                
                if (userPopupData && userPopupData.length > 0) {
                    for (var i=0;i<userPopupData.length;i++) {
                        var item = userPopupData[i];
                        var popupName = item['CookieName'];

                        if (getCookie(popupName) == 'done') { return; }

                        var option = 'width=' + item['Width'] + ',height=' + item['Height'] + ',toolbar=no,scrollbars=no,status=0,top=' + item['Y'] + ',left=' + item['X'];
                        var url = item['IsUrl'] == 'n' ? '/user/popup/personal-system.aspx?idx=' + item['IDX'] : item['Contents'];

                        var userPopup = window.open(url, popupName, option);
                        userPopup.focus();
                    }
                }
            }

            function OpenVipNot() {

                var cookie = getCookie("vip2015not");
             
                if (cookie == 'ture')
                    return;

                if ($('#isVipNot').val() == "Y") {               
                    window.open('/user/popup/vip_2015_unissued.aspx', 'vip2015not', 'width=280,height=400,toolbar=no,scrollbars=no, status=0,top=0,left=0');

                }
            }


            function OpenfamilyPoint(){  

             var cookie = getCookie("familyPointInfo");

             if (cookie == 'true')
                return;

            if($('#isKangdong').val() == "1"&& $('#isGoonja').val() == "1") 
             {  
                  window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
             }

             else if($('#isKangdong').val() == "1") 
             {  
                  window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
             }

             else if($('#isGoonja').val() == "1") 
             {  
                  window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
             }else{
                return;
             }
           }



          $('.btn_close').on('click', function () {
             $("#cgvwrap_b").hide();
             $("#cgvwrap_a").hide();
           
          });


          var uAgent = navigator.userAgent;  
         
          if( uAgent.indexOf("NT 5.1") != -1 ) 
          {           
              $("#cgvwrap_b").show();            
          }
          else if (uAgent.indexOf("MSIE 6") > 0 || uAgent.indexOf("MSIE 7") > 0 || uAgent.indexOf("MSIE 8") > 0 ) 
          {       
              $("#cgvwrap_a").show();  // IE버전     
          }

           
              


            //OpenVipNot();
            

            //OpenVip();

         
            OpenSystemPopup();
            OpenfamilyPoint();

            /* CGV 공지사항 */
            (function(a){a.fn.noticeTicker=function(b){var c={speed:700,pause:4000,showItems:3,animation:"",mousePause:true,isPaused:false,direction:"up",height:0};var b=a.extend(c,b);moveUp=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:first").clone(true);if(e.height>0){d=f.children("li:first").height()}f.animate({top:"-="+d+"px"},e.speed,function(){a(this).children("li:first").remove();a(this).css("top","0px")});if(e.animation=="fade"){f.children("li:first").fadeOut(e.speed);if(e.height==0){f.children("li:eq("+e.showItems+")").hide().fadeIn(e.speed)}}h.appendTo(f)};moveDown=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:last").clone(true);if(e.height>0){d=f.children("li:first").height()}f.css("top","-"+d+"px").prepend(h);f.animate({top:0},e.speed,function(){a(this).children("li:last").remove()});if(e.animation=="fade"){if(e.height==0){f.children("li:eq("+e.showItems+")").fadeOut(e.speed)}f.children("li:first").hide().fadeIn(e.speed)}};return this.each(function(){var f=a(this);var e=0;f.css({overflow:"hidden",position:"relative"}).children("ul").css({position:"absolute",margin:0,padding:0}).children("li").css({margin:0,padding:0});if(b.height==0){f.children("ul").children("li").each(function(){if(a(this).height()>e){e=a(this).height()}});f.children("ul").children("li").each(function(){a(this).height(e)});f.height(e*b.showItems)}else{f.height(b.height)}var d=setInterval(function(){if(b.direction=="up"){moveUp(f,e,b)}else{moveDown(f,e,b)}},b.pause);if(b.mousePause){f.bind("mouseenter",function(){b.isPaused=true}).bind("mouseleave",function(){b.isPaused=false})}})}})(jQuery);
            $('.sect-notice-list .inner').noticeTicker({ 
                speed: 500,
                pause: 5000,
                animation: 'slide',
                mousePause: true,
                showItems: 1
            });
       
       
           

       
        
       
        });
    })(jQuery);
//]]>
</script>
</body>
</html>