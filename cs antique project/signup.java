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

public class signup extends HttpServlet {

    //Connection con;
    PreparedStatement qry;

    @Override
    protected void doPost(HttpServletRequest req , HttpServletResponse res)
    throws ServletException,IOException
    {
        try{
              res.setContentType("text/html");                              
              PrintWriter out = res.getWriter();
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              String userid = req.getParameter("username");
              String password = req.getParameter("password");
              String email = req.getParameter("email");
              String dob = req.getParameter("DOB");
              qry = con.prepareStatement("INSERT INTO Users(Username,Password,Email,DOB) VALUES (?,?,?,?);");
              qry.setString(1,userid);
              qry.setString(2,password);
              qry.setString(3,email);
              qry.setString(4,dob);
              qry.executeUpdate();
              req.setAttribute("userid",userid);
              out.println("hi");
              RequestDispatcher rd = req.getRequestDispatcher("index.html");
              rd.forward(req,res);
              qry.close();
              con.close();

        }
        catch(Exception e){
            System.out.println("Try Again.");
        }
    }
}