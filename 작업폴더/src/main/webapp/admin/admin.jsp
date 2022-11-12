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

    <title>ADMIN</title>
    
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="admin.jsp">ADMIN</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->

    </nav>

    <div id="layoutSidenav">
        <!------------------------ 사이드바---------------------------->
        <div id="layoutSidenav_nav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <hr>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                관리 테이블
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                                data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link " href="${pageContext.request.contextPath }/admin/AdminMemberList.ad">
                                        회원정보	
                                    </a>

                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath }/admin/AdminSalesList.ad">
                                        매출정보
                                    </a>
                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath }/admin/AdminRoomList.ad">
										객실정보
									</a>
                                    <a class="nav-link collapsed" href="/admin/room_add.jsp">
										객실등록
									</a>
                                </nav>
                            </div>
                            <a class="nav-link" href="${pageContext.request.contextPath }/admin/AdminReservationList.ad">
                                <div class="sb-nav-link-icon"><i class="fas fa-bars"></i></div>
                                예약 목록
                            </a>
                            <a class="nav-link" href="../login/index.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                메인 홈페이지
                            </a>
                            <hr>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                ADMIN 모드 종료
                            </a>
                        </div>
                    </div>

                </nav>
            </div>
        </div>
        <!------------------------ 사이드바 --------------------------->

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">ADMIN</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">management</li>
                    </ol>
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">회원정보</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">회원 수</a>
                                    <div class="small text-white">숫자</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">객실정보</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">객실 수</a>
                                    <div class="small text-white">숫자</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">예약목록</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">예약 인원 수</a>
                                    <div class="small text-white">숫자</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-area me-1"></i>
                                    전체 회원
                                </div>
                                <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                        
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-bar me-1"></i>
                                    예약 내역
                                </div>
                                <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xl-12">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                매출액
                            </div>
                            <div class="card-body"><canvas id="myAAreaChart" width="100%" height="20"></canvas></div>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            예약내역
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>고객명</th>
                                        <th>객실명</th>
                                        <th>체크인</th>
                                        <th>체크아웃</th>
                                        <th>금액</th>
                                        <th></th>
                                    </tr>
                                </thead>
                               
                                <tbody>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>
                                            <input type="button" value="수정">
                                            &nbsp;&nbsp;
                                            <input type="button" value="삭제">
                                        </td>                                   
                                     </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            예약취소내역
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple2">
                                <thead>
                                    <tr>
                                        <th>고객명</th>
                                        <th>객실명</th>
                                        <th>체크인</th>
                                        <th>체크아웃</th>
                                        <th>금액</th>
                                        <th></th>
                                    </tr>
                                </thead>
                               
                                <tbody>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>
                                            <input type="button" value="수정">
                                            &nbsp;&nbsp;
                                            <input type="button" value="삭제">
                                        </td>                                   
                                     </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            
        </div>
    </div>

    <br>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="js/chart-area-demo.js"></script>
    <script src="js/chart-area-demo2.js"></script>
    <script src="js/chart-bar-demo.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script> -->
    <script src="js/simple-datatables.js" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    <script src="js/datatables-simple-demo2.js"></script>
</body>

</html>