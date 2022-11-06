/*<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script><script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
    <script src="/js/jquery/jquery-ui-1.10.3.min.js" charset="UTF-8"></script>
    <script src="/js/json2.js" charset="UTF-8"></script>
    <script src="/js/uniform.js" charset="UTF-8"></script>
    <script src="/js/browser.js" charset="UTF-8"></script>
    <script src="/js/style.dongtan.js" charset="UTF-8"></script>
    <script src="/mapo/secu/messageJs.do" charset="UTF-8"></script>
        <script src="/js/common.js" charset="UTF-8"></script>
    <script src="/js/commonEx.js" charset="UTF-8"></script>
    <script src="/js/jquery.slides.js" charset="UTF-8"></script>
    <script src="/js/mbr/popLogin.js" charset="UTF-8"></script></head><body class="stay subBody mypageBody"><div id="popLoginDiv" class="popLogin" style="display:none"></div>
    <script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
    <script src="/js/popCalendar.js" charset="UTF-8"></script><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>
    <script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/makePCookie.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
    <script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가] 달력 고도화 -->
    <script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 --></body>*/

/* <!-- Google Tag Manager -->
    <script>*/ (function (w, d, s, l, i) {
  w[l] = w[l] || [];
  w[l].push({
    "gtm.start": new Date().getTime(),
    event: "gtm.js",
  });
  var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s),
    dl = l != "dataLayer" ? "&l=" + l : "";
  j.async = true;
  j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
  f.parentNode.insertBefore(j, f);
})(window, document, "script", "dataLayer", "GTM-T3LBJ26"); /*</script>
    <!-- End Google Tag Manager --> */

/* <script> */

var UserInfo =
  UserInfo ||
  (function () {
    var module = {};
    var _isLogin = false;
    var _firstName = "";
    var _lastName = "";

    var ajax = function (callback) {
      jQuery.ajax({
        url: "https://www.shillahotels.com/cmm/getUserInfo.do",
        type: "post",
        dataType: "jsonp",
        error: function () {
          callback(null);
        },
        success: function (strData) {
          if (strData.NAME_ID != "") {
            _isLogin = true;
            _firstName = strData.FIRST_NAME;
            _lastName = strData.LAST_NAME;
          }
          callback(_firstName + " " + _lastName);
        },
      });
    };

    module.drawName = function (callback) {
      ajax(callback);
    };

    module.isLogin = function () {
      return _isLogin;
    };

    return module;
  })();

/* </script> */

/* <script type="text/javascript"> */

var filter = "win16|win32|win64|mac|macintel";
var pcFlag = $.cookie("SHILLA_PC");

if (navigator.platform) {
  if (filter.indexOf(navigator.platform.toLowerCase()) < 0) {
    if (pcFlag != "Y") {
      document.location.href = "http://m.shillastay.com/mapo/index.do";
    }
  }
}

/*    </script> */




/*  <dl class="skipNavi">
      <dt>SHILLA STAY 바로가기 메뉴</dt><dd><a class="goGnbMenu" href="#gnbMenu">메인메뉴 바로가기</a></dd><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>
  
  <div class="subWrap subWrapdongtan">
      
      <div class="head">
          <!-- tmp/head -->
  <script type="text/javascript">
          function ssoLogout() 
          {
              location.href = "https://www.shillahotels.com/mapo/login/SSOLogout.do?returnType=P";
  // 			location.href = "/mapo/login/SSOLogout.do";
          }
          
          function fnNoticeAlert() {
              
                  alert("2015년 7월 27일 신라호텔의 새로운 멤버십 서비스 신라리워즈가 오픈함에 따라 온라인 회원 서비스가 종료됩니다. 다이너스티 또는 골드 멤버십에 가입하셨던 고객께서는 신라리워즈 멤버십으로 전환하여 주시면 감사하겠습니다.");
              
          }
          
          
      </script> 
      <script language="JavaScript">
  // 		document.oncontextmenu = function(){ // 컨텍스트 메뉴금지
  // 			return false;
  // 		};
      </script> */

/*    <script type="text/javascript" src="/js/jquery.ad-gallery.js"></script>
<script src="/js/ask/ask.js"></script>
<script src="/js/uiSub.js" charset="UTF-8"></script>
<script type="text/javascript"></script> */

