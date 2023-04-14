<%-- 
    Document   : about
    Created on : 12-Apr-2023, 12:00:45 pm
    Author     : chandnipatel
--%>


    <!-- Header Start  -->
    <%@include file="include/header.jsp"%>
    <!-- Header End -->

    <!-- off Canvas Start -->
    <!-- off Canvas End -->

    <div class="menu-overlay"></div>

    <!-- Slider Section Start -->
    <div class="section slider-section-02">
        <div class="slider-active">
            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <!-- Single Slider Start  -->
                    <div class="single-slider slider-02 swiper-slide animation-style-01" style="background-image: url(assets/images/slider/slider-01.jpg);">
                        <div class="container">

                            <!-- Slider Content Start -->
                            <div class="slider-content-02 text-center">
                                <h2 class="title">Stylish Men Fashion</h2>
                                <p>Unique Men Style Design for Your Family and Welcome <br> Our Shop, 30% Offer All Stylish Men Fashion</p>
                                <a href="shop-grid-4-column.html" class="btn btn-primary btn-hover-dark">purchase now</a>
                            </div>
                            <!-- Slider Content End -->

                        </div>
                    </div>
                    <!-- Single Slider End  -->

                    <!-- Single Slider Start  -->
                    <div class="single-slider slider-02 swiper-slide animation-style-01" style="background-image: url(assets/images/slider/slider-02.jpg);">
                        <div class="container">

                            <!-- Slider Content Start -->
                            <div class="slider-content-02 text-center">
                                <h2 class="title">Stylish Kitchen Furniture</h2>
                                <p>Unique Furniture Style Design for Your Family and Welcome <br> Our Shop, 30% Offer All Stylish Kitchen Furniture</p>
                                <a href="shop-grid-4-column.html" class="btn btn-primary btn-hover-dark">purchase now</a>
                            </div>
                            <!-- Slider Content End -->

                        </div>
                    </div>
                    <!-- Single Slider End  -->

                    <!-- Add Arrows -->
                    <div class="swiper-button-next">Next</div>
                    <div class="swiper-button-prev">Prev</div>

                </div>
            </div>
        </div>
    </div>
    <!-- Slider Section End -->

    <!-- Benefit Section Start -->
    <div class="section section-padding-02 mt-n6">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">

                    <!-- Single Benefit Start -->
                    <div class="single-benefit">
                        <img src="assets/images/icon/icon-1.png" alt="Icon">
                        <h3 class="title">Free Shipping</h3>
                        <p>Get 10% cash back, free shipping, free returns, and more at 1000+ top retailers!</p>
                    </div>
                    <!-- Single Benefit End -->

                </div>
                <div class="col-lg-4 col-md-6">

                    <!-- Single Benefit Start -->
                    <div class="single-benefit">
                        <img src="assets/images/icon/icon-2.png" alt="Icon">
                        <h3 class="title">Safe Payment</h3>
                        <p>Get 10% cash back, free shipping, free returns, and more at 1000+ top retailers!</p>
                    </div>
                    <!-- Single Benefit End -->

                </div>
                <div class="col-lg-4 col-md-6">

                    <!-- Single Benefit Start -->
                    <div class="single-benefit">
                        <img src="assets/images/icon/icon-3.png" alt="Icon">
                        <h3 class="title">Online Support</h3>
                        <p>Get 10% cash back, free shipping, free returns, and more at 1000+ top retailers!</p>
                    </div>
                    <!-- Single Benefit End -->

                </div>
            </div>
        </div>
    </div>
    <!-- Benefit Section End -->

    <!-- New Product Section Start -->
    <div class="section section-padding-02 mt-n2">
        <div class="container">

            <!-- Section Title Start -->
            <div class="section-title-02 text-center">
                <h2 class="title">New Products</h2>
            </div>
            <!-- Section Title End -->

            <!-- Product Wrapper 02 Start -->
            <div class="product-wrapper-02">

                <!-- Product Menu Start -->
                <div class="product-menu">
                    <ul class="nav justify-content-center">
                        <li><button class="active" data-bs-toggle="tab" data-bs-target="#tab1">All</button></li>
                        <li><button data-bs-toggle="tab" data-bs-target="#tab2"> Just Now </button></li>
                        <li><button data-bs-toggle="tab" data-bs-target="#tab3">New Arrival</button></li>
                        <li><button data-bs-toggle="tab" data-bs-target="#tab4">Top Seals</button></li>
                        <li><button data-bs-toggle="tab" data-bs-target="#tab5">Best Rating</button></li>
                    </ul>
                </div>
                <!-- Product Menu End -->

                <!-- Product Tabs Content Start -->
                <div class="product-tabs-content">
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab1">
                            
                            <div class="row">
                                <%                                        try {
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from products where quantity!=0");
                                        while (rs.next()) {
                                %>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/<%=rs.getString("prodid")%>.png" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="productdetails.jsp"><%=rs.getString("prodname")%></a></h4>
                                            <div class="price">
                                                <span class="sale-price">$<%=rs.getString("price")%></span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                
                                <% 
                                }}  catch (Exception e) {
                                        out.println("error");
                                    }
                                %> 
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab2">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-09.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Reece Seater Sofa</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-10.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Round Swivel Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-11.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html"> Lace Bar Stool</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-12.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Modern Accent Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-08.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Herman Seater Sofa</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-06.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Herman Arm Grey Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-07.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Wooden decorations</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-02.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Simple minimal Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab3">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-03.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Pendant Chandelier Light</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-04.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">High quality vase bottle</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-08.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Herman Seater Sofa</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-01.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Elona bedside grey table</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-07.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Wooden decorations</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-09.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Reece Seater Sofa</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-02.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Simple minimal Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-07.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Wooden decorations</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab4">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-03.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Pendant Chandelier Light</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-02.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Simple minimal Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-05.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Living & Bedroom Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-04.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">High quality vase bottle</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-10.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Round Swivel Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-11.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Lace Bar Stool</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-05.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Living & Bedroom Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-07.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Wooden decorations</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab5">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-03.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Pendant Chandelier Light</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-02.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Simple minimal Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-09.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Reece Seater Sofa</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-04.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">High quality vase bottle</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-12.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Modern Accent Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-10.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Round Swivel Chair</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-11.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>

                                            <span class="discount">-50%</span>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Lace Bar Stool</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$20.00</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Product End -->
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <!-- Single Product Start -->
                                    <div class="single-product-02">
                                        <div class="product-images">
                                            <a href="product-details.html"><img src="assets/images/product/product-01.jpg" alt="product"></a>

                                            <ul class="product-meta">
                                                <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content">
                                            <h4 class="title"><a href="product-details.html">Elona bedside grey table</a></h4>
                                            <div class="price">
                                                <span class="sale-price">$40.00</span>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Single Product End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Product Tabs Content End -->

            </div>
            <!-- Product Wrapper 02 End -->


        </div>
    </div>
    <!-- New Product Section End -->

    <!-- Banner Section Start -->
    <div class="section section-padding mt-n6">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <!-- Single Banner Start -->
                    <div class="single-banner-03">
                        <img src="assets/images/banner/banner-05.jpg" alt="Banner">

                        <div class="banner-content">
                            <h6 class="sub-title">High-Quality</h6>
                            <h3 class="title"><a href="shop-grid-left-sidebar.html">New Kitchen <br> Furniture</a></h3>
                            <a class="btn btn-primary btn-hover-dark" href="shop-grid-left-sidebar.html">Shop Now</a>
                        </div>
                    </div>
                    <!-- Single Banner End -->
                </div>
                <div class="col-lg-6">
                    <!-- Single Banner Start -->
                    <div class="single-banner-03">
                        <img src="assets/images/banner/banner-06.jpg" alt="Banner">

                        <div class="banner-content">
                            <h6 class="sub-title">Best-Quality</h6>
                            <h3 class="title"><a href="shop-grid-left-sidebar.html">Bed Room <br> Furniture</a></h3>
                            <a class="btn btn-primary btn-hover-dark" href="shop-grid-left-sidebar.html">Shop Now</a>
                        </div>
                    </div>
                    <!-- Single Banner End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section End -->

    <!-- Countdown Section Start -->
    <div class="section section-padding overflow-hidden bg-color-01">
        <div class="container">
            <div class="countdown-main-wrapper mt-n10">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <!-- Countdown Content Start -->
                        <div class="countdown-content">
                            <h2 class="title">Chair Collection <span>50%</span> Off</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing sed do eiusmol tempor incididunt ut labore et dolore magna aliqua. Ut enim ad mini veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip eao commodo consequat Duis aute irure.</p>

                            <div class="countdown-wrapper">
                                <div class="countdown" data-countdown="2021/11/20" data-format="short">
                                    <div class="single-countdown">
                                        <span class="count countdown__time daysLeft"></span>
                                        <span class="value countdown__time daysText"></span>
                                    </div>
                                    <div class="single-countdown">
                                        <span class="count countdown__time hoursLeft"></span>
                                        <span class="value countdown__time hoursText"></span>
                                    </div>
                                    <div class="single-countdown">
                                        <span class="count countdown__time minsLeft"></span>
                                        <span class="value countdown__time minsText"></span>
                                    </div>
                                    <div class="single-countdown">
                                        <span class="count countdown__time secsLeft"></span>
                                        <span class="value countdown__time secsText"></span>
                                    </div>
                                </div>
                            </div>

                            <a href="#" class="btn btn-primary btn-hover-dark">Shop Now</a>
                        </div>
                        <!-- Countdown Content End -->
                    </div>

                    <div class="col-lg-6">
                        <!-- Countdown Images Start -->
                        <div class="countdown-images">
                            <div class="shape-1"></div>
                            <div class="shape-2"></div>
                            <div class="shape-3"></div>

                            <div class="image-box">
                                <img src="assets/images/countdown.png" alt="Countdown">
                            </div>
                        </div>
                        <!-- Countdown Images End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Countdown Section End -->

    <!-- Sale Product Section Start -->
    <div class="section section-padding-02">
        <div class="container">
            <div class="">
                <!-- Product Wrapper Start -->
                <div class="product-wrapper product-active-02">

                    <!-- Product Top Wrapper Start -->
                    <div class="product-top-wrapper mt-n1">

                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h2 class="title"># Sale Products</h2>
                        </div>
                        <!-- Section Title End -->

                        <!-- Product Menu Start -->
                        <div class="product-menu">
                            <ul class="nav">
                                <li><button class="active" data-bs-toggle="tab" data-bs-target="#tab7">All Time</button></li>
                                <li><button data-bs-toggle="tab" data-bs-target="#tab8">This Year</button></li>
                                <li><button data-bs-toggle="tab" data-bs-target="#tab9">This Month</button></li>
                            </ul>
                        </div>
                        <!-- Product Menu End -->

                        <!-- Swiper Arrows End -->
                        <div class="swiper-arrows">
                            <!-- Add Arrows -->
                            <div class="swiper-button-prev"><i class="pe-7s-angle-left"></i></div>
                            <div class="swiper-button-next"><i class="pe-7s-angle-right"></i></div>
                        </div>
                        <!-- Swiper Arrows End -->

                    </div>
                    <!-- Product Top Wrapper End -->

                    <!-- Product Tabs Content Start -->
                    <div class="product-tabs-content">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab7">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-12.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Modern Accent Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-08.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Herman Seater Sofa</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-09.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Reece Seater Sofa</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-10.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Round Swivel Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab8">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-12.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Modern Accent Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-07.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Wooden decorations</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-06.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Herman Arm Grey Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-05.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Living & Bedroom Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab9">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-04.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">High quality vase bottle</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-03.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Pendant Chandelier Light</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-02.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Simple minimal Chair</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                        <div class="swiper-slide">
                                            <!-- Single Product Start -->
                                            <div class="single-product-02">
                                                <div class="product-images">
                                                    <a href="product-details.html"><img src="assets/images/product/product-01.jpg" alt="product"></a>

                                                    <ul class="product-meta">
                                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-content">
                                                    <h4 class="title"><a href="product-details.html">Elona bedside grey table</a></h4>
                                                    <div class="price">
                                                        <span class="sale-price">$40.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Product End -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product Tabs Content End -->

                </div>
                <!-- Product Wrapper End -->
            </div>
        </div>
    </div>
    <!-- Sale Product Section End -->

    


    <!-- Footer Start  -->
    <%@include file="include/footer.jsp"%>
    <!-- Footer End -->