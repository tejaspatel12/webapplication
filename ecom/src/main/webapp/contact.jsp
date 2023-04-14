<%-- 
    Document   : contact
    Created on : 13-Apr-2023, 12:34:32 am
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



    <!-- Header Start  -->
    <%@include file="include/header.jsp"%>
    <!-- Header Mobile End -->


    <div class="menu-overlay"></div>

    <!-- Page Banner Section Start -->
    <div class="section page-banner-section" style="background-image: url(assets/images/banner.png);">
        <div class="container">

            <!-- Page Banner Content End -->
            <div class="page-banner-content">
                <h2 class="title">Contact Us</h2>

                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Contact Us</li>
                </ul>
            </div>
            <!-- Page Banner Content End -->

        </div>
    </div>
    <!-- Page Banner Section End -->

    <%
        try{
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
          Statement stmt = con.createStatement();  
          ResultSet rs = stmt.executeQuery("select * from settings where sid='1'");   
          while (rs.next()) 
          { 
      %>
    <!-- Contact Section Start -->
    <div class="section section-padding">
        <div class="container">

            <!-- Contact Wrapper Start -->
            <div class="contact-wrapper">
                <div class="row gx-0">
                    <div class="col-lg-4">
                        <div class="contact-info">
                            <h2 class="title">Contact Info</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed eiusmod</p>

                            <!-- Contact Info Items Start -->
                            <div class="contact-info-items">

                                <div class="single-contact-info">
                                    <div class="info-icon">
                                        <i class="pe-7s-call"></i>
                                    </div>
                                    <div class="info-content">
                                        <p><a href="tel:+<%=rs.getString("contact")%>"><%=rs.getString("contact")%></a></p>
                                    </div>
                                </div>

                                <div class="single-contact-info">
                                    <div class="info-icon">
                                        <i class="pe-7s-mail"></i>
                                    </div>
                                    <div class="info-content">
                                        <p><a href="mailto:<%=rs.getString("email")%>"><%=rs.getString("email")%></a></p>
                                    </div>
                                </div>

                                <div class="single-contact-info">
                                    <div class="info-icon">
                                        <i class="pe-7s-map-marker"></i>
                                    </div>
                                    <div class="info-content">
                                        <p><%=rs.getString("address")%></p>
                                    </div>
                                </div>

                            </div>
                            <!-- Contact Info Items End -->

                            <!-- Contact Social Start -->
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                            <!-- Contact Social End -->

                            <img src="assets/images/contact.jpg" alt="Contact-info">

                        </div>
                    </div>
                    <div class="col-lg-8">

                        <!-- Contact Form Start  -->
                        <div class="contact-form">
                            <form id="contact-form" action="assets/php/contact.php" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="single-form">
                                            <input type="text" name="name" placeholder="Name*">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form">
                                            <input type="email" name="email" placeholder="Email*">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form">
                                            <input type="text" name="subject" placeholder="Subject">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form">
                                            <input type="text" name="phone" placeholder="Phone No">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form">
                                            <textarea name="message" placeholder="Write your comments here"></textarea>
                                        </div>
                                    </div>
                                    <p class="form-message"></p>
                                    <div class="col-md-12">
                                        <div class="single-form">
                                            <button type="submit" class="btn btn-dark btn-hover-primary">Submit Review</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- Contact Form End  -->

                    </div>
                </div>
            </div>
            <!-- Contact Wrapper End -->

        </div>
    </div>
    <!-- Contact Section End -->

    <!-- Contact Map Start -->
    <div class="contact-map">
        <iframe id="gmap_canvas" src="<%=rs.getString("embedmap")%>"></iframe>
    </div>
    <!-- Contact Map End -->

    <% 
    }}  
                 catch (Exception e) 
                {  
                 out.println("error");  
             }  
    %> 
                    
    <!-- Footer Start  -->
    <%@include file="include/footer.jsp"%>
    <!-- Footer End -->
