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
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hardeep
 */
public class CreateEvent extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String n=request.getParameter("sname");  
String p=request.getParameter("sid");  
String e=request.getParameter("time");  
String d=request.getParameter("date");
String c=request.getParameter("place");  
String t=request.getParameter("tel"); 
          
        try {
            String myurl = "jdbc:mysql://localhost:3306/mydb";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(myurl, "root", "");

            PreparedStatement ps = conn.prepareStatement(
                    "insert into event values(?,?,?,?)");

            ps.setString(1, n);
            ps.setString(2, p);
            ps.setString(3, e);
            ps.setString(4, d);
            ps.setString(5, c);
            ps.setString(6, t);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.print("You are successfully registered...");
            } else {
                out.print("Some Error occured...");
            }

        } catch (Exception e2) {
            out.print("Error aaya hai..." + e2);
            System.out.println(e2);
        }

        out.close();
    }  
  
}
