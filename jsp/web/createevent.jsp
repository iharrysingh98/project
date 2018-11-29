<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%>



<style>
    body {
        font-family: tahoma, helvetica, arial, sans-serif;
        font-size: 11px;
        text-align: center;
        background: #d3d2d1;
}

h3, p { 
        font-size: 11px; 
        margin: 1em 0.5em 0.5em 0.5em; 
}

p { 
        margin-top: 0.5em; 
}

img {
        border: 0;
}
    
    
    
</style>
<body background = "images\blur.jpg">
           <%
               try{
               
        String sname = request.getParameter("sname");
        String sid = request.getParameter("sid");
        String time = request.getParameter("time");
        String date = request.getParameter("date");
        String place = request.getParameter("place");
        String tel = request.getParameter("tel");
       
  
            
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                    Class.forName("com.mysql.jdbc.Driver");
                String query="insert into event (sname,sid,time,date,place,tel) values ('"+sname+"','"+sid+"','"+time+"','"+date+"','"+place+"','"+tel+"')";
                Statement st=con.createStatement();
                int i= st.executeUpdate(query);
            if(i>0)
            
                  out.println("Thank you for creating an event ! Please Click Here <a href='schedulemeeting.html'> To Create a New Meeting !</a> to continue.");

            
            }
       catch(IOException | ClassNotFoundException | SQLException e)
       { 
           out.println(e.getMessage()); 
       }
            
    


%>
</body>