$(document).ready(function (e) {
  jQuery(".maingnbMenu .m2 > a").addClass("on");
  jQuery(".maingnbMenu .m2").find(".s1>a").addClass("on");

  jQuery(".lnbMenu").find(".m1>a").addClass("on");

  var galleries = $(".ad-gallery").adGallery();

  $(".slidePhotoBox .btnFullScreen").remove();
  $(".slidePhotoBox .ad-back").remove();
  $(".slidePhotoBox .ad-forward").remove();
});

function changeTab(tabno) {
  if (tabno == "1") {
    $("#mapTab1").addClass("ctnOn");
    $("#mapTab2").removeClass("ctnOn");
    $("#mapTab3").removeClass("ctnOn");
  } else if (tabno == "2") {
    $("#mapTab1").removeClass("ctnOn");
    $("#mapTab2").addClass("ctnOn");
    $("#mapTab3").removeClass("ctnOn");
  } else if (tabno == "3") {
    $("#mapTab1").removeClass("ctnOn");
    $("#mapTab2").removeClass("ctnOn");
    $("#mapTab3").addClass("ctnOn");
  }
}

function openCallPop(areaId) {
  var popUrl;
  if (areaId == "channel") popUrl = "./accChannelPop.do";
  else if (areaId == "email")
    popUrl =
      "./accEmailPop.do?contId=ST&accNm=" + encodeURIComponent("스탠다드");

  openCtrlPopup(popUrl, areaId, "popLayer");
}

function openAskPop() {
  var href =
    "https://www.shillahotels.com/membership/inquires/faq/memStayAskFaq.do?propertyId=MAPSS&lang=ko";

  window.open(href, "", "");
}

