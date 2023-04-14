/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author chandnipatel
 */
@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
             
        response.setContentType("text/html");  
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from users where username='"+ username +"' and password='"+ password +"'");   
            
            if (rs.next()) {
                response.sendRedirect("./index.jsp");
            }else
            {   
                response.sendRedirect("./login.jsp");
            }
        }  
             catch (ClassNotFoundException | SQLException e) 
            {  
         }  
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
