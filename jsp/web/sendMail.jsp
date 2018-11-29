<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<jsp:useBean id="mail" scope="session" class="jMail.Mail" />
<jsp:setProperty name="mail" property="to" param="to" />
<jsp:setProperty name="mail" property="from" value="hardeep1611981155@yahoo.com" />
<jsp:setProperty name="mail" property="smtpServ" value="smtp.yahoo.com" />
<jsp:setProperty name="mail" property="subject" param="subject" />
<jsp:setProperty name="mail" property="message" param="message" />

 <body background = "images\blur.jpg" style = "background-attachment: fixed;">

<%
String to = mail.getTo();
int result;
result = mail.sendMail();
if(result == 0){
    out.println(" Mail Successfully Sent to "+to);
}
else{
    out.println(" Mail NOT Sent to "+to);
}  
%>
</body