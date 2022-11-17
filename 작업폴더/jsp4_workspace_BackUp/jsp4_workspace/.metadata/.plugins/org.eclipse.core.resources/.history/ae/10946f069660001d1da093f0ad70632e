<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%String u_id = (String)session.getAttribute("u_id");
    String login = "";
    if (u_id != null ){
    	login = "<a href=../login/myinfo.jsp style=background-color:#f1e3c4;color:#524b42;>내 정보 </a>|";	
    } else{
    	login = "<a href=../login/login.jsp style=background-color:#f1e3c4;color:#524b42;>로그인 </a>|";
    }
    
    String join = "";
    if (u_id != null ){
    	join = "<a href=../login/logout.jsp style=background-color:#f1e3c4;color:#524b42;>로그아웃</a>";	
    } else{
    	join = "<a href=../join/join.jsp style=background-color:#f1e3c4;color:#524b42;>회원가입 </a>";
    }
    %>
 
    <!-- Preloader -->
    <div id="preloader" style="background-color: #f1ebd6;">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

    <!-- Header Area Start -->
    <header class="header-area">        
        <!-- Top Header Area Start -->
        <div class="top-header-area" style="background-color: white;">
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="top-header-content">
                            <a href="#" style="color: #524b42;"><i class="icon_phone" style="color: #f1e3c4;"></i> <span>(02) 1234-5678</span></a>
                            <a href="#" style="color: #524b42;"><i class="icon_mail" style="color: #f1e3c4;"></i> <span>shinna@hotel.com</span></a>
                        </div>
                    </div>

                    <div class="col-6" >
                        <div class="top-header-content" >
                            <!-- Top Social Area -->
                            <div class="top-social-area ml-auto">
                                <a href="#"><i class="fa fa-facebook" style="color: #f1e3c4;" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" style="color: #f1e3c4;" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor" style="color: #f1e3c4;" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" style="color: #f1e3c4;" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Top Header Area End -->

        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off" style="background-color: #f1e3c4;">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="robertoNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="../login/index.jsp"><img src="../image/headerlogo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" >
                            <!-- Menu Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>
                            <!-- Nav Start -->
                            <div class="classynav">
                                

                                <!-- Search -->
                                <div class="book-now-btn"  >
                                   <a href="../room/room_all.jsp" style="background-color: #f1e3c4;color: #524b42;">객실정보</a>|                       
                                   <a href="../inquiry/inquiry.jsp" style="background-color: #f1e3c4;color: #524b42;">문의하기</a>|                          
                                   <a href="../location/location.jsp" style="background-color: #f1e3c4;color: #524b42;">위치찾기</a>|                          
                                    <a href="../reservation/reservation.jsp" style="background-color: #f1e3c4;color: #524b42;">예약 </a>|                              
                                    <%=login %>
                                    <%=join %>
                                </div>
                               
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->