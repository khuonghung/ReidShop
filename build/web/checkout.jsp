<%-- 
    Document   : checkout
    Created on : Oct 17, 2021, 8:30:31 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Reid - checkout page</title>
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
                            <li><a href="my-account.html">Tài khoản</a></li>
                            <li><a href="login.html">Đăng nhập</a></li>
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
                                <a href="#">Marshall Portable Bluetooth</a>
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
                                        <td class="text-left">Tổng cộng :</td>
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
            <div id="menu" class="text-left ">
                <ul class="offcanvas_main_menu">
                    <li class="active">
                        <a href="index.html">Trang chủ</a>
                    </li>
                    <li class="active">
                        <a href="shop_category.html">Sản phẩm</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="about.html">Chúng tôi</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="contact.html">Liên hệ</a>
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
                                <li><span>Giao hàng miễn phí:</span>Hãy tận dụng thời gian của chúng tôi để lưu lại sự
                                    kiện </li>
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
                                                <a href="#">Marshall Portable Bluetooth</a>
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
                                    <li><a href="index.html">Trang chủ<i class="fa"></i></a>
                                    </li>
                                    <li class="mega_items"><a href="shop.html">Sản phẩm</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="right_menu">
                        <div class="main_menu">
                            <nav>
                                <ul>
                                    <li><a href="about.html">Chúng tôi</a></li>
                                    <li><a href="contact.html">Liên hệ</a></li>
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

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area other_bread">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li>/</li>
                            <li>checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--Checkout page section-->
    <div class="Checkout_section" id="accordion">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="user-actions">
                        <h3>
                            <i class="fa fa-file-o" aria-hidden="true"></i>
                            Returning customer?
                            <a class="Returning" href="#" data-toggle="collapse" data-target="#checkout_login"
                                aria-expanded="true">Click here to login</a>

                        </h3>
                        <div id="checkout_login" class="collapse" data-parent="#accordion">
                            <div class="checkout_info">
                                <p>If you have shopped with us before, please enter your details in the boxes below. If
                                    you are a new customer please proceed to the Billing & Shipping section.</p>
                                <form action="#">
                                    <div class="form_group">
                                        <label>Username or email <span>*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="form_group">
                                        <label>Password <span>*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="form_group group_3 ">
                                        <button type="submit">Login</button>
                                        <label for="remember_box">
                                            <input id="remember_box" type="checkbox">
                                            <span> Remember me </span>
                                        </label>
                                    </div>
                                    <a href="#">Lost your password?</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="user-actions">
                        <h3>
                            <i class="fa fa-file-o" aria-hidden="true"></i>
                            Returning customer?
                            <a class="Returning" href="#" data-toggle="collapse" data-target="#checkout_coupon"
                                aria-expanded="true">Click here to enter your code</a>

                        </h3>
                        <div id="checkout_coupon" class="collapse" data-parent="#accordion">
                            <div class="checkout_info">
                                <form action="#">
                                    <input placeholder="Coupon code" type="text">
                                    <button type="submit">Apply coupon</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkout_form">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <form action="#">
                            <h3>Billing Details</h3>
                            <div class="row">

                                <div class="col-lg-6 mb-20">
                                    <label>First Name <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>Last Name <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="col-12 mb-20">
                                    <label>Company Name</label>
                                    <input type="text">
                                </div>
                                <div class="col-12 mb-20">
                                    <label for="country">country <span>*</span></label>
                                    <select class="niceselect_option" name="cuntry" id="country">
                                        <option value="2">bangladesh</option>
                                        <option value="3">Algeria</option>
                                        <option value="4">Afghanistan</option>
                                        <option value="5">Ghana</option>
                                        <option value="6">Albania</option>
                                        <option value="7">Bahrain</option>
                                        <option value="8">Colombia</option>
                                        <option value="9">Dominican Republic</option>

                                    </select>
                                </div>

                                <div class="col-12 mb-20">
                                    <label>Street address <span>*</span></label>
                                    <input placeholder="House number and street name" type="text">
                                </div>
                                <div class="col-12 mb-20">
                                    <input placeholder="Apartment, suite, unit etc. (optional)" type="text">
                                </div>
                                <div class="col-12 mb-20">
                                    <label>Town / City <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="col-12 mb-20">
                                    <label>State / County <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>Phone<span>*</span></label>
                                    <input type="text">

                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label> Email Address <span>*</span></label>
                                    <input type="text">

                                </div>
                                <div class="col-12 mb-20">
                                    <input id="account" type="checkbox" data-target="createp_account" />
                                    <label for="account" data-toggle="collapse" data-target="#collapseOne"
                                        aria-controls="collapseOne">Create an account?</label>

                                    <div id="collapseOne" class="collapse one" data-parent="#accordion">
                                        <div class="card-body1">
                                            <label> Account password <span>*</span></label>
                                            <input placeholder="password" type="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 mb-20">
                                    <input id="address" type="checkbox" data-target="createp_account" />
                                    <label class="righ_0" for="address" data-toggle="collapse"
                                        data-target="#collapsetwo" aria-controls="collapseOne">Ship to a different
                                        address?</label>

                                    <div id="collapsetwo" class="collapse one" data-parent="#accordion">
                                        <div class="row">
                                            <div class="col-lg-6 mb-20">
                                                <label>First Name <span>*</span></label>
                                                <input type="text">
                                            </div>
                                            <div class="col-lg-6 mb-20">
                                                <label>Last Name <span>*</span></label>
                                                <input type="text">
                                            </div>
                                            <div class="col-12 mb-20">
                                                <label>Company Name</label>
                                                <input type="text">
                                            </div>
                                            <div class="col-12 mb-20">
                                                <div class="select_form_select">
                                                    <label for="countru_name">country <span>*</span></label>
                                                    <select class="niceselect_option" name="cuntry" id="countru_name">
                                                        <option value="2">bangladesh</option>
                                                        <option value="3">Algeria</option>
                                                        <option value="4">Afghanistan</option>
                                                        <option value="5">Ghana</option>
                                                        <option value="6">Albania</option>
                                                        <option value="7">Bahrain</option>
                                                        <option value="8">Colombia</option>
                                                        <option value="9">Dominican Republic</option>

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-12 mb-20">
                                                <label>Street address <span>*</span></label>
                                                <input placeholder="House number and street name" type="text">
                                            </div>
                                            <div class="col-12 mb-20">
                                                <input placeholder="Apartment, suite, unit etc. (optional)" type="text">
                                            </div>
                                            <div class="col-12 mb-20">
                                                <label>Town / City <span>*</span></label>
                                                <input type="text">
                                            </div>
                                            <div class="col-12 mb-20">
                                                <label>State / County <span>*</span></label>
                                                <input type="text">
                                            </div>
                                            <div class="col-lg-6 mb-20">
                                                <label>Phone<span>*</span></label>
                                                <input type="text">

                                            </div>
                                            <div class="col-lg-6">
                                                <label> Email Address <span>*</span></label>
                                                <input type="text">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="order-notes">
                                        <label for="order_note">Order Notes</label>
                                        <textarea id="order_note"
                                            placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <form action="#">
                            <h3>Your order</h3>
                            <div class="order_table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td> Handbag fringilla <strong> × 2</strong></td>
                                            <td> $165.00</td>
                                        </tr>
                                        <tr>
                                            <td> Handbag justo <strong> × 2</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                        <tr>
                                            <td> Handbag elit <strong> × 2</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                        <tr>
                                            <td> Handbag Rutrum <strong> × 1</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Cart Subtotal</th>
                                            <td>$215.00</td>
                                        </tr>
                                        <tr>
                                            <th>Shipping</th>
                                            <td><strong>$5.00</strong></td>
                                        </tr>
                                        <tr class="order_total">
                                            <th>Order Total</th>
                                            <td><strong>$220.00</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="payment_method">
                                <div class="panel-default">
                                    <input id="payment" name="check_method" type="radio"
                                        data-target="createp_account" />
                                    <label for="payment" data-toggle="collapse" data-target="#method"
                                        aria-controls="method">Create an account?</label>

                                    <div id="method" class="collapse one" data-parent="#accordion">
                                        <div class="card-body1">
                                            <p>Please send a check to Store Name, Store Street, Store Town, Store State
                                                / County, Store Postcode.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-default">
                                    <input id="payment_defult" name="check_method" type="radio"
                                        data-target="createp_account" />
                                    <label for="payment_defult" data-toggle="collapse" data-target="#collapsedefult"
                                        aria-controls="collapsedefult">PayPal <img src="assets/img/icon/papyel.png"
                                            alt=""></label>

                                    <div id="collapsedefult" class="collapse one" data-parent="#accordion">
                                        <div class="card-body1">
                                            <p>Pay via PayPal; you can pay with your credit card if you don’t have a
                                                PayPal account.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="order_button">
                                    <button type="submit">Proceed to PayPal</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Checkout page section end-->

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
                                    <form id="mc-form" class="mc-form footer-newsletter">
                                        <input id="mc-email" type="email" autocomplete="off"
                                            placeholder="Enter you email address here..." />
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
