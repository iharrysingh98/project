<%-- 
    Document   : feedback
    Created on : 28 Nov, 2018, 12:36:04 AM
    Author     : hardeep
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <style>
        
        h1{
			float: center;
			color: crimson;
			font-family: Segoe Print;
			background-color: white;
			border-radius: 10px;
			padding: 10px;
		}
        
    </style>
     <body background = "images\blur.jpg">
    <%
        
        try{
    String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mobno=request.getParameter("mobno");
String event=request.getParameter("event");
String subject=request.getParameter("subject");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("insert into feedback(fname,lname,event,subject)values('"+fname+"','"+lname+"','"+mobno+"','"+event+"','"+subject+"')");
    out.println("<h1>Thank you for your feedback ! Please <a href='home.html'>go to home page for further enquiry</a> to continue.</h1>");
}
 catch (Exception e) {
            out.print("Error aaya hai..." + e);
            System.out.println(e);
        }

        out.close();
    }  
  
}
%>
    </body>
</html>
