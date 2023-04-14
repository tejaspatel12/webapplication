<%-- 
   Document   : category
   Created on : 11-Apr-2023, 10:52:37 pm
   Author     : chandnipatel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en" data-bs-theme="dark">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin</title>
        <!--plugins-->
        <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
        <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet">
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet">
        <!-- loader-->
        <link href="assets/css/pace.min.css" rel="stylesheet">
        <script src="assets/js/pace.min.js"></script>
        <!--Styles-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/css/icons.css">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
        <link href="assets/css/main.css" rel="stylesheet">
        <link href="assets/css/dark-theme.css" rel="stylesheet">
        <link href="assets/css/semi-dark-theme.css" rel="stylesheet">
        <link href="assets/css/minimal-theme.css" rel="stylesheet">
        <link href="assets/css/shadow-theme.css" rel="stylesheet">
    </head>
    <body>
        <!--start header-->
        <%@include file="include/header.jsp"%>
        <!--end header-->
        <!--start sidebar-->
        <%@include file="include/sidebar.jsp"%>
        <!--end sidebar-->
        <!--start main content-->
        <main class="page-content">
            <!--breadcrumb-->
            <!--end breadcrumb-->

            <div class="row g-3">
                <div class="col-auto">
                </div>
                <div class="col-auto flex-grow-1 overflow-auto">
                </div>
                <div class="col-auto">
                    <div class="d-flex align-items-center gap-2 justify-content-lg-end">
                        <button class="btn btn-light px-4"><i class="bi bi-box-arrow-right me-2"></i>Export</button>
                        <button class="btn btn-primary px-4" onclick="window.location.href = 'add_products.jsp'")"><i class="bi bi-plus-lg me-2"></i>Add Product</button>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="card mt-4">
                <div class="card-body">
                    <div class="product-table">
                        <div class="table-responsive white-space-nowrap">
                            <table class="table align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>Image</th>
                                        <th>Product</th>
                                        <th>User</th>
                                        <th>Payment ID</th>
                                        <th>Quantity</th>
                                        <th>Color | Size</th>
                                        <th>Amount</th>
                                        <th>Time</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%

                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet resultSet = null;
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery("select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid");
                                            while (rs.next()) {
                                                //select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid
%>
                                    <tr>
                                        <td>
                                            <div class="product-box">
                                                <img src="assets/images/products/01.webp" alt="">
                                            </div>
                                        </td>
                                        <td>
                                            <%=rs.getString("prodname")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("firstname")%>  <%=rs.getString("lastname")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("paymentid")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("qty")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("color")%> | <%=rs.getString("size")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("amount")%>
                                        </td>

                                        <td>
                                            <%=rs.getString("ordertime")%>
                                        </td>
                                        <td>    
                                            <%
                                            if (rs.getInt("orderstatus") == 0) {
                                            %>
                                                Pending
                                            <%
                                            } else if (rs.getInt("orderstatus") == 1) {
                                            %>
                                                Processing
                                            <%
                                             } else if (rs.getInt("orderstatus") == 2) {
                                            %>
                                                Out For Delivery
                                            <%
                                             }
                                            else{
                                            %>
                                                Delivered
                                            <%
                                             }
                                            %>
                                        </td>

                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-sm btn-light border dropdown-toggle dropdown-toggle-nocaret" type="button" data-bs-toggle="dropdown">
                                                    <i class="bi bi-three-dots"></i>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="orderdetail.jsp?id=<%=rs.getString("ordered")%>">Edit</a></li>
                                                    <li><a class="dropdown-item" href="order-delete?id=<%=rs.getString("prodid")%>">Delete</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            out.println("error");
                                        }
                                    %>  

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--end main content-->
        <!--start overlay-->
        <div class="overlay btn-toggle-menu"></div>
        <!--end overlay-->
        <!-- Search Modal -->
        <div class="modal" id="exampleModal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header gap-2">
                        <div class="position-relative popup-search w-100">
                            <input class="form-control form-control-lg ps-5 border border-3 border-primary" type="search" placeholder="Search">
                            <span class="material-symbols-outlined position-absolute ms-3 translate-middle-y start-0 top-50">search</span>
                        </div>
                        <button type="button" class="btn-close d-xl-none" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="search-list">
                            <p class="mb-1">Html Templates</p>
                            <div class="list-group">
                                <a href="javascript:;" class="list-group-item list-group-item-action active align-items-center d-flex gap-2"><i class="bi bi-filetype-html fs-5"></i>Best Html Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-award fs-5"></i>Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-box2-heart fs-5"></i>Responsive Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-camera-video fs-5"></i>eCommerce Html Templates</a>
                            </div>
                            <p class="mb-1 mt-3">Web Designe Company</p>
                            <div class="list-group">
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-chat-right-text fs-5"></i>Best Html Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-cloud-arrow-down fs-5"></i>Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-columns-gap fs-5"></i>Responsive Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-collection-play fs-5"></i>eCommerce Html Templates</a>
                            </div>
                            <p class="mb-1 mt-3">Software Development</p>
                            <div class="list-group">
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-cup-hot fs-5"></i>Best Html Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-droplet fs-5"></i>Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-exclamation-triangle fs-5"></i>Responsive Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-eye fs-5"></i>eCommerce Html Templates</a>
                            </div>
                            <p class="mb-1 mt-3">Online Shoping Portals</p>
                            <div class="list-group">
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-facebook fs-5"></i>Best Html Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-flower2 fs-5"></i>Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-geo-alt fs-5"></i>Responsive Html5 Templates</a>
                                <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-github fs-5"></i>eCommerce Html Templates</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--start theme customization-->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="ThemeCustomizer" aria-labelledby="ThemeCustomizerLable">
            <div class="offcanvas-header border-bottom">
                <h5 class="offcanvas-title" id="ThemeCustomizerLable">Theme Customizer</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <h6 class="mb-0">Theme Variation</h6>
                <hr>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1">
                    <label class="form-check-label" for="LightTheme">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2" checked="">
                    <label class="form-check-label" for="DarkTheme">Dark</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDarkTheme" value="option3">
                    <label class="form-check-label" for="SemiDarkTheme">Semi Dark</label>
                </div>
                <hr>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="MinimalTheme" value="option3">
                    <label class="form-check-label" for="MinimalTheme">Minimal Theme</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="ShadowTheme" value="option4">
                    <label class="form-check-label" for="ShadowTheme">Shadow Theme</label>
                </div>
            </div>
        </div>
        <!--end theme customization-->
        <!--plugins-->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
        <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
        <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
        <!--BS Scripts-->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
