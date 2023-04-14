<%-- 
    Document   : footer
    Created on : 13-Apr-2023, 12:18:47 am
    Author     : chandnipatel
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<!-- Footer Section Start -->
    <div class="section footer-section">

        <!-- Footer Top Start -->
        

        
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-md-4">

                        <!-- Footer Logo Start -->
                        <div class="footer-logo">
                            <a href="index.jsp"><img src="assets/images/logo.png" alt="Logo"></a>
                        </div>
                        <!-- Footer Logo End -->

                    </div>
                    <div class="col-xl-5 col-md-8">

                        <!-- Footer Contact & Payment End -->
                        <div class="footer-contact-payment">
                            <div class="footer-contact">
                                <div class="contact-icon">
                                    <img src="assets/images/icon/icon-4.png" alt="Icon">
                                </div>

                                <div class="contact-content">
                                    <h6 class="title">Call Us:</h6>
                                    <p>00 123 456 789</p>
                                </div>
                            </div>
                            <div class="footer-payment">
                                <img src="assets/images/payment.png" alt="Payment">
                            </div>
                        </div>
                        <!-- Footer Contact & Payment End -->

                    </div>
                    <div class="col-xl-5 ">

                        <!-- Footer Subscribe End -->
                        <div class="footer-subscribe">
                            <span class="title">Subscribe Now :</span>
                            <div class="subscribe-form">
                                <form action="#">
                                    <input type="text" placeholder="Your Mail">
                                    <button><i class="pe-7s-paper-plane"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Footer Subscribe End -->

                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Top End -->

        <!-- Footer Widget Section Start -->
        <div class="footer-widget-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">

                        <!-- Footer Widget Start -->
                        <div class="footer-widget">
                            <h4 class="footer-widget-title">Customer Service</h4>

                            <ul class="footer-link">
                                <li><a href="#">Payment Methods</a></li>
                                <li><a href="#">Money-back guarantee!</a></li>
                                <li><a href="#">Returns-Shipping</a></li>
                                <li><a href="#">Terms and conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                        <!-- Footer Widget End -->

                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <!-- Footer Widget Start -->
                        <div class="footer-widget">
                            <h4 class="footer-widget-title">Information</h4>

                            <ul class="footer-link">
                                <li><a href="aboutus.jsp">About Us</a></li>
                                <li><a href="shop.jsp">How to Shop</a></li>
                                <li><a href="faq.jsp">FAQ</a></li>
                                <li><a href="contact.jsp">Contact us</a></li>
                                <li><a href="login.jsp">Log in</a></li>
                            </ul>
                        </div>
                        <!-- Footer Widget End -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <!-- Footer Widget Start -->
                        <div class="footer-widget">
                            <h4 class="footer-widget-title">My Account</h4>

                            <ul class="footer-link">
                                <li><a href="login.jsp">Sign In</a></li>
                                <li><a href="cart.jsp">View Cart</a></li>
                                <li><a href="cart.jsp">My Wishlist</a></li>
                                <li><a href="track.jsp">Track My Order</a></li>
                                <li><a href="contact.jsp">Help</a></li>
                            </ul>
                        </div>
                        <!-- Footer Widget End -->
                    </div>
                    <div class="col-lg-3 col-md-5 col-sm-6">
                        <!-- Footer Widget Start -->
                        <div class="footer-widget">
                            <h4 class="footer-widget-title">Our Stores</h4>

                            <ul class="footer-link">
                                <li><a href="#">New aYork</a></li>
                                <li><a href="#">London SF</a></li>
                                <li><a href="#">Cockfosters BP</a></li>
                                <li><a href="#">Los Angeles</a></li>
                                <li><a href="#">Chicago</a></li>
                            </ul>
                        </div>
                        <!-- Footer Widget End -->
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- Footer Widget End -->

        <!-- Footer Copyright End -->
        <div class="copyright">
            <div class="container">
                <div class="copyright-text">
                    <p>&copy; 2023  Clothes4Men</span> Made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">Tejash Patel</a></p>
                </div>
            </div>
        </div>
        <!-- Footer Copyright End -->

        
    </div>
    <!-- Footer Section End -->

    <!--Back To Start-->
    <a href="#" class="back-to-top">
        <i class="pe-7s-angle-up"></i>
    </a>
    <!--Back To End-->


    <!-- Quick View Start -->
    <div class="modal fade" id="quickView">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">

                    <div class="row">
                        <div class="col-lg-6">

                            <!-- Quick View Images Start -->
                            <div class="quick-view-images">

                                <!-- Quick Gallery Images Start -->
                                <div class="quick-gallery-images">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <div class="single-img">
                                                    <img src="assets/images/product-details/product-details-1.jpg" alt="Product Image">
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="single-img">
                                                    <img src="assets/images/product-details/product-details-2.jpg" alt="Product Image">
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="single-img">
                                                    <img src="assets/images/product-details/product-details-3.jpg" alt="Product Image">
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="single-img">
                                                    <img src="assets/images/product-details/product-details-4.jpg" alt="Product Image">
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="single-img">
                                                    <img src="assets/images/product-details/product-details-5.jpg" alt="Product Image">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Quick Gallery Images End -->

                                <!-- Quick Gallery Thumbs Start -->
                                <div class="quick-gallery-thumbs">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <img src="assets/images/product-details/product-details-1.jpg" alt="Product Thumbnail">
                                            </div>
                                            <div class="swiper-slide">
                                                <img src="assets/images/product-details/product-details-2.jpg" alt="Product Thumbnail">
                                            </div>
                                            <div class="swiper-slide">
                                                <img src="assets/images/product-details/product-details-3.jpg" alt="Product Thumbnail">
                                            </div>
                                            <div class="swiper-slide">
                                                <img src="assets/images/product-details/product-details-4.jpg" alt="Product Thumbnail">
                                            </div>
                                            <div class="swiper-slide">
                                                <img src="assets/images/product-details/product-details-5.jpg" alt="Product Thumbnail">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Add Arrows -->
                                    <div class="swiper-button-prev"><i class="pe-7s-angle-left"></i></div>
                                    <div class="swiper-button-next"><i class="pe-7s-angle-right"></i></div>
                                </div>
                                <!-- Quick Gallery Thumbs End -->

                            </div>
                            <!-- Quick View Images End -->

                        </div>
                        <div class="col-lg-6">

                            <!-- Quick View Description Start -->
                            <div class="quick-view-description">
                                <h4 class="product-name">Your Products Name Here.</h4>
                                <div class="price">
                                    <span class="sale-price">$240.00</span>
                                    <span class="old-price">$290.00</span>
                                </div>
                                <div class="review-wrapper">
                                    <div class="review-star">
                                        <div class="star" style="width: 80%;"></div>
                                    </div>
                                    <p>( 1 Customer Review )</p>
                                </div>
                                <div class="product-color">
                                    <span class="lable">Color:</span>
                                    <ul>
                                        <li>
                                            <input type="radio" name="colors" id="color1">
                                            <label for="color1"><span class="color-blue"></span></label>
                                        </li>
                                        <li>
                                            <input type="radio" name="colors" id="color2">
                                            <label for="color2"><span class="color-gray"></span></label>
                                        </li>
                                        <li>
                                            <input type="radio" name="colors" id="color3">
                                            <label for="color3"><span class="color-dark-blue"></span></label>
                                        </li>
                                        <li>
                                            <input type="radio" name="colors" id="color4">
                                            <label for="color4"><span class="color-gray-dark"></span></label>
                                        </li>
                                    </ul>
                                </div>

                                <p>Lorem ipsum dolor sit amet, consectet adipisicing elit, sed do eiusmod temporf incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis tyu nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.</p>

                                <div class="product-meta">
                                    <div class="product-quantity d-inline-flex">
                                        <button type="button" class="sub">-</i></button>
                                        <input type="text" value="1" />
                                        <button type="button" class="add">+</button>
                                    </div>
                                    <div class="meta-action">
                                        <button class="btn btn-dark btn-hover-primary">Add To Cart</button>
                                    </div>
                                    <div class="meta-action">
                                        <a class="action" href="#"><i class="pe-7s-like"></i></a>
                                    </div>
                                    <div class="meta-action">
                                        <a class="action" href="#"><i class="pe-7s-shuffle"></i></a>
                                    </div>
                                </div>

                                <div class="product-info">
                                    <div class="single-info">
                                        <span class="lable">SKU:</span>
                                        <span class="value">Ch-256xl</span>
                                    </div>
                                    <div class="single-info">
                                        <span class="lable">Categories:</span>
                                        <span class="value"><a href="#">Office,</a> <a href="#">Home</a></span>
                                    </div>
                                    <div class="single-info">
                                        <span class="lable">tag:</span>
                                        <span class="value"><a href="#">Furniture</a></span>
                                    </div>
                                    <div class="single-info">
                                        <span class="lable">Share:</span>
                                        <ul class="social">
                                            <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                            <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Quick View Description End -->

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Quick View End -->





    <!-- JS
    ============================================ -->

    <!-- Modernizer & jQuery JS -->
    <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="assets/js/plugins/popper.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="assets/js/plugins/ajax-contact.js"></script>
    <script src="assets/js/plugins/appear.js"></script>
    <script src="assets/js/plugins/odometer.min.js"></script>
    <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="assets/js/plugins/select2.min.js"></script>
    <script src="assets/js/plugins/ion.rangeSlider.min.js"></script>
    <script src="assets/js/plugins/jquery.zoom.min.js"></script>

    <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
    <!-- <script src="assets/js/plugins.min.js"></script> -->


    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

</body>

</html>
