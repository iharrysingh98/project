<%@ page language="java" import="java.sql.*" %>

 <body background = "images\blur.jpg">
<%
   try{
        String uid=request.getParameter("cancel");
    Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
             //    ----- Connection Established ------

         PreparedStatement pst=con.prepareStatement("select Mname from meetingtable where Mname=?");
                pst.setString(1,uid);
         ResultSet rs=pst.executeQuery();
         if(rs.next())
         {
               
                pst=con.prepareStatement("delete from MeetingTable where Mname=?");
                        pst.setString(1,uid);
                if((pst.executeUpdate()) > 0)
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" Meeting is cancelled.  </h1></center> ");
                }
                else
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" CANNOT CANCEL THE MEETING. </h1></center>  ");
                }
         }
         else
         {
                        out.println("<br><br><br><br><center><h1>    "+uid+" Meeting is now not scheduled.  </h1></center> ");
         }   
       }catch(Exception e)
       {
          out.println(e);
       }
%>
<%
   try{
        String uid=request.getParameter("cancel");
    Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
             //    ----- Connection Established ------

         PreparedStatement pst=con.prepareStatement("select sname from event where sname=?");
                pst.setString(1,uid);
         ResultSet rs=pst.executeQuery();
         if(rs.next())
         {
               
                pst=con.prepareStatement("delete from event where sname=?");
                        pst.setString(1,uid);
                if((pst.executeUpdate()) > 0)
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" Event is cancelled.  </h1></center> ");
                }
                else
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" CANNNOT CANCEL THE Event. </h1></center>  ");
                }
         }
         else
         {
                        out.println("<br><br><br><br><center><h1>    "+uid+" Event is now not scheduled.  </h1></center> ");
         }   
       }catch(Exception e)
       {
          out.println(e);
       }
%>


<p>
<center>
      "Your meeting has been cancelled ! Please <a href='cancelmeeting.html'>Create another Meeting or Event</a> if you want !!
</center>

</body>


