package login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SignupServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
       
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm_password=request.getParameter("confirm_password");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("insert into user(username,email,password,confirm_password)values('"+username+"','"+email+"','"+password+"','"+confirm_password+"')");
    out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
 catch (Exception e) {
            out.print("Error aaya hai..." + e);
            System.out.println(e);
        }

        out.close();
    }  
  
}