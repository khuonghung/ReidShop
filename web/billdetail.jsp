<%-- 
    Document   : cart
    Created on : Oct 17, 2021, 8:29:54 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lịch sử đơn hàng</title>
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
        <div class="breadcrumbs_area other_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="home">Trang chủ</a></li>
                                <li>/</li>
                                <li>Lịch sử đơn hàng</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!-- shopping cart area start -->
        <div class="shopping_cart_area">
            <div class="container">  
                <form> 
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product_thumb">Ảnh</th>
                                                <th class="product-price">Tên sản phẩm</th>
                                                <th class="product_quantity">Size</th>
                                                <th class="product-price">Màu</th>
                                                <th class="product_quantity">Số lượng</th>
                                                <th class="product_total">Đơn giá</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${detail}" var="d">
                                                <tr>
                                                    <td class="product_thumb"><a href="product?action=productdetail&product_id=${d.product.product_id}"><img src="${d.product.img}" alt=""></a></td>
                                                    <td class="product_name"><a href="product?action=productdetail&product_id=${i.product.product_id}">${d.product.product_name}</a></td>
                                                    <td class="product-price">${d.size}</td>
                                                    <td class="product-price">${d.color}</td>
                                                    <td class="product_quantity">${d.quantity}</td>
                                                    <td class="product_total"> <fmt:formatNumber pattern="##########" value="${d.price}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
                                </div> 
                            </div>
                        </div>
                    </div>
                </form> 
            </div>     
        </div>
        <!-- shopping cart area end -->

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