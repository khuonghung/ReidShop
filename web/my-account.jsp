<%-- 
    Document   : my-account
    Created on : Oct 17, 2021, 8:31:21 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Reid - my account</title>
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

        <!-- Main Wrapper Start -->
        <!--Offcanvas menu area start-->
        <div class="off_canvars_overlay">

        </div>
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
                                <li>my account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!-- my account start  -->
        <section class="main_content_area">
            <div class="container">   
                <div class="account_dashboard">
                    <div class="row">
                        <div class="col-sm-12 col-md-3 col-lg-3">
                            <!-- Nav tabs -->
                            <div class="dashboard_tab_button">
                                <ul role="tablist" class="nav flex-column dashboard-list">
                                    <li><a href="#account-details" data-toggle="tab" class="nav-link">T??i kho???n c???a t??i</a></li>
                                    <li> <a href="#orders" data-toggle="tab" class="nav-link">????n h??ng</a></li>
                                    <li><a href="user?action=logout" class="nav-link">????ng xu???t</a></li>
                                </ul>
                            </div>    
                        </div>
                        <div class="col-sm-12 col-md-9 col-lg-9">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade" id="orders">
                                    <h3>????n h??ng</h3>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>M?? ????n h??ng</th>
                                                    <th>Ng??y kh???i t???o</th>
                                                    <th>H??nh th???c GD</th>
                                                    <th>?????a ch???</th>
                                                    <th>T???ng ????n</th>
                                                    <th>Actions</th>	 	 	 	
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${bill}" var="b">
                                                <tr>
                                                    <td>${b.bill_id}</td>
                                                    <td>${b.date}</td>
                                                    <td><span class="success">${b.payment}</span></td>
                                                    <td>${b.address}</td>
                                                    <td>${b.total}</td>
                                                    <td><a href="user?action=showdetail&bill_id=${b.bill_id}" class="view">view</a></td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade show active" id="account-details">
                                    <h3>T??i kho???n c???a t??i </h3>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <form action="user?action=updateinfo" method="POST">
                                                    <label>T??n ng?????i d??ng</label>
                                                    <input type="text" name="user_name" value="${sessionScope.user.user_name}">
                                                    <label>Email</label>
                                                    <input type="text" readonly name="user_email" value="${sessionScope.user.user_email}">
                                                    <label>Password</label>
                                                    <input type="password" name="user_pass" value="${sessionScope.user.user_pass}">
                                                    <div class="cart_submit">
                                                        <button type="submit">save</button>
                                                    </div> 
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>        	
        </section>			
        <!-- my account end   --> 
        <!--footer area start-->
        <jsp:include page="layout/footer.jsp"/>
        <!--footer area end-->

        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>



    </body>

</html>
