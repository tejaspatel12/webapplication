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
        <div class="row">
           <div class="col-12 col-lg-12">
              <div class="card">
                <form action="./AddProduct" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                       <div class="mb-4">
                          <h5 class="mb-3">Product Title</h5>
                          <input type="text" class="form-control" placeholder="Enter Product Title" name="name" id="name">
                       </div>
                        
                       <div class="mb-4">
                          <h5 class="mb-3">Category</h5>
                          <select class="form-control" name="cat">
                              
                              <option>Select Category</option>
                              <%
            
                                Connection con = null;
                                Statement st = null;
                                ResultSet resultSet = null;
                                try{
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                                    Statement stmt = con.createStatement();  
                                    ResultSet rs = stmt.executeQuery("select * from category");   
                                    while (rs.next()) 
                                    { 
                                %>
                        
                              <option value="<%=rs.getString("categoryid")%>"><%=rs.getString("name")%></option>
                              
                                <% 
                                }}  
                                    catch (Exception e) 
                                   {  
                                    out.println("error");  
                                }  
                                %>  
                            
                          </select>
                       </div>
                          
                           
                       <div class="mb-4">
                          <h5 class="mb-3">Brand</h5>
                          <select class="form-control" name="brand">
                              
                            <option>Select Brand</option>
                            <%
                              try{
                                  Class.forName("com.mysql.cj.jdbc.Driver");
                                  con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                                  Statement stmt = con.createStatement();  
                                  ResultSet rs = stmt.executeQuery("select * from brand");   
                                  while (rs.next()) 
                                  { 
                              %>

                            <option value="<%=rs.getString("bid")%>"><%=rs.getString("bname")%></option>

                              <% 
                              }}  
                                  catch (Exception e) 
                                 {  
                                  out.println("error");  
                              }  
                              %>  

                        </select>
                       </div>
                        
                        <div class="mb-4">
                          <h5 class="mb-3">Product images</h5>
                          <input id="fancy-file-upload" class="form-control" type="file" name="file" accept=".jpg, .png, image/jpeg, image/png">
                       </div>
                                
                        <div class="mb-4">
                          <h5 class="mb-3">Product Quantity</h5>
                          <input type="number" class="form-control" placeholder="Enter Quantity" name="qty" id="qty">
                       </div>
                              
                        <div class="mb-4">
                          <h5 class="mb-3">Product Color</h5>
                          <input type="text" class="form-control" placeholder="Enter Color" name="color" id="color">
                       </div>
                              
                        <div class="mb-4">
                          <h5 class="mb-3">Product Size</h5>
                          <select class="form-control" name="size">
                              <option>Select Size</option>
                              <option "S">S</option>
                              <option "M">M</option>
                              <option "L">L</option>
                              <option "XL">XL</option>
                              <option "XXL">XXL</option>
                              <option "XXXL">XXXL</option>
                          </select>
                       </div>
                              
                        <div class="mb-4">
                          <h5 class="mb-3">Product Price</h5>
                          <input type="number" class="form-control" placeholder="Enter Price" name="price" id="price">
                       </div>
                              
                        <div class="mb-4">
                          <h5 class="mb-3">Product Description</h5>
                            <textarea class="form-control" id="des" name="des" rows="5" placeholder="Enter Description"></textarea>
                       </div>
                              
                            
                                

                        <div class="card-body">
                           <div class="d-flex align-items-center justify-content-between">
                              <button class="btn btn-success px-4" type="submit">Save Draft</button>
                              <button type="button" class="btn btn-danger px-4">Discard</button>
                           </div>
                        </div>

                    </div>
                </form>
              </div>
           </div>
        </div>
        <!--end row-->
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
