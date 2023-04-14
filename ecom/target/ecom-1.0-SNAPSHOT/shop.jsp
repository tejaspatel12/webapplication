<%-- 
    Document   : shop
    Created on : 14-Apr-2023, 12:43:37 pm
    Author     : chandnipatel
--%>

    <!-- Header Start  -->
    <%@include file="include/header.jsp"%>
    <!-- Header End -->

    <div class="menu-overlay"></div>

    <!-- Page Banner Section Start -->
    <div class="section page-banner-section" style="background-image: url(assets/images/banner.png);">
        <div class="container">

            <!-- Page Banner Content End -->
            <div class="page-banner-content">
                <h2 class="title">Shop Page</h2>

                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Shop Page</li>
                </ul>
            </div>
            <!-- Page Banner Content End -->

        </div>
    </div>
    <!-- Page Banner Section End -->

    <!-- Shop Section Start -->
    <div class="section section-padding mt-n10">
        <div class="container">

            <!-- Shop top Bar Start -->
            <div class="shop-top-bar">
                
                <div class="shop-tabs">
                    <ul class="nav">
                        <li><button class="active" data-bs-toggle="tab" data-bs-target="#grid"><i class="fa fa-th"></i></button></li>
                        <li><button data-bs-toggle="tab" data-bs-target="#list"><i class="fa fa-list"></i></button></li>
                    </ul>
                </div>
                <div class="shop-sort">
                    <span class="title">Sort By :</span>
                    <select class="nice_select">
                        <option value="1">Default</option>
<!--                        <option value="2">Default</option>
                        <option value="3">Default</option>
                        <option value="4">Default</option>-->
                    </select>
                </div>
            </div>
            <!-- Shop top Bar End -->

            <div class="tab-content">
                <div class="tab-pane fade show active" id="grid">

                    <!-- Shop Product Wrapper Start -->
                    <div class="shop-product-wrapper">
                        <div class="row">
                            
                            <%
                                try{
                                  Class.forName("com.mysql.cj.jdbc.Driver");
                                  con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                                  Statement stmt = con.createStatement();
                                  
                                  String c=request.getParameter("c");
                                  String Qu=null;
                                  if(c!=null)
                                  {
                                  Qu = "select * from products where quantity!=0 and categoryid='"+ c +"'";
                                  
//                                     ResultSet rs = stmt.executeQuery("select * from products where quantity!=0");   
                                  }
                                  else
                                  {
                                  Qu = "select * from products where quantity!=0";
//                                    ResultSet rs = stmt.executeQuery("select * from products where quantity!=0");   
                                   }
                                   ResultSet rs = stmt.executeQuery(Qu);
//                                   sp = ResultSet rs
                                  while (rs.next()) 
                                  { 
                              %>
                            <div class="col-lg-4 col-sm-6">
                                <!-- Single Product Start -->
                                <div class="single-product">
                                    <a href="#"><img src="assets/images/product/<%=rs.getString("prodid")%>.png" alt="product"></a>
                                    <div class="product-content">
                                        <h4 class="title"><a href="product-details.jsp"><%=rs.getString("prodname")%></a></h4>
                                        <div class="price">
                                            <span class="sale-price">$<%=rs.getString("price")%></span>
                                        </div>
                                    </div>
                                    <ul class="product-meta">
                                        <li><a class="action" data-bs-toggle="modal" data-bs-target="#quickView" href="#"><i class="pe-7s-search"></i></a></li>
                                        <li><a class="action" href="#"><i class="pe-7s-shopbag"></i></a></li>
                                        <li><a class="action" href="#"><i class="pe-7s-like"></i></a></li>
                                    </ul>
                                </div>
                                <!-- Single Product End -->
                            </div>
                            <% 
                            }}  
                                         catch (Exception e) 
                                        {  
                                         out.println("error");  
                                     }  
                            %> 
                            
                            
                        </div>
                    </div>
                    <!-- Shop Product Wrapper End -->

                </div>
                <div class="tab-pane fade" id="list">

                    <!-- Shop Product Wrapper Start -->
                    <div class="shop-product-wrapper">

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-01.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-02.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-03.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-04.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-05.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-06.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-07.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-08.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <!-- Single Product Start -->
                        <div class="single-product-02 product-list">
                            <div class="product-images">
                                <a href="#"><img src="assets/images/product/product-09.jpg" alt="product"></a>

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
                                <p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. Part of the Kaval Collection. Regular fit is eased, but not sloppy, and perfect for any activity. Plain-woven jacket specifically constructed for freedom of movement. </p>
                            </div>
                        </div>
                        <!-- Single Product End -->

                    </div>
                    <!-- Shop Product Wrapper End -->

                </div>
            </div>

            <!-- Page pagination Start -->
            <div class="page-pagination">
                <ul class="pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link active" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
            </div>
            <!-- Page pagination End -->

        </div>
    </div>
    <!-- Shop Section End -->

    <!-- Footer Start  -->
    <%@include file="include/footer.jsp"%>
    <!-- Footer End -->
