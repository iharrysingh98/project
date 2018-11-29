package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


public class CreateEvent extends HttpServlet {

    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        String sname = req.getParameter("sname");
        String sid = req.getParameter("sid");
        String time = req.getParameter("time");
        String date = req.getParameter("date");
       String place = req.getParameter("place");
       String tel = req.getParameter("tel");
       
            try {
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                    Class.forName("com.mysql.jdbc.Driver");
                String query="insert into event (sname,sid,time,date,place,tel) values ('"+sname+"','"+sid+"','"+time+"','"+date+"','"+place+"','"+tel+"')";
                Statement st=con.createStatement();
                int i= st.executeUpdate(query);
            if(i>0)
                  out.println("Thank you for creating an event ! Please Click Here <a href='schedulemeeting.html'> To Create a New Meeting !</a> to continue.");

            }
        catch(ClassNotFoundException | SQLException e)
        {
        out.println(e.getMessage());
        }
    }

}