/* <!-- 객실어매니티 -->
                 <div id="accAmenityPop" style="display:none">
                     <div class="popLayer popLayerAccAmenity_dongtan">
                         <div class="popHead">
                             <h2 class="tit">객실어매니티 - 팝업/mapo</h2>
                             <div class="btn"><a id="accAmenityPopCloseBtn" class="btnClose" href="#" onclick="closePopup('accAmenityPop');  return false;"><span>닫기</span></a></div>
                         </div>
                         <div class="popCtn">
                             
                             <div class="allWrap"> 
 <div class="left"> 
 <h3><img alt="Bath Room" src="../../../images/ko/dongtan/accommodation/accBathroomTit.gif"></h3> 
 <ul> 
 <li class="first">다회용 어메니티&nbsp;</li> 
 <li>덴탈 키트</li> 
 <li>머리빗</li> 
 <li>코튼세트(면봉, 화장솜) </li> 
 <li>헤어드라이기 </li> 
 <li>배스로브</li> 
 <li>배스타월</li> 
 <li>핸드타월</li> 
 <li>워시타월</li> 
 <li>배스매트</li> 
 <li class="last">비상벨</li> 
 </ul></div> 
 <div class="mid"> 
 <h3><img alt="Bed Room" src="../../../images/ko/dongtan/accommodation/accBedroomTit.gif"></h3> 
 <ul class="mgb50"> 
 <li class="first">침대 </li> 
 <li>거위털 이불</li> 
 <li>오리털 베개</li> 
 <li>전화기</li> 
 <li>개별 냉난방 조절기</li> 
 <li class="last">유니버셜 어댑터</li> 
 </ul></div> 
 <div class="right"> 
 <h3><img alt="Closet" src="../../../images/ko/dongtan//accommodation/accClosetTit.gif"></h3> 
 <ul> 
 <li class="first">개인금고</li> 
 <li>다리미 세트</li> 
 <li>구두주걱</li> 
 <li>슈 클리너</li> 
 <li class="last">비상 손전등</li> 
 </ul></div></div>
 
                         </div>
                     </div>
                     <div class="mdScreen" style="display: block; height: 1834px;"></div>
                 </div>
         
 
         
         <!-- 도면보기 -->
         <div id="accmoMap" style="display:none">
         <div class="popLayer popLayerstFplan">
             <div class="popHead">
                 <h2 class="tit">
                     <img src="/images/ko/dongtan/accommodation/StandardpopTitle.gif" alt="스탠다드 도면보기 - 팝업">
                 </h2>
                 <div class="btn"><a id="accmoMapCloseBtn" class="btnClose" href="#" onclick="closePopup('accmoMap');  return false;"><span>닫기</span></a></div>
             </div>
                 <div class="popCtn">
                     <div class="popWrap">
                     
                 
                         <ul class="popTab"><!-- 도면그림이 두개일때 -->
                             <li id="mapTab1" class="ctn ctn1  first ctnOn">
                                 <h3 class="tit"><a href="javascript:void(0);">Twin</a></h3>
                                 <div class="box">
                                     <img src="/images/contents/accmo/ST/R00000007A9E_KR.gif" alt="Twin">
                                 </div>
                             </li>
                             <li id="mapTab2" class="ctn ctn2">
                                 <h3 class="tit"><a href="javascript:void(0);">Double</a></h3>
                                 <div class="box">
                                     <img src="/images/contents/accmo/ST/R00000007A9G_KR.gif" alt="Double">
                                 </div>
                             </li>
                             
                             <li id="mapTab3" class="ctn ctn3 last">
                                     <h3 class="tit"><a href="javascript:void(0);">Family Twin</a></h3>
                                     <div class="box">
                                         <img src="/images/contents/accmo/ST/R00000007A9I_KR.gif" alt="Family Twin">
                                     </div>
                                 </li>
                             
                         </ul>
                     
                     </div>
                 </div>
             </div>
             <div class="mdScreen" style="display: block; height: 1834px;"></div>
 
         </div>
 
 <!-- 위성채널보기 -->
         <div id="channel" style="display:none"></div>
 
         </div>
 
         </div>
     
     </div>
     
     <div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot property footdongtan">
         <script type="text/javascript">
 
 function insertFooterMailReqr(){
     if($.trim($('#footerMailReqrNewsEmail').val()) == ""){
         alert(messages["msg.cmm.required"].replaceMsg(['이메일 ']));
         $('#footerMailReqrNewsEmail').focus();
         return;
     }
     if(!checkEmailOneFild( $('#footerMailReqrNewsEmail')  )){
            return;
     }
 
     $("email").val($("#footerMailReqrNewsEmail").val());
     var footerEmailLayer = $("#footerEmailLayer");
      var string = $("form[name=footerMailReqrForm]").serialize();
      $.post( "/mbr/newsletterreqr/countNewsLetterReqr.do", string
      ).done(function( resultCode ) {
          if(resultCode == "success"){
              $.ajax(
                      {
                          url: '/mbr/newsletterreqr/newsLetterPop.do',
                          type: "post",
                          data: { "email": $("#footerMailReqrNewsEmail").val() },
                          dataType: "html",
                          error: function(){
                                 alert('조회에 실패하였습니다.');
                          },
                          success: function( strData ){
 
                              footerEmailLayer.html(strData);
                              footerEmailLayer.show();
                              $("#footerEmailLayer").attr("tabindex",-1).focus(); 
                              //DIV위치 컨트롤영역
                              $("#footerMailReqrNewsEmail").val("");
                              $('html, body').animate( {scrollTop:0} );
                          }
                      }                           
               );
          }else if(resultCode == "newLetterOverlap"){
              alert('이미 뉴스레터를 신청하셨습니다.');
                 return;
          }else{
                 alert('생성이 실패하였습니다.');
                 return;
          }
     }).fail(function( jqxhr, textStatus, error ) {
         alert('생성이 실패하였습니다.');
     });
     
     
 }
 //-->
 </script> */

/* <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
 <script type="text/javascript" async=""
     src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script>
 <script gtm="GTM-T3LBJ26" type="text/javascript" async=""
     src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-NQ9CLZ3"></script>
 <meta http-equiv="X-UA-Compatible" content="IE=Edge">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <title>신라스테이 마포</title>
 <meta name="description" content="신라스테이 마포"><!--  <meta name="keywords" content="신라스테이 마포" />-->
 <meta name="og:title" content="신라스테이 마포">

 <!-- 검색엔진용 추가 180518 -->
 <meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
 <meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
 <meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
*/


