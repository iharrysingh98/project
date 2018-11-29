<%-- 
    Document   : logout
    Created on : Nov 12, 2018, 9:13:18 PM
    Author     : HARDEEP SINGH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


 <body background = "images\blur.jpg" style = "background-attachment: fixed;">
session.invalidate();
                 <script>
	alert("Logged out successfully!");
	location = 'index.html';
    </script>


</body>

