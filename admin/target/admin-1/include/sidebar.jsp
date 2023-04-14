<%-- 
    Document   : sidebar
    Created on : 11-Apr-2023, 9:56:02 pm
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

      <aside class="sidebar-wrapper">
          <div class="sidebar-header">
            <div class="logo-icon">
              <img src="assets/images/logo-icon.png" class="logo-img" alt="">
            </div>
            <div class="logo-name flex-grow-1">
              <h5 class="mb-0">Admin</h5>
            </div>
            <div class="sidebar-close ">
              <span class="material-symbols-outlined">close</span>
            </div>
          </div>
          <div class="sidebar-nav" data-simplebar="true">
            
              <!--navigation-->
              <ul class="metismenu" id="menu">
                <li>
                  <a href="index.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">home</span>
                    </div>
                    <div class="menu-title">Dashboard</div>
                  </a>
                </li>
                
                <li>
                  <a href="category.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="menu-title">Category</div>
                  </a>
                </li>
                
                <li>
                  <a href="brand.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="menu-title">Brand</div>
                  </a>
                </li>
                
                <li>
                  <a href="products.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="menu-title">Products</div>
                  </a>
                </li>
                
                <li>
                  <a href="users.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="menu-title">User</div>
                  </a>
                </li>
                
                <li>
                  <a href="orders.jsp">
                    <div class="parent-icon"><span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="menu-title">Order</div>
                  </a>
                </li>
                
                
                
                <li>
                  <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><span class="material-symbols-outlined">apps</span>
                    </div>
                    <div class="menu-title">Web Setting</div>
                  </a>
                  <ul>
                    <li> <a href="web.jsp"><span class="material-symbols-outlined">arrow_right</span>Web</a>
                    </li>
                    <li> <a href="about_us.jsp"><span class="material-symbols-outlined">arrow_right</span>About Us</a>
                    </li>
                  </ul>
                </li>
                
                
                
              </ul>
              <!--end navigation-->

              
          </div>
          <div class="sidebar-bottom dropdown dropup-center dropup">
              <div class="dropdown-toggle d-flex align-items-center px-3 gap-3 w-100 h-100" data-bs-toggle="dropdown">
                <div class="user-img">
                   <img src="assets/images/avatars/01.png" alt="">
                </div>
                <div class="user-info">
                  <h5 class="mb-0 user-name">Tejash Patel</h5>
                  <p class="mb-0 user-designation">Administrator</p>
                </div>
              </div>
              <ul class="dropdown-menu dropdown-menu-end">
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  account_circle
                  </span><span>Profile</span></a>
                </li>
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  tune
                  </span><span>Settings</span></a>
                </li>
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  dashboard
                  </span><span>Dashboard</span></a>
                </li>
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  account_balance
                  </span><span>Earnings</span></a>
                </li>
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  cloud_download
                  </span><span>Downloads</span></a>
                </li>
                <li>
                  <div class="dropdown-divider mb-0"></div>
                </li>
                <li><a class="dropdown-item" href="javascript:;"><span class="material-symbols-outlined me-2">
                  logout
                  </span><span>Logout</span></a>
                </li>
              </ul>
          </div>
     </aside>
