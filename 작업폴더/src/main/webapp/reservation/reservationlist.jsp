<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Shinna Hotel - 예약 내역</title>
    <link rel="icon" href="../image/headicon.png">
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../header.css">
</head>
<body>

    <%@ include file="/header_footer/header.jsp" %>
 	<c:set var="reservationlist" value="${requestScope.reservationlist }"/>
  
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(../image/R0000001PC6L_KR.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2 class="page-title">예약 내역</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">내 정보</li>
                                <li class="breadcrumb-item active" aria-current="page">예약내역</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
 

    <div class="roberto-news-area section-padding-100-0">
        <div class="container">
            <div class="row justify-content-center">
            	
                <%-- 사이드 바 --%>
                <div class="col-12 col-sm-8 col-md-6 col-lg-3">
                    <div class="roberto-sidebar-area pl-md-4">
                        <div class="single-widget-area mb-100">
                            <div class="newsletter-form">
                                <h4 style="margin-bottom: 30px;font-weight: bold">내 정보</h4>
                                <div>
                                    <a href="../mypage/myinfo.jsp" >내 정보 관리</a>                                    
                                </div><br>
                                <div style="background-color:#524b42;text-align: center;" >
                                    <a href="../reservation/reservationlist.jsp" style="color: white;">예약 내역</a>
                                </div>                               
                            </div>                            
                        </div>                        
                    </div>
                    <%-- 사이드 바 --%>
		        </div>

                    <%-- 본문--%>
                <div class="col-12 col-lg-8">
                    
                    <h2 style="text-align: center;height: 50px;"><span style="background-color: #524b42;color: white;padding: 10px;">예약 내역</span></h2>
                    <div class="post-thumbnail mb-50">
                        <div>
                            <table class="col-12" style="text-align: center;">
                                <thead style="background-color: #f1e3c4;height: 70px;border-top: #524b42;" >                            
                                    <th>예약번호</th>
                                    <th>성인</th>
                                    <th>어린이</th>
                                    <th>체크인</th>
                                    <th>체크아웃</th>
                                    <th>객실</th>
                                    <th>금액</th>                                    
                                    <th>예약일</th>
                                    <th>취소</th>                                
                                </thead>                                
                                <tbody>

                                    <%-- 반복분 돌릴 구간--%>
                                    <c:choose>
                                    	<c:when test="${reservationlist != null and fn:length(reservationlist) > 0 }">
			                                 <c:forEach var="reservation" items="${reservationlist }">
				                                    <tr style="height: 40px;">
					                                    <form action="${pageContext.request.contextPath }/reservation/ReservationCancel.re?res_number=${reservation.res_number }&res_price=${reservation.res_price }" method="POST">
					                                        <td name="res_number">${reservation.res_number }</td>
					                                        <td>${reservation.res_adults }</td>
					                                        <td>${reservation.res_kids }</td>
					                                        <td name="res_checkin">${reservation.res_checkin }</td>
					                                        <td name="res_checkout">${reservation.res_checkout }</td>
					                                        <td name="res_rtype">${reservation.res_rtype }</td>
					                                        <td name="res_price">${reservation.res_price }</td>
					                                        <td>${reservation.res_time}</td>
					                                        <td><button type='submit' style="margin-left:5px;margin-right: 5px;width:auto;background-color: #524b42;color: white;border:0px;padding:5px;padding-left:10px;padding-right:10px;">예약 취소</button></td>
					                                   </form>
				                                    </tr>
			                                  </c:forEach>
	                                    </c:when>
                                    </c:choose>
                                    <%-- 반복분 돌릴 구간--%>
                                    
                                </tbody>
                    
                                                               
                            </table>
                            <hr>
						<div style="text-align: center; line-height: 50px;">
								<div style="display: inline-block; background-color: #524b42; width: 100px; height: 50px;">
									<a href="../index.jsp" style="color: white;">확인</a>
								</div>
								
							</div>
						<%-- 체크박스 값 가져오는 버튼 미구현.. --%>
                        <%--     <div style="text-align: center;margin-top: 100px;"><button onclick="getCheckValue()">예약 취소</button></div>--%>
                        <%--     <div id="res"></div> --%>
                        </div>
                    </div>
                     <%-- 본문--%>
                        
                </div>

                    
                    <div class="comment_area mb-50 clearfix">                        
                        
                    </div>

                  
                   
            </div>

        </div>
    </div>
    
    
    <%@ include file="/header_footer/footer.jsp" %>

    
    
    <script src="../js/jquery.min.js"></script>
    
    <script src="../js/popper.min.js"></script>
    
    <script src="../js/bootstrap.min.js"></script>
    
    <script src="../js/roberto.bundle.js"></script>
    
    <script src="../js/default-assets/active.js"></script>
    
</body>

<script>

</script>

</html>