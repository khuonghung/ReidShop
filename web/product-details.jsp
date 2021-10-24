<%-- 
    Document   : product-details
    Created on : Oct 17, 2021, 8:32:00 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Product details</title>
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
        <div class="breadcrumbs_area product_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">home</a></li>
                                <li>/</li>
                                <li>product details</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--product details start-->
        <div class="product_details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5">
                        <div class="product-details-tab">

                            <div id="img-1" class="zoomWrapper single-zoom">
                                <a href="#">
                                    <img id="zoom1" src="assets/img/product/product5.jpg" data-zoom-image="assets/img/product/product5.jpg" alt="big-1">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="product_d_right">
                            <form action="#">
                                <h1>Amazon Cloud Cam</h1>
                                <div class="product_price">
                                    <span class="current_price">$70.00</span>
                                </div>
                                <div class="product_desc">
                                    <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list. Enhanced interface. Experience a whole new way to browse and view your music and video. Sleeker design. Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polish.. </p>
                                </div>

                                <div class="product_variant color">
                                    <h3>color</h3>
                                    <select class="niceselect_option" id="color" name="product_color">
                                        <option selected value="1">choose in option</option>        
                                        <option value="2">choose in option2</option>              
                                        <option value="3">choose in option3</option>              
                                        <option value="4">choose in option4</option>              
                                    </select>   
                                </div>
                                <div class="product_variant size">
                                    <h3>size</h3>
                                    <select class="niceselect_option" id="color1" name="product_size">
                                        <option selected value="1">size</option>        
                                        <option value="2">x</option>              
                                        <option value="2">xl</option>              
                                        <option value="3">md</option>              
                                        <option value="4">xxl</option>              
                                        <option value="4">s</option>              
                                    </select> 
                                </div>
                                <div class="product_variant quantity">
                                    <label>quantity</label>
                                    <input min="1" max="100" value="1" type="number">
                                    <button class="button" type="submit">add to cart</button>  
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <!--product details end-->
        <!--product info end-->

        <!--product section area start-->
        <section class="product_section related_product">
            <div class="container">
                <div class="row">   
                    <div class="col-12">
                        <div class="section_title">
                            <h2>Related Products</h2>
                            <p>Contemporary, minimal and modern designs embody the Lavish Alice handwriting</p>
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
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>

                                        <div class="product_sale">
                                            <span>-7%</span>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Marshall Portable  Bluetooth</a></h3>
                                        <span class="current_price">£60.00</span>
                                        <span class="old_price">£86.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product27.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product28.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Koss KPH7 Portable</a></h3>
                                        <span class="current_price">£60.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product6.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product5.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>

                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Beats Solo2 Solo 2</a></h3>
                                        <span class="current_price">£60.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product7.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product8.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>

                                        <div class="product_sale">
                                            <span>-7%</span>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Beats EP Wired</a></h3>
                                        <span class="current_price">£60.00</span>
                                        <span class="old_price">£86.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product24.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product25.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Bose SoundLink Bluetooth</a></h3>
                                        <span class="current_price">£60.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product10.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product11.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>

                                        <div class="product_sale">
                                            <span>-7%</span>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">Apple iPhone SE 16GB</a></h3>
                                        <span class="current_price">£60.00</span>
                                        <span class="old_price">£86.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product23.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product24.jpg" alt=""></a>
                                        <div class="product_action">
                                            <div class="hover_action">
                                                <a  href="#"><i class="fa fa-plus"></i></a>
                                                <div class="action_button">
                                                    <ul>

                                                        <li><a title="add to cart" href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
                                                        <li><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>

                                                        <li><a href="compare.html" title="Add to Compare"><i class="fa fa-sliders" aria-hidden="true"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box" title="quick_view">+ quick view</a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <h3><a href="product-details.html">JBL Flip 3 Portable</a></h3>
                                        <span class="current_price">£60.00</span>
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
        <jsp:include page="layout/footer.jsp"/>
        <!--footer area end-->

        <!-- modal area start-->
        <div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-12">
                                    <div class="modal_tab">  
                                        <div class="tab-content product-details-large">
                                            <div class="tab-pane fade show active" id="tab1" role="tabpanel" >
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/img/product/product4.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/img/product/product6.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/img/product/product8.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab4" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/img/product/product2.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab5" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/img/product/product12.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">    
                                            <ul class="nav product_navactive owl-carousel" role="tablist">
                                                <li >
                                                    <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="assets/img/s-product/product3.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="assets/img/s-product/product.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="assets/img/s-product/product2.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false"><img src="assets/img/s-product/product4.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-toggle="tab" href="#tab5" role="tab" aria-controls="tab5" aria-selected="false"><img src="assets/img/s-product/product5.jpg" alt=""></a>
                                                </li>

                                            </ul>
                                        </div>    
                                    </div>  
                                </div> 
                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <div class="modal_title mb-10">
                                            <h2>Handbag feugiat</h2> 
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">$64.99</span>    
                                            <span class="old_price" >$78.99</span>    
                                        </div>
                                        <div class="modal_description mb-15">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>    
                                        </div> 
                                        <div class="variants_selects">
                                            <div class="variants_size">
                                                <h2>size</h2>
                                                <select class="select_option">
                                                    <option selected value="1">s</option>
                                                    <option value="1">m</option>
                                                    <option value="1">l</option>
                                                    <option value="1">xl</option>
                                                    <option value="1">xxl</option>
                                                </select>
                                            </div>
                                            <div class="variants_color">
                                                <h2>color</h2>
                                                <select class="select_option">
                                                    <option selected value="1">purple</option>
                                                    <option value="1">violet</option>
                                                    <option value="1">black</option>
                                                    <option value="1">pink</option>
                                                    <option value="1">orange</option>
                                                </select>
                                            </div>
                                            <div class="modal_add_to_cart">
                                                <form action="#">
                                                    <input min="0" max="100" step="2" value="1" type="number">
                                                    <button type="submit">add to cart</button>
                                                </form>
                                            </div>   
                                        </div>
                                        <div class="modal_social">
                                            <h2>Share this product</h2>
                                            <ul>
                                                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>    
                                        </div>      
                                    </div>    
                                </div>    
                            </div>     
                        </div>
                    </div>    
                </div>
            </div>
        </div> 
        <!-- modal area start-->


        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>



    </body>

</html>
