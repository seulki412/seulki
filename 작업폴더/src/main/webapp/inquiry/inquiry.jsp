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
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/16.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
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
<!-- Blog Area Start -->
    <div class="roberto-news-area section-padding-100-0">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">   
                    
                    <div style="text-align: center;margin-bottom: 50px;" ><a style="background-color: #f1e3c4;color: #524b42;font-size: 40px;">문의하기</a></div>
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
                                <textarea name="message" class="form-control mb-30" style="width: 700px;height: 500px;" placeholder="내용을 입력해주세요"></textarea>
                            </div>
                        </tr>
                        <tr>
                            <div class="col-12 text-center fadeInUp" data-wow-delay="100ms">
                                <button type="submit" class="btn roberto-btn mt-15" style="background-color: #524b42;">등록</button>
                            </div>
                        </tr>
                    </table>
                </form>

                    <!-- Leave A Reply -->
                    
                   
                </div>

                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="roberto-sidebar-area pl-md-4">
                        <!-- Newsletter -->
                        <div class="single-widget-area mb-100">
                            <div class="newsletter-form">
                                <h5>문의 게시판</h5>
                                <div style="background-color:  #524b42;" >
                                    <i class="fa fa-arrow-left" style="color: white;" aria-hidden="true"></i>                                    
                                    <a style="color: white;" >문의하기</a>                                    
                                </div><br>
                                <div>
                                    <a href=""> - 게시판</a>
                            
                                </div>                                
                            </div>
                            <br>
                            
                        </div>
                       
                        <!-- Recent Post -->
                        
                </div>
            </div>
        </div>
    </div>
    <!-- Blog Area End -->
    </div>
    <br>
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