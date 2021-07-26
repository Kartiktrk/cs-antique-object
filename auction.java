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

public class auction extends HttpServlet {
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
              HttpSession sesn = req.getSession();
              String w = sesn.getAttribute("username").toString();
              int money = Integer.parseInt(req.getParameter("money"));
              int min = 1000;
              if(money > min){
              qry = con.prepareStatement("INSERT INTO Auction(BiderName,BiderPassword) VALUES (?,?);");
              qry.setString(1,w);
              qry.setInt(2,money);
              qry.executeUpdate();
              min = money;
              RequestDispatcher rd = req.getRequestDispatcher("autc.jsp");
              rd.forward(req,res);
              }else{
                  req.setAttribute("alert","alert");
                  RequestDispatcher rd = req.getRequestDispatcher("autc.jsp");
                  rd.forward(req,res);
              }
              qry.close();
              con.close();


        }
        catch(Exception e){
            System.out.println("Try Again.");
        }
    }
}