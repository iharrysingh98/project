<%-- 
    Document   : login
    Created on : 31 Oct, 2018, 2:37:21 PM
    Author     : hardeep
--%>



<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%


       String uname=request.getParameter("uname");
       String pass=request.getParameter("pass");
      
       
              Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "");
    Statement st=conn.createStatement();
    ResultSet rs;
            rs= st.executeQuery("Select userid,password from user where userid='"+uname+"' and password ='"+pass+"'");
     
                
if(rs.next())
{
    session.setAttribute("uname", uname);
    response.sendRedirect("Welcome.jsp");
}
else
{
    out.println("Invalid Password<a href='index.jsp>Try again</a>");
}

    
%>
    

