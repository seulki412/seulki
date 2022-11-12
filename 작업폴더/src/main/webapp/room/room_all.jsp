<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title -->
<title>Shinna Hotel - 객실정보</title>

<!-- Favicon -->
<link rel="icon" href="../image/headicon.png">

<!-- Stylesheet -->
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../header.css">
</head>
<body>

	<%@ include file="/header_footer/header.jsp"%>

	
	<!-- Breadcrumb Area Start -->
	<div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(../image/R0000001PC6L_KR.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcrumb-content text-center">
						<h2 class="page-title">객실 정보</h2>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb justify-content-center">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">객실정보</li>								
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Area End -->
	<!-- Blog Area Start -->
	<div class="roberto-news-area section-padding-100-0">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-8 col-md-6 col-lg-4">
					<div class="roberto-sidebar-area pl-md-4">

						<!-- Newsletter -->
						<div class="single-widget-area mb-100">
							<div class="newsletter-form">
								<h5>객실</h5>
								<div>
									<a href="../room/room1.jsp">스탠다드</a>
								</div>
								<br>
								<div>
									<a href="../room/room2.jsp">디럭스</a>
								</div>
								<br>
								<div>
									<a href="../room/room3.jsp">프리미어 디럭스</a>
								</div>
								<br>
								<div>
									<a href="../room/room4.jsp">그랜드</a>
								</div>
								<br>
								<button type="submit" class="btn roberto-btn w-100">
									<a href="../room/room_all.jsp" style="color: white;">전체 객실 보기</a>
								</button>
							</div>
							<br>
							<div style="text-align: center; line-height: 50px;">
								<div style="display: inline-block; background-color: #524b42; width: 100px; height: 50px;">
									<a href="../inquiry/inquirylist.jsp" style="color: white;">문의하기</a>
								</div>
								&nbsp;&nbsp;
								<div style="display: inline-block; background-color: #524b42; width: 100px; height: 50px;">
									<a href="../reservation/reservation.jsp" style="color: white;">예약하기</a>
								</div>
							</div>
						</div>

						<!-- Recent Post -->

					</div>
				</div>
				<div class="col-12 col-lg-8">
					<!-- Post Thumbnail -->
					<div class="post-thumbnail mb-50">
						<img src="../image/객실정보.jpg" alt="">
					</div>
					<!-- Blog Details Text -->
					<div class="blog-details-text"></div>
					<!-- Post Author Area -->
					<div
						class="post-author-area d-flex align-items-center justify-content-between mb-50">

						<!-- Author Social Info -->
						<div class="author-social-info d-flex align-items-center"></div>
					</div>

					<!-- Leave A Reply -->
					<div class="roberto-contact-form mt-80 mb-100">

					</div>
				</div>

			</div>
		</div>
		<!-- Blog Area End -->
	</div>

	<%@ include file="/header_footer/footer.jsp"%>

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