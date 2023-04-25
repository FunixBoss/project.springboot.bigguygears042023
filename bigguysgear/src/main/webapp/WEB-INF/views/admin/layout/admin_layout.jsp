<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>BigGuyGear - ${title}</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery-3.6.0.min.js"></script>
    
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/admin/assets/imgs/theme/favicon.svg">
    <!-- Template CSS -->
    <link href="${pageContext.request.contextPath}/resources/admin/assets/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="screen-overlay"></div>
    <aside class="navbar-aside" id="offcanvas_aside">
        <div class="aside-top">
            <a href="/admin/dashboard" class="brand-wrap">
                <img src="${pageContext.request.contextPath}/resources/admin/assets/imgs/theme/logo.svg" class="logo" alt="Evara Dashboard">
            </a>
            <div>
                <button class="btn btn-icon btn-aside-minimize"> <i class="text-muted material-icons md-menu_open"></i> </button>
            </div>
        </div>
        <nav>
            <ul class="menu-aside">
                <li class="menu-item active">
                    <a class="menu-link" href="/admin/dashboard"> <i class="icon material-icons md-home"></i>
                        <span class="text">Dashboard</span>
                    </a>
                </li>
                <li class="menu-item has-submenu">
                    <a class="menu-link" href="#"> 
                    	<i class="icon material-icons md-shopping_bag"></i>
                        <span class="text">Products</span>
                    </a>
                    <div class="submenu">
                        <a href="/admin/product?page=1">Product List</a>
                        <a href="/admin/product/product-grid?page=1">Product Grid</a>
                        <a href="/admin/product/add">Add a Product</a>
                        <a href="/admin/product/category">Categories</a>
                        <a href="/admin/product/brand">Brands</a>
                        <a href="/admin/product/coupon">Coupon</a>
                    </div>
                </li>
                <li class="menu-item">
                    <a class="menu-link" href="/admin/review"> <i class="icon material-icons md-comment"></i>
                        <span class="text">Reviews</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a class="menu-link" href="/admin/order"> <i class="icon material-icons md-comment"></i>
                        <span class="text">Orders</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a class="menu-link" href="/admin/invoice"> <i class="icon material-icons md-pie_chart"></i>
                        <span class="text">Invoices</span>
                    </a>
                </li>
                <li class="menu-item has-submenu">
                    <a class="menu-link" href="#"> <i class="icon material-icons md-person"></i>
                        <span class="text">Account</span>
                    </a>
                    <div class="submenu">
                        <a href="/admin/account">Account List</a>
                        <a href="/admin/account/add">Add a Account</a>
                        
                    </div>
                </li>
            </ul>
            <hr>
            <li class="menu-item active">
                <a class="menu-link" href="/admin/profile-setting"> <i class="icon material-icons md-settings"></i>
                    <span class="text">Profile Setting</span>
                </a>
            </li>
            <br>
            <br>
        </nav>
    </aside>
    <main class="main-wrap">
    	<header class="main-header navbar">
		    <div class="col-search">
		        
		    </div>
		    <div class="col-nav">
		        <button class="btn btn-icon btn-mobile me-auto" data-trigger="#offcanvas_aside"> <i class="material-icons md-apps"></i> </button>
		        <ul class="nav">
		            <li class="nav-item">
		                <a class="nav-link btn-icon darkmode" href="#"> <i class="material-icons md-nights_stay"></i> </a>
		            </li>
		            <li class="nav-item">
		                <a href="#" class="requestfullscreen nav-link btn-icon"><i class="material-icons md-cast"></i></a>
		            </li>
		            <li class="dropdown nav-item">
		                <a class="dropdown-toggle" data-bs-toggle="dropdown" href="#" id="dropdownAccount" aria-expanded="false"> <img class="img-xs rounded-circle" src="${pageContext.request.contextPath}/resources/admin/assets/imgs/people/avatar2.jpg" alt="User"></a>
		                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownAccount">
		                    <a class="dropdown-item" href="/admin/profile-setting"><i class="material-icons md-perm_identity"></i>Profile</a>
		                    <div class="dropdown-divider"></div>
		                    <a class="dropdown-item text-danger" href="#"><i class="material-icons md-exit_to_app"></i>Logout</a>
		                </div>
		            </li>
		        </ul>
		    </div>
		</header>
        <jsp:include page="${page }"></jsp:include>
        <footer class="main-footer font-xs">
            <div class="row pb-30 pt-15">
                <div class="col-sm-6">
                    <script>
                    document.write(new Date().getFullYear())
                    </script> © Nguyen Manh Phu
                </div>
                <div class="col-sm-6">
                    <div class="text-sm-end">
                        All rights reserved
                    </div>
                </div>
            </div>
        </footer>
    </main>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery.fullscreen.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/chart.js"></script>
    <!-- Main Script -->
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/main.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/custom-chart.js" type="text/javascript"></script>
    <script type="text/javascript">
	 // Get the current page URL
	    const currentUrl = window.location.pathname;

	    // Find all <a> elements within the <nav> element
	    const links = document.querySelectorAll('nav a');
	
	    // Loop through each link and add the "active" class if its href matches the current page URL
	    links.forEach(link => {
	      if (link.getAttribute('href').indexOf(currentUrl) > -1) {
	        link.closest("li").classList.add('active');
	      } else {
		    link.parentElement.classList.remove('active');

	      }
	    });
    </script>
</body>

</html>

