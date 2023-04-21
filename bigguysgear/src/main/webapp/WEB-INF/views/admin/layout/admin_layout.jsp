<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Nguyen Manh Phu">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/favicon.png" type="image/x-icon">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/favicon.png" type="image/x-icon">
        <title>Big Guy Gear - Dashboard</title>
        <!-- Google font-->
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,500;1,600;1,700;1,800;1,900&amp;display=swap">
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap">
        <!-- Font Awesome-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/font-awesome.css">
        <!-- Flag icon-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/flag-icon.css">
        <!-- ico-font-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/icofont.css">
        <!-- Prism css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/prism.css">
        <!-- Chartist css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/chartist.css">
        <!-- Bootstrap css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/vendors/bootstrap.css">
        <!-- App css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin/assets/css/style.css">
    </head>
    <body>
        <!-- page-wrapper Start-->
        <div class="page-wrapper">
            <!-- Page Header Start-->
            <div class="page-main-header">
                <div class="main-header-right row">
                    <div class="main-header-left d-lg-none w-auto">
                        <div class="logo-wrapper">
                            <a href="/admin">
                            <img class="blur-up lazyloaded d-block d-lg-none"
                                src="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/multikart-logo-black.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="mobile-sidebar w-auto">
                        <div class="media-body text-end switch-sm">
                            <label class="switch">
                            <a href="javascript:void(0)">
                            <i id="sidebar-toggle" data-feather="align-left"></i>
                            </a>
                            </label>
                        </div>
                    </div>
                    <div class="nav-right col">
                        <ul class="nav-menus">
                            <li>
                                <a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()">
                                <i data-feather="maximize-2"></i>
                                </a>
                            </li>
                            <li class="onhover-dropdown">
                                <div class="media align-items-center">
                                    <img class="align-self-center pull-right img-50 blur-up lazyloaded"
                                        src="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/user3.jpg" alt="header-user">
                                    <div class="dotted-animation">
                                        <span class="animate-circle"></span>
                                        <span class="main-circle"></span>
                                    </div>
                                </div>
                                <ul class="profile-dropdown onhover-show-div p-20 profile-dropdown-hover">
                                    <li>
                                        <a href="javascript:void(0)">
                                        <i data-feather="user"></i>Edit Profile
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                        <i data-feather="log-out"></i>Logout
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <div class="d-lg-none mobile-toggle pull-right">
                            <i data-feather="more-horizontal"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header Ends -->
            <!-- Page Body Start-->
            <div class="page-body-wrapper">
                <!-- Page Sidebar Start-->
                <div class="page-sidebar">
                    <div class="main-header-left d-none d-lg-block">
                        <div class="logo-wrapper">
                            <a href="/admin">
                            <img class="d-none d-lg-block blur-up lazyloaded"
                                src="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/multikart-logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="sidebar custom-scrollbar">
                        <a href="javascript:void(0)" class="sidebar-back d-lg-none d-block"><i class="fa fa-times"
                            aria-hidden="true"></i></a>
                        <div class="sidebar-user">
                            <img class="img-60" src="${pageContext.request.contextPath}/resources/admin/assets/images/dashboard/user3.jpg" alt="#">
                            <div>
                                <h6 class="f-14">JOHN</h6>
                                <p>general manager.</p>
                            </div>
                        </div>
                        <ul class="sidebar-menu">
                            <li>
                                <a class="sidebar-header" href="/admin">
                                <i data-feather="home"></i>
                                <span>Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)">
                                <i data-feather="box"></i>
                                <span>Categories</span>
                                <i class="fa fa-angle-right pull-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="/admin/category">
                                        <i class="fa fa-circle"></i>
                                        <span>Category List</span>
                                        <i class="fa fa-circle"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/admin/category/add">
                                        <i class="fa fa-circle"></i>Add Category
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)">
                                <i data-feather="box"></i>
                                <span>Products</span>
                                <i class="fa fa-angle-right pull-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="/admin/product">
                                        <i class="fa fa-circle"></i>Product List</a>
                                    </li>
                                    <li>
                                        <a href="/admin/product/add">
                                        <i class="fa fa-circle"></i>Add Product
                                        </a>
                                    </li>
                                    <li>
                                        <a href=/admin/product/review>
                                        <i class="fa fa-circle"></i>
                                        <span>product Review</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)">
                                <i data-feather="archive"></i>
                                <span>Orders</span>
                                <i class="fa fa-angle-right pull-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="/admin/order">
                                        <i class="fa fa-circle"></i>
                                        <span>Order List</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/admin/order-tracking">
                                        <i class="fa fa-circle"></i>
                                        <span>Order Tracking</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)">
                                <i data-feather="tag"></i>
                                <span>Coupons</span>
                                <i class="fa fa-angle-right pull-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="/admin/coupon">
                                        <i class="fa fa-circle"></i>List Coupons
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/admin/coupon/add">
                                        <i class="fa fa-circle"></i>Create Coupons
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)">
                                <i data-feather="user-plus"></i>
                                <span>Users</span>
                                <i class="fa fa-angle-right pull-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="/admin/customer">
                                        <i class="fa fa-circle"></i>Customer List
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/admin/customer">
                                        <i class="fa fa-circle"></i>Create Customer
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="/admin/invoice"><i
                                    data-feather="archive"></i><span>Invoice</span></a>
                            </li>
                            <li>
                                <a class="sidebar-header" href="javascript:void(0)"><i
                                    data-feather="settings"></i><span>Settings</span><i
                                    class="fa fa-angle-right pull-right"></i></a>
                                <ul class="/admin/account">
                                    <li>
                                        <a href="profile.html"><i class="fa fa-circle"></i>Profile
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="sidebar-header" href="login.html">
                                <i data-feather="log-in"></i>
                                <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Page Sidebar Ends-->
                <div class="page-body">
                <jsp:include page="${page }"></jsp:include>
                </div>
                <!-- footer start-->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 footer-copyright text-start">
                                <p class="mb-0">Copyright 2023 © Nguyen Manh Phu All rights reserved.</p>
                            </div>
                            <div class="col-md-6 pull-right text-end">
                                <p class=" mb-0">Hand crafted & made with<i class="fa fa-heart"></i></p>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- footer end-->
            </div>
        </div>
        
        
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/bootstrap.bundle.min.js"></script>
        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/icons/feather-icon/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/icons/feather-icon/feather-icon.js"></script>
        <!-- Sidebar jquery-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/sidebar-menu.js"></script>
        <!--chartist js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/chart/chartist/chartist.js"></script>
        <!--chartjs js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/chart/chartjs/chart.min.js"></script>
        <!-- lazyload js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/lazysizes.min.js"></script>
        <!--copycode js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/prism/prism.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/clipboard/clipboard.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/custom-card/custom-card.js"></script>
        <!--counter js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/counter/jquery.waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/counter/jquery.counterup.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/counter/counter-custom.js"></script>
        <!--peity chart js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/chart/peity-chart/peity.jquery.js"></script>
        <!-- Apex Chart Js -->
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <!--sparkline chart js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/chart/sparkline/sparkline.js"></script>
        <!-- Customizer admin -->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/admin-customizer.js"></script>
        <!--dashboard custom js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/dashboard/default.js"></script>
        <!--right sidebar js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/chat-menu.js"></script>
        <!--height equal js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/height-equal.js"></script>
        <!-- lazyload js-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/lazysizes.min.js"></script>
        <!--script admin-->
        <script src="${pageContext.request.contextPath}/resources/admin/assets/js/admin-script.js"></script>
    </body>
</html>