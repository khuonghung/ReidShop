<%-- 
    Document   : shop_category
    Created on : Oct 17, 2021, 8:32:29 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop category</title>
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
        <div class="off_canvars_overlay"></div>
        <jsp:include page="layout/menu.jsp"/>

        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="home">home</a></li>
                                <li>/</li>
                                <li>shop</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--shop  area start-->
        <div class="shop_area shop_reverse">
            <div class="container">
                <div class="shop_inner_area">
                    <div class="row">
                        <div class="col-lg-3 col-md-12">
                            <!--sidebar widget start-->
                            <div class="sidebar_widget">
                                <div class="widget_list widget_categories">
                                    <h2>Product categories</h2>
                                    <ul>
                                        <li><a href="product">Tất cả</a></li>
                                        <c:forEach items="${CategoryData}" var="c">
                                            <li><a href="product?action=listByCategory&category_id=${c.category_id}">${c.category_name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <!--sidebar widget end-->
                        </div>
                        <div class="col-lg-9 col-md-12">
                            <!--shop wrapper start-->
                            <!--shop toolbar start-->
                            <div class="shop_title">
                                <h1>shop</h1>
                            </div>
<!--                            <div class="shop_toolbar_wrapper">
                                <div class=" niceselect_option">

                                    <form class="select_option" action="#">
                                        <select name="orderby" id="short">
                                            <option selected value="1">Sort by average rating</option>
                                            <option  value="2">Sort by popularity</option>
                                            <option value="3">Sort by newness</option>
                                            <option value="4">Sort by price: low to high</option>
                                            <option value="5">Sort by price: high to low</option>
                                            <option value="6">Product Name: Z</option>
                                        </select>
                                    </form>


                                </div>
                                <div class="page_amount">
                                    <p>Showing 1–9 of 21 results</p>
                                </div>
                            </div>-->
                            <!--shop toolbar end-->

                            <div class="row shop_wrapper">
                                <c:forEach items="${ProductData}" var="p">
                                    <div class="col-lg-4 col-md-4 col-12 ">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="product-details.html"><img src="${p.img}" alt=""></a>

                                                <div class="quick_button">
                                                    <a href="product-details.html"title="quick_view">Xem sản phẩm</a>
                                                </div>
                                            </div>

                                            <div class="product_content grid_content">
                                                <h3><a href="product-details.html">${p.product_name}</a></h3>
                                                <span class="current_price">${p.product_price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <c:set var="page" value="${page}"/>
                            <div class="shop_toolbar t_bottom">
                                <div class="pagination">
                                    <ul>
                                        <c:forEach begin="${1}" end="${num}" var="i">
                                            <li class="${i==page?"current":""}"><a href="product?page=${i}">${i}</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   

            </div>
        </div>
        <!--shop  area end-->

        <!--footer area start-->
        <jsp:include page="layout/footer.jsp"/>
        <!--footer area end-->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
    </body>

</html>