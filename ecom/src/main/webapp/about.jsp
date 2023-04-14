<%-- 
    Document   : about
    Created on : 14-Apr-2023, 12:35:45 pm
    Author     : chandnipatel
--%>

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
                <h2 class="title">About Us</h2>

                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">About Us</li>
                </ul>
            </div>
            <!-- Page Banner Content End -->

        </div>
    </div>
    <!-- Page Banner Section End -->

    <!-- History Section Start -->
    <div class="section section-padding-02">
        <div class="container">

            <!-- History content End -->
            <div class="history-content text-center">

                <%
                    try{
                      Class.forName("com.mysql.cj.jdbc.Driver");
                      con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                      Statement stmt = con.createStatement();  
                      ResultSet rs = stmt.executeQuery("select * from settings where sid='1'");   
                      while (rs.next()) 
                      { 
                  %>
                <div class="section-title-03">
                    <h6 class="sub-title">Our History</h6>
                    <h2 class="title"><%=rs.getString("webname")%></h2>
                </div>

                <p>><%=rs.getString("aboutus")%></p>
                <% 
                }}  
                             catch (Exception e) 
                            {  
                             out.println("error");  
                         }  
                %> 
            </div>
            <!-- History content End -->

            <!-- History Icon End -->
            <div class="text-center section-padding-02">
            </div>
            <!-- History Icon End -->

        </div>
    </div>
    <!-- History Section End -->


    <!-- Footer Start  -->
    <%@include file="include/footer.jsp"%>
    <!-- Footer End -->
