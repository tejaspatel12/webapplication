/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 *
 * @author chandnipatel
 */
@WebServlet(name = "UserRegister", urlPatterns = {"/UserRegister"})
//@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class UserRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
            
        response.setContentType("text/html");
        
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String mail=request.getParameter("mail");
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        String cpass=request.getParameter("cpass");
        String contact= "12345";
        String address= "addreess";
        
        System.out.print("fname : "+fname);
        System.out.print("lname : "+lname);
        
   
            
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            st = con.createStatement();

//            int i=st.executeUpdate("INSERT INTO users(firstname,lastname,username,password,email,contact,address) values('" + fname + "', '" +lname+ "','" + user + "', '" +pass+ "','" + mail + "', '22','0')");

int i=st.executeUpdate("INSERT INTO users(firstname,lastname,username,password,email,contact,address) values('"
                            + fname + "','" + lname + "', '" + user + "','" + pass + "','" + mail
                            + "', '" + contact + "','" + address + "')");
            System.out.println("Data is successfully inserted!");
            response.sendRedirect("./login.jsp");

        }
        catch(Exception e){
                System.out.println("Exception: " + e);
        }
    }

}
