<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>BigGuyGear - Admin Login</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/admin/assets/imgs/theme/favicon.svg">
    <!-- Template CSS -->
    <link href="${pageContext.request.contextPath}/resources/admin/assets/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <main>
        <section class="content-main pt-200">
            <div class="card mx-auto card-login">
                <div class="card-body">
                    <h4 class="card-title mb-4">Sign in</h4>
                    <form>
                        <div class="mb-3">
                            <input class="form-control" placeholder="Username or email" type="text">
                        </div> <!-- form-group// -->
                        <div class="mb-3">
                            <input class="form-control" placeholder="Password" type="password">
                        </div> <!-- form-group// -->
                        <div class="mb-3">
                            <a href="#" class="float-end font-sm text-muted">Forgot password?</a>
                            <label class="form-check">
                                <input type="checkbox" class="form-check-input" checked="">
                                <span class="form-check-label">Remember</span>
                            </label>
                        </div> <!-- form-group form-check .// -->
                        <div class="mb-4">
                            <button type="submit" class="btn btn-primary w-100"> Login </button>
                        </div> <!-- form-group// -->
                    </form>
                </div>
            </div>
        </section>
        <footer class="main-footer text-center">
            <p class="font-xs">
                <script>
                document.write(new Date().getFullYear())
                </script> ©, Nguyen Manh Phu
            </p>
            <p class="font-xs mb-30">All rights reserved</p>
        </footer>
    </main>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery.fullscreen.min.js"></script>
    <!-- Main Script -->
    <script src="${pageContext.request.contextPath}/resources/admin/assets/js/main.js" type="text/javascript"></script>
</body>

</html>