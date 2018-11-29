/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hardeep
 */
public class feedback extends HttpServlet  {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
       
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mobno=request.getParameter("mobno");
String event=request.getParameter("event");
String subject=request.getParameter("subject");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("insert into feedback(fname,lname,event,subject)values('"+fname+"','"+lname+"','"+mobno+"','"+event+"','"+subject+"')");
    out.println("Thank you for your feedback ! Please <a href='home.html'>go to home page for further enquiry</a> to continue.");
}
 catch (Exception e) {
            out.print("Error aaya hai..." + e);
            System.out.println(e);
        }

        out.close();
    }  
  
}