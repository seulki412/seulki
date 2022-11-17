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
    <title>Roberto - Hotel &amp; Resort HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="image/headicon.png">

    <!-- Stylesheet -->
        
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../inquiry/css/inquiry.css"> 
    <link rel="stylesheet" href="../header.css">
</head>

<body>
    <%@ include file="/header_footer/header.jsp" %>

    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area contact-breadcrumb bg-img bg-overlay jarallax" style="background-image: url(../image/그랜드1.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center mt-100">
                        <h2 class="page-title">문의하기</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">문의하기</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->

 

    <!-- Contact Form Area Start -->
    <div class="roberto-contact-form-area section-padding-100">
        <div class="container" style="background-color: #f1e3c4;">
            <div class="lnbArea">
                <div class="lnbMenu">
                <h2>고객문의</h2>
                <ul>
                    <li><a href="">연락처</a></li>
                    <li><a href=""><strong>문의하기</strong></a></li>
                </ul>
                </div>
            </div>
            <div class="contents">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center fadeInUp" data-wow-delay="100ms" >
                        <h6 style="color: #524b42;margin-top: 15px;">문의하기</h6>
                        <hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <!-- Form -->
                    <div class="roberto-contact-form">
                        <form action="#" method="post">
                            <table style="width: 100%;table-layout: fixed;">                                
                                <tr>                                    
                                     <div class="col-12 col-lg-6 fadeInUp" data-wow-delay="100ms">
                                        이름 : <input type="text" name="message-name" class="form-control mb-30" placeholder="이름을 입력하세요.">
                                    </div>                                                                   
                                </tr>
                                <tr>                                   
                                    <div class="col-12 col-lg-6 fadeInUp" data-wow-delay="100ms">
                                       이메일 :  <input type="email" name="message-email" class="form-control mb-30" placeholder="이메일을 입력하세요.">
                                    </div>                                    
                                </tr>
                                <tr> &nbsp;&nbsp;&nbsp; 문의 내용 :
                                    <div class="col-12 fadeInUp" data-wow-delay="100ms">
                                        <textarea name="message" class="form-control mb-30" placeholder="내용을 입력해주세요"></textarea>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="col-12 text-center fadeInUp" data-wow-delay="100ms">
                                        <button type="submit" class="btn roberto-btn mt-15" style="background-color: #524b42;">등록</button>
                                    </div>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
             </div>
        </div>        
    </div>
    <!-- Contact Form Area End -->
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <!-- Call To Action Area Start -->
    
<%@ include file="/header_footer/footer.jsp" %>

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