<%@ page import="java.sql.*"%>







<%!
Connection con;
Statement  st;
String sql,s,t,u,v,w,x,y,z,m,n,o;


%>
 <body background = "images\blur.jpg" style = "background-attachment: fixed;">
<%
try
{

Class.forName("com.mysql.cj.jdbc.Driver");

s=request.getParameter("a");
t=request.getParameter("b");
u=request.getParameter("c");
v=request.getParameter("d");
w=request.getParameter("e");
x=request.getParameter("f");
y=request.getParameter("g");
z=request.getParameter("h");
m=request.getParameter("i");
n=request.getParameter("j");
o=request.getParameter("k");



}
catch(ClassNotFoundException e)
{
out.println(e.getMessage());
}

try
{


con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");

st=con.createStatement();

sql="insert into department values('"+s+"','"+t+"','"+u+"','"+v+"','"+w+"','"+x+"','"+y+"','"+z+"','"+m+"','"+n+"','"+o+"')";

st.executeQuery(sql);
}
catch(Exception e)
{
out.println("Department Meeting Scheduled Sucsessfully");

}
%>
</body>
