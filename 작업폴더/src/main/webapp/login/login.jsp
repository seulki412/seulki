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
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../header.css">
   
    <link rel="stylesheet" href="../join/css/login.css">
</head>

<body>
    <%@ include file="/header_footer/header.jsp" %>

    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/16.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2 class="page-title">로그인</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">로그인</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>

    <div style="margin: auto; " class="login-wrapper">
        <h2>로그인</h2>
         사이트에 오신 것을 환영합니다. <br>
         로그인 아이디와 비밀번호를 입력해 주시기 바랍니다.
        <br>
        <form action="" method="post" class="login-form">                            
                    아이디<input type="text" placeholder="아이디를 입력하세요">
                    비밀번호<input type="password" placeholder="비밀번호를 입력하세요">                
                <label for="remember-check">
                    <input type="checkbox">아이디 저장하기
                </label>
                    <input type="submit" value="로그인"> 
                    <input type="button" value="회원가입" onclick="location.href='join.html'">               
        </form>
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