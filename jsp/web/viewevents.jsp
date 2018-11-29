
<%@page import="java.sql.*" %>


     <%
         try{
  String url="jdbc:mysql://localhost:3306/mydb";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","");
        String query="select * from event";
        Statement st=conn.createStatement();
        ResultSet Rs=st.executeQuery(query);
%>

   
<html>
<head>
    <head>
	<title>Events Table</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<style>button
		{
			border-radius: 5px;
			background-color: crimson;
			color: white;
			font-size: 20px;
			padding: 3px 3px 3px 3px;
			margin: 0px 5px 5px 0px;
		}</style>

<title>SCHEDULED CONFERENCES</title>
</head>
 <body background = "images\blur.jpg">
     
     
     
     
<h2 align="center" >SCHEDULED MEETINGS</h2>


<div class="limiter">
		<div class="container-table100">
			
		<div class="wrap-table100">
				<div class="table100">


<table border="2" align=center>
        <button type="button" onclick="goBack()" class="button">Back</button>
<thead>
<tr bgcolor="#f0e8ad">
<FONT FACE="Impact" COLOR="#FFFF99">
<th><font size="3" COLOR="#FFFF99">EVENT NAME</th>
<th><font size="3" COLOR="#FFFF99">EVENT ID</th>
<th><font size="3" COLOR="#FFFF99">EVENT TIME</th>
<th><font size="3" COLOR="#FFFF99">EVENT DATE</th>
<th><font size="3" COLOR="#FFFF99">EVENT PLACE</th>
<th><font size="3" COLOR="#FFFF99">CONTACT</th>
</FONT>
<%
while(Rs.next())
{
%><tr bgcolor="#e9beca">
        

   <td><%out.println(Rs.getString(1));%></td>
   <td><%out.println(Rs.getString(2));%></td>
  <td><%out.println(Rs.getString(3));%></td>
  <td><%out.println(Rs.getString(4));%></td>
  <td><%out.println(Rs.getString(5));%></td>
  <td><%out.println(Rs.getString(6));%></td>
 
   </tr>
</table>
                                </div>
                        </div>
                </div>
</div>

               <script>
function goBack()
{
  window.history.back();
}
</script>
<% 
  }
%>

</thead>
</body>
</html>

<%
}
catch(Exception e){out.println(e.getMessage());}

%>

 


 
