<%-- 
    Document   : index
    Created on : 11-Apr-2023, 9:55:26 pm
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin</title>

    <!--plugins-->
    <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" >
    <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet">
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet">
    <!-- loader-->
	  <link href="assets/css/pace.min.css" rel="stylesheet">
	  <script src="assets/js/pace.min.js"></script>
    <!--Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/icons.css" >

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/dark-theme.css" rel="stylesheet">
    <link href="assets/css/semi-dark-theme.css" rel="stylesheet">
    <link href="assets/css/minimal-theme.css" rel="stylesheet">
    <link href="assets/css/shadow-theme.css" rel="stylesheet">
     
  </head>
  <body>
      
    <%@include file="include/header.jsp"%>


     <!--start sidebar-->
     <%@include file="include/sidebar.jsp"%>
     <!--end sidebar-->
     <%
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
     %>


    <!--start main content-->
     <main class="page-content">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-xl-4 row-cols-xxl-4">
        <div class="col">
          <div class="card radius-10 border-0 border-start border-primary border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Total Orders</p>
                  <h4 class="mb-0 text-primary">
                      <%
                        int i=0;
                        try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                            Statement stmt = con.createStatement();  
                            ResultSet rs = stmt.executeQuery("select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid");   
                            while (rs.next()) 
                            {
                            i++;
                            
                        %>
                        <%=i%>
                      <% 
                        }}  
                        catch (Exception e) 
                       {  
                        out.println("error");  
                    }  
                    %>  
                  </h4>
                </div>
                <div class="ms-auto widget-icon bg-primary text-white">
                  <i class="bi bi-basket2-fill"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-success border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Total Revenue</p>
                  <h4 class="mb-0 text-success">
                      <%
                        int k=0;
                        try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                            Statement stmt = con.createStatement();  
                            ResultSet rs = stmt.executeQuery("select * from orders");   
                            while (rs.next()) 
                            {
                            k = k +Integer.parseInt(rs.getString("amount"));
                           
                            
                        %>
                        <%=k%>
                      <% 
                        }}  
                        catch (Exception e) 
                       {  
                        out.println("error");  
                    }  
                    %>  
                  </h4>
                </div>
                <div class="ms-auto widget-icon bg-success text-white">
                  <i class="bi bi-currency-dollar"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-success" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-danger border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Bounce Rate</p>
                  <h4 class="mb-0 text-danger">24.25%</h4>
                </div>
                <div class="ms-auto widget-icon bg-danger text-white">
                  <i class="bi bi-graph-down-arrow"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-warning border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">New Users</p>
                  <h4 class="mb-0 text-warning">
                      <%
                        int j=0;
                        try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                            Statement stmt = con.createStatement();  
                            ResultSet rs = stmt.executeQuery("select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid");   
                            while (rs.next()) 
                            {
                            j++;
                            
                        %>
                        <%=j%>
                      <% 
                        }}  
                        catch (Exception e) 
                       {  
                        out.println("error");  
                    }  
                    %>  
                    
                  </h4>
                </div>
                <div class="ms-auto widget-icon bg-warning text-dark">
                  <i class="bi bi-people-fill"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-warning" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
      </div><!--end row-->

      
   
       <div class="card">
        <div class="card-body">
          <div class="customer-table">
            <div class="table-responsive white-space-nowrap">
               <table class="table align-middle">
                <thead class="table-light">
                  <tr>
                    <th>
                      <input class="form-check-input" type="checkbox">
                    </th>
                    <th>Order Id</th>
                    <th>Price</th>
                    <th>Customer</th>
                    <th>Payment Status</th>
                    <th>Order Status</th>
                    <th>Delivery Type</th>
                    <th>Date</th>
                  </tr>
                 </thead>
                 <tbody>
                     
                <%

                                       
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
                       <input class="form-check-input" type="checkbox">
                     </td>
                     <td>
                      <a href="javascript:;">#<%=rs.getString("ordered")%></a>
                     </td>
                     <td>$<%=rs.getString("amount")%></td>
                     <td>
                      <a class="d-flex align-items-center gap-3" href="javascript:;">
                        <p class="mb-0 customer-name fw-bold"><%=rs.getString("firstname") +" "+ rs.getString("lastname")%></p>
                      </a>
                     </td>
                     <td><span class="lable-table bg-success-subtle text-success rounded border border-success-subtle font-text2 fw-bold">Completed<i class="bi bi-check2 ms-2"></i></span></td>
                     <td>
                         <%
                                            if (rs.getInt("orderstatus") == 0) {
                                            %>
                                            <span class="lable-table bg-danger-subtle text-danger rounded border border-danger-subtle font-text2 fw-bold">Pending
                             <i class="bi bi-x-lg ms-2"></i></span>
                                                
                                            <%
                                            } else if (rs.getInt("orderstatus") == 1) {
                                            %>
                                            <span class="lable-table bg-danger-subtle text-danger rounded border border-danger-subtle font-text2 fw-bold">Processing
                             <i class="bi bi-x-lg ms-2"></i></span>
                                            <%
                                             } else if (rs.getInt("orderstatus") == 2) {
                                            %>
                                            <span class="lable-table bg-success-subtle text-success rounded border border-success-subtle font-text2 fw-bold">Out For Delivery
                             <i class="bi bi-x-lg ms-2"></i></span>
                                            <%
                                             }
                                            else{
                                            %>
                                            <span class="lable-table bg-success-subtle text-success rounded border border-success-subtle font-text2 fw-bold">Delivered
                             <i class="bi bi-x-lg ms-2"></i></span>
                                                
                                            <%
                                             }
                                            %>
                         
                     </td>
                     <td>Card</td>
                     <td><%=rs.getString("ordertime")%></td>
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
   <script src="assets/plugins/apex/apexcharts.min.js"></script>
   <script src="assets/js/index.js"></script>
    <!--BS Scripts-->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
