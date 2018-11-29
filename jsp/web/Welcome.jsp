<%-- 
    Document   : Welcome
    Created on : 1 Nov, 2018, 9:30:14 AM
    Author     : hardeep
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <style>
		@font-face
		{
			font-family: DS Digi;
			src: url('sources/DS-DIGI.TTF')
		}
		@font-face
		{
			font-family: Orange Juice;
			src: url('sources/orange juice 2.0.ttf');
		}
		*
		{
			font-family: Segoe UI;
		}
		legend
		{
			color: crimson;
		}
		iframe
		{
			border: 2.5px solid;
			border-radius: 20px;
		}
		button
		{
			padding: 10px 10px 10px 10px;
			border-radius: 5px;
			background-color: crimson;
			color: white;
			float: right;
			font-size: 20px;
			font-family: Impact;
			margin: 0px 5px 5px 0px;
		}
		button:hover
		{
			background-color: black;
		}
		
		h2
		{
			float: right;
			color: crimson;
			font-family: Segoe Print;
			background-color: white;
			border-radius: 20px;
			padding: 10px;
		}
		h2:hover
		{
			color: black;
			cursor: default;
		}
		</style>
                <style type="text/css">
<!--
.style1 {
	color: #FFFF99;
	font-size: 36px;
	font-weight: bold;
}
body {
	background-color: #336699;
}
-->
</style>


	
    </head>
    
          <body background = "images\main2.jpg" style = "background-attachment: fixed;">
    <div align="center"><span class="style1">Event Management System</span></div>

           <div style = "margin: 50px 100px 100px 100px;">
		    <%
     String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            
            
            try
            {
                String myUrl = "jdbc:mysql://localhost:3306/mydb";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(myUrl,"root","");
            //out.println("Hello 1");

                String query = "Select email,password from user where email='"+email+"' and password ='"+pass+"'";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
               if(rs.next())
                {
                    out.println("");
                   out.print("Hello "+email);}
               else
                   
                   out.println("");
        
                st.close();
            }
            catch(ClassNotFoundException e)
            {
                out.print(e);
            }
            catch(SQLException e)
            {
                out.print(e);
            }
            
           %>
           <a href = "logout.jsp" target = "top-right"><button type="button"> LOGOUT </button></a><br>
		<h2> Welcome <%=email%>! [admin]</h2>
                <iframe src = "buttons_admin.html" name = "tabs" width = "100%" height = "44px"> iframe1 </iframe><br>
          	<iframe src = "home.html" name = "output" width = "100%" height = "600px"> iframe2 </iframe>
                
            <table border=0 width=100% bgcolor=crimson>

                <tr><td align=center><font size=+1 color=white> For Any Further Query -->> Contact No:9992133038 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Email:hardeepsingh13598@gmail.com </td><tr>
            </table>
                
    </body>
</html>
