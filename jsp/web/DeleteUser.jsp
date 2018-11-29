<%@ page language="java" import="java.sql.*" %>
<style>
* {
    box-sizing: border-box;
}
button
		{
			border-radius: 2px;
			background-color: crimson;
			color: white;
			font-size: 20px;
			padding: 3px 3px 3px 3px;
			margin: 0px 5px 5px 0px;
		}
h2 {
    text-align: center;
    text-transform: uppercase;
    color: #DC143C;
}
</style>
<body background = "images\blur.jpg">
<%
   try{
        String uid=request.getParameter("uid");
    Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
             //    ----- Connection Established ------

         PreparedStatement pst=con.prepareStatement("select email from user where email=?");
                pst.setString(1,uid);
         ResultSet rs=pst.executeQuery();
         if(rs.next())
         {
               
                pst=con.prepareStatement("delete from user where email=?");
                        pst.setString(1,uid);
                if((pst.executeUpdate()) > 0)
                {
                        out.println("<br><br><br><br><center><h1>   User "+uid+" User deleted.  </h1></center> ");
                }
                else
                {
                        out.println("<br><br><br><br><center><h1>   User "+uid+" Can't be Deleted from Login. </h1></center>  ");
                }
         }
         else
         {
                        out.println("<br><br><br><br><center><h1>   User "+uid+" Does not Exist.  </h1></center> ");
         }   
       }catch(Exception e)
       {
          out.println(e);
       }
%>

<p>
<center>
    
        <a href="logout.jsp"> User Deleted Sign Up Again </a>
</center>

</body>


