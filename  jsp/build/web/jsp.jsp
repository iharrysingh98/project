<%-- 
    Document   : jsp
    Created on : 31 Oct, 2018, 1:44:40 PM
    Author     : hardeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time dekhlo</title>
    </head>
    <body>
                <style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
        <h2>Current Date</h2>
        <p>
            Today's Date:<%=(new java.util.Date())%>
            
        </p>
    
    </body>
</html>
