<%-- 
    Document   : register
    Created on : 14-Apr-2023, 12:24:31 am
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!-- Header Start  -->
<%@include file="include/header.jsp"%>
<!-- Header End -->

<!-- off Canvas Start -->
<!-- off Canvas End -->

    <div class="menu-overlay"></div>

    <!-- Page Banner Section Start -->
    <div class="section page-banner-section" style="background-image: url(assets/images/banner.png);">
        <div class="container">

            <!-- Page Banner Content End -->
            <div class="page-banner-content">
                <h2 class="title">Register</h2>

                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Register</li>
                </ul>
            </div>
            <!-- Page Banner Content End -->

        </div>
    </div>
    <!-- Page Banner Section End -->

    <!-- Register Section Start -->
    <div class="section section-padding mt-n1">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <!-- Login & Register Start -->
                    <div class="login-register-wrapper">
                        <h4 class="title">Create New Account</h4>
                        <p>Already have an account? <a href="login.jsp">Log in instead!</a></p>
                        <form action="./UserRegister" name="form" onsubmit="return validateForm()" method="post">
                            <div class="single-form">
                                <input type="text" placeholder="First Name" name="fname" id="fname">
                            </div>
                            <div class="single-form">
                                <input type="text" placeholder="Last Name" name="lname" id="lname">
                            </div>
                            <div class="single-form">
                                <input type="mail" placeholder="Email Address *" name="mail" id="mail">
                            </div>
                            <div class="single-form">
                                <input type="text" placeholder="Username *" name="user" id="user">
                            </div>
                            <div class="single-form">
                                <input type="password" placeholder="Password" name="pass" id="pass">
                            </div>
                            <div class="single-form">
                                <input type="password" placeholder="Confirm Password" name="cpass" id="cpass">
                            </div>
                            <div class="single-form">
                                <input type="checkbox" id="receive">
                                <label for="receive"> <span></span> Receive Offers From Our Partners</label>
                            </div>
                            <div class="single-form">
                                <input type="checkbox" id="newsletter">
                                <label for="newsletter"> <span></span> Sign Up For Our Newsletter <br> Subscribe To Our Newsletters Now And Stay Up-To-Date With New Collections, The Latest Lookbooks And Exclusive Offers.</label>
                            </div>
                            <div class="single-form">
                                <button class="btn btn-primary btn-hover-dark" type="submit">Register</button>
                            </div>
                        </form>
                    </div>
                    <!-- Login & Register End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Register Section End -->

    <!-- Footer Start  -->
    <%@include file="include/footer.jsp"%>
    <!-- Footer End -->
