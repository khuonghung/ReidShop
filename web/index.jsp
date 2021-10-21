<%-- 
    Document   : index
    Created on : Oct 17, 2021, 8:28:36 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>My Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
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
    <div class="offcanvas_menu">
        <div class="canvas_open">
                        <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
                    </div>
        <div class="offcanvas_menu_wrapper">
                        <div class="canvas_close">
                              <a href="javascript:void(0)"><i class="ion-android-close"></i></a>  
                        </div>
                        <div class="welcome_text">
                           <ul>
                               <li><span>Giao hàng miễn phí: </span>Hãy tận dụng thời gian của chúng tôi để lưu lại sự kiện </li>
                               <li><span>Trả hàng miễn phí: </span> Đảm bảo sự hài lòng</li>
                           </ul>
                        </div>
                        <div class="top_right">
                            <ul>
                               <li class="top_links"><a href="#">Tài Khoản của tôi <i class="ion-chevron-down"></i></a>
                                    <ul class="dropdown_links">
                                        <li><a href="my-account.jsp">Tài khoản</a></li>
                                        <li><a href="login.jsp">Đăng nhập</a></li>
                                        <li><a href="#">Quản lý</a></li>
                                    </ul>
                                </li> 
                            </ul>
                        </div> 
                        <div class="search_bar">
                            <form action="#">
                                <input placeholder="Tìm kiếm..." type="text">
                                <button type="submit"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div>
                        <div class="cart_area">
                            <div class="cart_link">
                                <a href="#"><i class="fa fa-shopping-basket"></i>2 sản phẩm</a>
                                <!--mini cart-->
                                 <div class="mini_cart">
                                    <div class="cart_item top">
                                       <div class="cart_img">
                                           <a href="#"><img src="assets/img/s-product/product.jpg" alt=""></a>
                                       </div>
                                        <div class="cart_info">
                                            <a href="#">Apple iPhone SE 16GB</a>

                                            <span>1x $60.00</span>
    
                                        </div>
                                        <div class="cart_remove">
                                            <a href="#"><i class="ion-android-close"></i></a>
                                        </div>
                                    </div>
                                    <div class="cart_item bottom">
                                       <div class="cart_img">
                                           <a href="#"><img src="assets/img/s-product/product2.jpg" alt=""></a>
                                       </div>
                                        <div class="cart_info">
                                            <a href="#">Marshall Portable  Bluetooth</a>
                                                <span> 1x $160.00</span>
                                        </div>
                                        <div class="cart_remove">
                                            <a href="#"><i class="ion-android-close"></i></a>
                                        </div>
                                    </div>
                                    <div class="cart__table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="text-left">Tổng cộng  :</td>
                                                    <td class="text-right">$184.00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                    <div class="cart_button view_cart">
                                        <a href="cart.jsp">Giỏ hàng</a>
                                    </div>
                                    <div class="cart_button checkout">
                                        <a href="checkout.jsp">Thanh toán</a>
                                    </div>
                                </div>
                                <!--mini cart end-->
                            </div>
                        </div>
                        <div id="menu" class="text-left ">
                            <ul class="offcanvas_main_menu">
                                <li class="active">
                                    <a href="index.jsp">Trang chủ</a>
                                </li>
                                <li class="active">
                                    <a href="shop_category.jsp">Sản phẩm</a>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="about.jsp">Chúng tôi</a>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="contact.jsp">Liên hệ</a> 
                                </li>
                            </ul>
                        </div>
                        <div class="offcanvas_footer">
                            <span><a href="#"><i class="fa fa-envelope-o"></i> khuonghung1423@gmail.com</a></span>
                            <ul>
                                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
    </div>
    <!--Offcanvas menu area end-->
    
    <!--header area start-->
    <header class="header_area header_three">
        <!--header top start-->
        <div class="header_top">
            <div class="container-fluid">   
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-12">
                        <div class="welcome_text">
                            <ul>
                                <li><span>Giao hàng miễn phí:</span>Hãy tận dụng thời gian của chúng tôi để lưu lại sự kiện </li>
                                <li><span>Trả hàng miễn phí</span> Đảm bảo sự hài lòng</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <div class="top_right text-right">
                            <ul>
                               <li class="top_links"><a href="#">Tài khoản của tôi<i class="ion-chevron-down"></i></a>
                                    <ul class="dropdown_links">
                                        <li><a href="my-account.html">Tài khoản của tôi</a></li>
                                        <li><a href="#">Đăng nhập</a></li>
                                        <li><a href="#">Quản lý</a></li>
                                    </ul>
                                </li> 
                            </ul>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
        <!--header top start-->

        <!--header middel start-->
        <div class="header_middel">
            <div class="container-fluid">
                <div class="middel_inner">
                    <div class="row align-items-center">
                        <div class="col-lg-4">
                            <div class="search_bar">
                                <form action="#">                          
                                    <input placeholder="Tìm kiếm..." type="text">
                                    <button type="submit"><i class="ion-ios-search-strong"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="logo">
                                <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="cart_area">
                                <div class="cart_link">
                                    <a href="#"><i class="fa fa-shopping-basket"></i>2 sản phẩm</a>
                                    <!--mini cart-->
                                     <div class="mini_cart">
                                        <div class="cart_item top">
                                       <div class="cart_img">
                                           <a href="#"><img src="assets/img/s-product/product.jpg" alt=""></a>
                                       </div>
                                        <div class="cart_info">
                                            <a href="#">Apple iPhone SE 16GB</a>
                                            <span>1x $60.00</span>
                                        </div>
                                        <div class="cart_remove">
                                            <a href="#"><i class="ion-android-close"></i></a>
                                        </div>
                                    </div>
                                    <div class="cart_item bottom">
                                       <div class="cart_img">
                                           <a href="#"><img src="assets/img/s-product/product2.jpg" alt=""></a>
                                       </div>
                                        <div class="cart_info">
                                            <a href="#">Marshall Portable  Bluetooth</a>
                                                <span> 1x $160.00</span>
                                        </div>
                                        <div class="cart_remove">
                                            <a href="#"><i class="ion-android-close"></i></a>
                                        </div>
                                    </div>
                                    <div class="cart__table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="text-left">Tổng đơn:</td>
                                                    <td class="text-right">$184.00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                    <div class="cart_button view_cart">
                                        <a href="cart.html">Giỏ hàng</a>
                                    </div>
                                    <div class="cart_button checkout">
                                        <a href="checkout.html">Thanh toán</a>
                                    </div>
                                    </div>
                                    <!--mini cart end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="horizontal_menu">
                    <div class="left_menu">
                        <div class="main_menu"> 
                            <nav>  
                                <ul>
                                    <li><a href="index.jsp">Trang chủ<i class="fa"></i></a>
                                    </li>
                                    <li class="mega_items"><a href="shop_category.jsp">Sản phẩm</a>
                                    </li>
                                </ul> 
                            </nav> 
                        </div>
                    </div>
                    <div class="right_menu">
                        <div class="main_menu"> 
                            <nav>  
                                <ul>
                                    <li><a href="about.jsp">Chúng tôi</a></li>
                                    <li><a href="contact.jsp">Liên hệ</a></li>
                                </ul> 
                            </nav> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header middel end-->

        <!--header bottom satrt-->
        <div class="header_bottom sticky-header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="main_menu_inner">
                            <div class="main_menu"> 
                                <nav>  
                                    <ul>
                                        <li class="active"><a href="index.html">Trang chủ</a></li>
                                        <li><a href="shop_category.html">Của hàng</a></li>
                                        <li><a href="about.html">Chúng tôi</a></li>
                                        <li><a href="contact.html">Liên hệ</a></li>
                                    </ul>   
                                </nav> 
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <!--header bottom end-->
    </header>
    <!--header area end-->

    <!--slider area start-->
    <div class="slider_area slider_style home_three_slider owl-carousel">
        <div class="single_slider" data-bgimg="assets/img/slider/slider4.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="slider_content content_one">
                            <img src="assets/img/slider/content3.png" alt="">
                            <p>the wooboom clothing summer collection is back at half price</p>
                            <a href="shop.html">Discover Now</a>
                        </div>    
                    </div>
                </div>
            </div>    
        </div>
        <div class="single_slider" data-bgimg="assets/img/slider/slider5.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="slider_content content_two">
                            <img src="assets/img/slider/content4.png" alt="">
                            <p>the wooboom clothing summer collection is back at half price</p>
                            <a href="shop.html">Discover Now</a>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider" data-bgimg="assets/img/slider/slider6.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="slider_content content_three">
                            <img src="assets/img/slider/content5.png" alt="">
                            <p>the wooboom clothing summer collection is back at half price</p>
                            <a href="shop.html">Discover Now</a>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--slider area end-->

    <!--banner area start-->
    <div class="banner_section banner_section_three">
        <div class="container-fluid">
            <div class="row ">
               <div class="col-lg-4 col-md-6">
                    <div class="banner_area">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="assets/img/bg/banner8.jpg" alt="#"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="banner_area">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="assets/img/bg/banner9.jpg" alt="#"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="banner_area bottom">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="assets/img/bg/banner10.jpg" alt="#"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    <!--product section area start-->
    <section class="product_section womens_product bottom">
        <div class="container">
            <div class="row">   
                <div class="col-12">
                   <div class="section_title">
                       <h2>Sản phẩm của chúng tôi</h2>
                       <p>Sản phẩm mới nhất</p>
                   </div>
                </div> 
            </div>    
            <div class="product_area"> 
                 <div class="row">
                    <div class="product_carousel product_three_column4 owl-carousel">
                        <div class="col-lg-3">
                            <div class="single_product">
                                <div class="product_thumb">
                                    <a class="primary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                    <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product22.jpg" alt=""></a>

                                    <div class="quick_button">
                                        <a href="#" title="quick_view">Xem sản phẩm</a>
                                    </div>

                                    <div class="product_sale">
                                        <span>-20%</span>
                                    </div>
                                </div>
                                <div class="product_content">
                                    <h3><a href="product-details.html">Giày thể thao</a></h3>
                                    <span class="current_price">300.000</span>
                                    <span class="old_price">420.000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               
        </div>
    </section>
    <!--banner area start-->
    <section class="banner_section banner_section_three">
        <div class="container-fluid">
            <div class="row ">
               <div class="col-lg-6 col-md-6">
                    <div class="banner_area">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="assets/img/bg/banner11.jpg" alt="#"></a>
                            <div class="banner_content">
                               <h1>Handbag <br> Men’s Collection</h1>
                                <a href="shop.html">Discover Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="banner_area">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="assets/img/bg/banner12.jpg" alt="#"></a>
                            <div class="banner_content">
                               <h1>Sneaker <br> Men’s Collection</h1>
                                <a href="shop.html">Discover Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--banner area end-->
    
    <!--product section area start-->
    <section class="product_section womens_product bottom">
        <div class="container">
            <div class="row">   
                <div class="col-12">
                   <div class="section_title">
                       <h2>Sản phẩm thịnh hành</h2>
                       <p>Sản phẩm ấn tượng và bán chạy nhất</p>
                   </div>
                </div> 
            </div>    
            <div class="product_area"> 
                 <div class="row">
                    <div class="product_carousel product_three_column4 owl-carousel">
                        <div class="col-lg-3">
                            <div class="single_product">
                                <div class="product_thumb">
                                    <a class="primary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                    <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product22.jpg" alt=""></a>

                                    <div class="quick_button">
                                        <a href="#" title="quick_view">Xem sản phẩm</a>
                                    </div>

                                    <div class="product_sale">
                                        <span>-20%</span>
                                    </div>
                                </div>
                                <div class="product_content">
                                    <h3><a href="product-details.html">Giày thể thao</a></h3>
                                    <span class="current_price">300.000</span>
                                    <span class="old_price">420.000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               
        </div>
    </section>
    <!--product section area end-->
    <!--footer area start-->
    <footer class="footer_widgets">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="widgets_container contact_us">
                            <h3>Liên hệ chúng tôi</h3>
                            <div class="footer_contact">
                                <p>Address: Số nhà 232, đường Trần Hưng Đạo , phường Thanh Bình, thành phố Ninh Bình</p>
                                <p>Phone: <a href="tel:+(+84)888195313">(+84) 888195313</a> </p>
                                <p>Email: <a href="mailto:khuonghung1423@gmail.com">khuonghung1423@gmail.com</a></p>
                                <ul>
                                    <li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" title="google-plus"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" title="youtube"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                              
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="widgets_container newsletter">
                            <h3>Nhận những thông tin sản phẩm mới </h3>
                            <div class="newleter-content">
                                <p>Chất lượng tạo nên thương hiệu !</p>
                                 <div class="subscribe_form">
                                    <form id="mc-form" class="mc-form footer-newsletter" >
                                        <input id="mc-email" type="email" autocomplete="off" placeholder="Enter you email address here..." />
                                        <button id="mc-submit">Đăng ký</button>
                                    </form>
                                    <!-- mailchimp-alerts Start -->
                                    <div class="mailchimp-alerts text-centre">
                                        <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                                        <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                                        <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                                    </div><!-- mailchimp-alerts end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!--footer area end-->
<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>



</body>

</html>
