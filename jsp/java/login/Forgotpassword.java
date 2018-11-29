
package login;
import java.io.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.ResultSet;


public class Forgotpassword extends HttpServlet {

 
 @Override
 public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        res.setContentType("text/html; charset=UTF-8");
        //PrintWriter out=res.getWriter();
        String email = req.getParameter("email");
        String password=req.getParameter("password");
        String sl = "";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st = con.createStatement();
            
            
         ResultSet rs = st.executeQuery("Select email,password from user where email='"+email+"'");
      if(rs.next()){
          String query = "UPDATE user SET password = '"+password+"' where email='"+email+"'";
          int i=st.executeUpdate(query);
          res.sendRedirect("index.html");
      }
      else
      {
          res.sendRedirect("forget.html");
      }
      }
        catch(ClassNotFoundException | SQLException e)
        {
            //out.print(e);
        }
        }
 }