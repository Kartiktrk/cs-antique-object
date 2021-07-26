import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*; 

public class email extends HttpServlet {
    //Connection con;
    PreparedStatement qry;

    @Override
    public void doGet(HttpServletRequest req , HttpServletResponse res)
    throws ServletException,IOException
    {
        try{
              res.setContentType("text/html");                              
              PrintWriter out = res.getWriter();
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              String name = req.getParameter("email_name");
              String email = req.getParameter("email_id");
              String desc = req.getParameter("description");
              String subject = req.getParameter("subject");
              qry = con.prepareStatement("INSERT INTO Queries(Name,Email,Subject,Message) VALUES (?,?,?,?);");
              qry.setString(1,name);
              qry.setString(2,email);
              qry.setString(3,subject);
              qry.setString(4,desc);
              qry.executeUpdate();
              RequestDispatcher rd = req.getRequestDispatcher("contact.html");
              rd.forward(req,res);
              qry.close();
              con.close();

        }
        catch(Exception e){
            System.out.println("Try Again.");
        }
    }
}