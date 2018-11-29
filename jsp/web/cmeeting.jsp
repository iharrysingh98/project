<html>
<%@page import="java.sql.*" %>
<head>
    <style>body {
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

a {
        color: #be0404;
        text-decoration: none;
}

#subright ul a {
        text-decoration: underline;
}

#wrapper {
        margin: auto;
        text-align: left;
        width: 750px;
        background: white;
}

#wrapperi {
        padding: 0px 2px;
        background: url(images/dot.gif) 319px 0px repeat-y;
}

#wrapperj {
        background: url(images/dot.gif) 526px 0px repeat-y;
}

#header, #search, #nav, #nav li, h2, #special, #special h3, #footnav,
#strategies li, #strategies ul {
        margin: 0;
        padding: 0;
}

#header {
        background: #26618d;
        border-bottom: 1px solid #fff;
        border-top: 2px solid #fff;
        margin-bottom: 1px;
}

.clear {
        clear: both;
        font-size: 1px;
        height: 5px;
        margin: 0 0 -4px 0;
}

#left {
        float: left;
        width: 310px;
}

#right {
        float: right;
        width: 421px;
}

#search {
        background: #eda135 url(images/search_icon.gif) 21px 14px no-repeat;
        border-bottom: 2px solid #004b83;
        padding: 8px 0px 8px 40px;
        margin-bottom: 4px;
}

#search .text {
        width: 180px;
}

#search .submit {
        background: #db8100;
        color: #e5e4e2;
        border: 1px solid #e5e4e2;
}

#nav {
        float: left;
        width: 123px;
        margin: 0;
        padding: 0;
}
h1{
			float: center;
			color: crimson;
			font-family: Segoe Print;
			background-color: white;
			border-radius: 10px;
			padding: 10px;
		}
                .button {
    border-radius: 5px;
    background-color: #cc0000;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<body>
 <button type="button" onclick="goBack()" class="button">Back</button>
<%
   
String Mname=request.getParameter("Mname");
String Mdescrip=request.getParameter("Mdescrip");	
String Mtype=request.getParameter("Mtype");		
String Stimeh=request.getParameter("Stimeh");		
String Stimem=request.getParameter("Stimem");          
String StimeAMPM=request.getParameter("StimeAMPM");	
String DurationH=request.getParameter("DurationH");	
String Durationm=request.getParameter("Durationm");	
String Sday=request.getParameter("Sday");		
String SMonth=request.getParameter("SMonth");		
String Syear=request.getParameter("Syear");		
String Moptions=request.getParameter("Moptions");	
String Nofpat=request.getParameter("Nofpat");		
String pwd=request.getParameter("pwd");		
String Collegeid=request.getParameter("Collegeid");	
String Emailid=request.getParameter("Emailid");		



  try{
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
   String vsql="insert into  MeetingTable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(vsql);
   ps.setString(1,Mname);
   ps.setString(2,Mdescrip);
   ps.setString(3,Mtype);
   ps.setString(4,Stimeh);
   ps.setString(5,Stimem);
   ps.setString(6,StimeAMPM);
   ps.setString(7,DurationH);
   ps.setString(8,Durationm);
   ps.setString(9,Sday);
   ps.setString(10,SMonth);
   ps.setString(11,Syear);
   ps.setString(12,Moptions);
   ps.setString(13,Nofpat);
   ps.setString(14,pwd);
   ps.setString(15,Collegeid);
   ps.setString(16,Emailid);
   
   ps.executeUpdate();

    out.println("<body bgcolor='crimson'><h3 align='center'><h1>Meeting Scheduled Successfully</h1>");

	       
}catch (Exception e) {

		out.println("SQLException: " + e.getMessage());
               
	}

%>
<script>
function goBack()
{
  window.history.back();
}
</script>
</body>
</html>
 