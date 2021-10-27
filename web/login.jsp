<%-- 
    Document   : login
    Created on : Oct 17, 2021, 8:30:52 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS 
        ========================= -->
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>
        <div class="off_canvars_overlay"></div>
        <jsp:include page="layout/menu.jsp"/>
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area other_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="home">home</a></li>
                                <li>/</li>
                                <li>Đăng nhập</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!-- customer login start -->
        <div class="customer_login">
            <div class="container">
                <div class="row">
                    <!--login area start-->
                    <div class="col-lg-6 col-md-6">
                        <div class="account_form">
                            <h2>Đăng nhập</h2>
                            <c:set var="cookie" value="${pageContext.request.cookies}"/>
                                <form action="user?action=checkLogin" method="POST">
                                    <p style="color: red; align-content: center;">
                                        ${requestScope.error}
                                    </p>
                                    <p>   
                                        <label>Email <span>*</span></label>
                                        <input name="user_email" type="text" value="${cookie.email.value}">
                                    </p>
                                    <p>   
                                        <label>Mật khẩu <span>*</span></label>
                                        <input name="user_pass" type="password" value="${cookie.pass.value}">
                                    </p>   
                                    <div class="login_submit">
                                        <a href="#">Quên mật khẩu</a>
                                        <label for="remember">
                                            <input ${(cookie.rem.value eq 'ON')?"checked":""} id="remember" name="remember" value="ON" type="checkbox">
                                            Remember me
                                        </label>
                                        <button type="submit">Đăng nhập</button>

                                    </div>

                                </form>
                        </div>    
                    </div>
                    <!--login area start-->

                    <!--register area start-->
                    <div class="col-lg-6 col-md-6">
                        <div class="account_form register">
                            <h2>Đăng ký</h2>
                            <form action="user?action=signup" method="POST">
                                <p style="color: red; align-content: center;">
                                        ${requestScope.error_pass}
                                </p>
                                <p style="color: blue; align-content: center;">
                                        ${requestScope.done}
                                </p>
                                <p style="color: red; align-content: center;">
                                        ${requestScope.emailavailable}
                                </p>
                                <p>   
                                    <label>Email <span>*</span></label>
                                    <input type="email" name="user_email">
                                </p>
                                <p>   
                                    <label>Mật khẩu <span>*</span></label>
                                    <input type="password" name="user_pass">
                                </p>
                                <p>   
                                    <label>Nhập lại mật khẩu <span>*</span></label>
                                    <input type="password" name="re_pass">
                                </p>
                                <div class="login_submit">
                                    <button type="submit">Đăng ký</button>
                                </div>
                            </form>
                        </div>    
                    </div>
                    <!--register area end-->
                </div>
            </div>    
        </div>
        <!-- customer login end -->

        <!--footer area start-->
        <jsp:include page="layout/footer.jsp"/>
        <!--footer area end-->

        <!-- JS
        ============================================ -->


        <!--map js code here-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdWLY_Y6FL7QGW5vcO3zajUEsrKfQPNzI"></script>
        <script  src="https://www.google.com/jsapi"></script>
        <script src="assets/js/map.js"></script>


        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>



    </body>

</html>
