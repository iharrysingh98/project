<%-- 
    Document   : login
    Created on : 31 Oct, 2018, 2:37:21 PM
    Author     : hardeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
        
       <%=request.getParameter("uname")%>
       <%=request.getParameter("pass")%>
        
    </body>
</html>
