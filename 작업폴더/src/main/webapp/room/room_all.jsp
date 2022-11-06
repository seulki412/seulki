<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title -->
    <title>Shinna Hotel</title>

    <!-- Favicon -->
    <link rel="icon" href="../image/headicon.png">

    <!-- Stylesheet -->
    
    <link rel="stylesheet" href="../room/new_css/accommodation.css" /> 
    <link rel="stylesheet" href="../room/new_css/base.css"  />
    <link rel="stylesheet" href="../room/new_css/main.css" /> 

    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../header.css">
 </head>
 <style>
body, div, td, th, p, textarea {
    margin: 0;
    padding: 0;
    
    color: #101010;
}
 </style> 
 <body>
 <%@ include file="/header_footer/header.jsp" %>
 
  <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area contact-breadcrumb bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/18.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center mt-100">
                        <h2 class="page-title">객실 정보</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">객실 정보</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->
    
    
    <div class="contain">
      <div class="container">
        <!-- temp4 -->
        <div class="lnbArea lnbAreaAcmd">
          <div class="lnbMenu">
            <h2 class="tit">객실</h2>
            <ul class="menu">
              <li class="m1 first"><a href="room1.jsp"><span>스탠다드</span></a></li>
              <li class="m2"><a href=""><span>디럭스</span></a></li>
              <li class="pre_dlx"><a href=""><span>프리미어 디럭스</span></a></li>
              <li class="m3 last"><a href=""><span>그랜드</span></a></li>
            </ul>
            <a href=""><span><image src="../image/전체객실.png"> </span></a>
          </div>          
        </div>
        
        <div class="contents" id="contents">

          <div class="ctnAcmd ctnallRooms">
            <div class="location">
              <p class="list">
                <span class="crPosit">현재 페이지 위치 : </span> &gt; 객실 &gt;<strong>전체객실</strong>
              </p>
            </div>

            <div class="headTit">
              <h4 class="tit"><img alt="All Rooms" src="https://www.shillastay.com/images/contents/accmo/ACCMO_ALLROOM/R0000000BQ67_KR.gif"/></h4>
            </div>

            <div class="keepArea">
              <a id="emailBtn" href="/mapo/accommodation/allRoom.do">이메일</a>
              <a id="printBtn" href="/mapo/accommodation/allRoom.do" class="print">인쇄하기</a>
            </div>

            <!-- 이메일 보내기 -->
            <div id="email" style="display: none"></div>

            <!-- allroom_info -->
            <div class="allroom_info">
              <img src="https://www.shillastay.com/images/contents/accmo/ACCMO_ALLROOM/R0000001D9JK_KR.jpg" alt="All Rooms"/>
              <div class="hidden">
                
              </div>
            </div>
            <!-- allroom_info end -->
          </div>
        </div>
      </div>
    </div>
    
    
    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="../js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="../js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="../js/roberto.bundle.js"></script>
    <!-- Active -->
    <script src="../js/default-assets/active.js"></script>
</body> 
</html>
