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
                
                <div style="text-align: center;margin-bottom: 50px;" ><a style="background-color: #f1e3c4;color: #524b42;font-size: 40px;">문의 목록</a></div>
                <div>
                    <table style="width: 900px;border: 1px;">
                        <tr align="center" valign="middle">
                            <td><h3></h3></td>
                        </tr>
                        <tr align="right" valign="middle">
                            <td>글 개수 : 개</td>
                        </tr>
                    </table>
                    <table border="1" style="border-collapse: collapse;border-spacing: 0;width: 700px;" >
                        <tr align="center" valign="middle">
                            <th width="8%">번호</th>
                            <th width="50%">제목</th>
                            <th width="15%">작성자</th>
                            <th width="17%">날짜</th>
                            <th width="10%">조회수</th>
                        </tr>
                        <tr align="center" valign="middle" >
                            <td height="23px"></td>
                            <td height="23px"></td>
                            <td height="23px"></td>
                            <td height="23px"></td>
                            <td height="23px"></td>
                        </tr>
                        <tr style="height: 50px;">
                            <td colspan="5" style="text-align:center;" >등록된 게시물이 없습니다.</td>
                        </tr>                            
                    </table>
                    <br>
                    <!-- 페이징 처리 -->
                    <table style="border:0px; width:900px;">
                        <tr align="left" valign="middle" >
                            <td>
                                <a href="" ><</a>
                                <a href="" >1</a>
                                <a href="" >2</a>
                                <a href="" >3</a>
                                <a href="">></a>
                            </td>
                        </tr>
                    </table>
                    
                    <table style="border: 0px;width: 900px; ">
                        <tr align="center" valign="middle">
                            <td><a href="">[글쓰기]</a></td>
                        </tr>
                    </table>
                </div>

                <!-- Leave A Reply -->
                
               
            </div>
                    
                   
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