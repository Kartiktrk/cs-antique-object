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

public class create extends HttpServlet {
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
              String item = req.getParameter("item");
              String date = req.getParameter("date");
              String time = req.getParameter("timings");
              int price = Integer.parseInt(req.getParameter("amt")); 
              String desc = req.getParameter("description");
              String image = req.getParameter("image");
              qry = con.prepareStatement("INSERT INTO AuctionSchedule(Item,Timings,Date,itemdesc,startprice,Item_Name) VALUES (?,?,?,?,?,?);");
              qry.setString(1,image);
              qry.setString(2,time);
              qry.setString(3,date);
              qry.setString(4,desc);
              qry.setInt(5,price);
              qry.setString(6,item);
              qry.executeUpdate();
              RequestDispatcher rd = req.getRequestDispatcher("create_auction.jsp");
              rd.forward(req,res);
              qry.close();
              con.close();

        }
        catch(Exception e){
            System.out.println("Try Again.");
        }
    }
}