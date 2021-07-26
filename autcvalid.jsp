<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>
<%
   Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              String userid = req.getParameter("username");
              String password = req.getParameter("password");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM Users ;");
              int s = 0;
              while(rs.next()){
                  String user = rs.getString("Username");
                  String pwd = rs.getString("Password");
                  out.println(user);
                  if(user.equals(userid) && pwd.equals(password)){
                      out.println("hello");
                      s = 1;
                      break;
                  }
              }
              
              out.println("hi");
              req.setAttribute("user",userid);
              if(s == 1){
                 RequestDispatcher rd = req.getRequestDispatcher("auction_home.jsp");
                 rd.forward(req,res);
              }
              else{
                  RequestDispatcher rd = req.getRequestDispatcher("index.html");
                  rd.forward(req,res);
              }
              qry.close();
              con.close();

        }
        catch(Exception e){
            System.out.println("Try Again.");
        }
%>
// public class autcvalid extends HttpServlet {

//     //Connection con;

//     @Override
//     protected void doPost(HttpServletRequest req , HttpServletResponse res)
//     throws ServletException,IOException
//     {
//         try{
//               res.setContentType("text/html");                              
//               PrintWriter out = res.getWriter();
//               Class.forName("com.mysql.jdbc.Driver");
//               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
//               String userid = req.getParameter("username");
//               String password = req.getParameter("password");
//               Statement qry = con.createStatement();
//               ResultSet rs = qry.executeQuery("SELECT * FROM Users ;");
//               int s = 0;
//               while(rs.next()){
//                   String user = rs.getString("Username");
//                   String pwd = rs.getString("Password");
//                   out.println(user);
//                   if(user.equals(userid) && pwd.equals(password)){
//                       out.println("hello");
//                       s = 1;
//                       break;
//                   }
//               }
              
//               out.println("hi");
//               req.setAttribute("user",userid);
//               if(s == 1){
//                  RequestDispatcher rd = req.getRequestDispatcher("auction_home.jsp");
//                  rd.forward(req,res);
//               }
//               else{
//                   RequestDispatcher rd = req.getRequestDispatcher("index.html");
//                   rd.forward(req,res);
//               }
//               qry.close();
//               con.close();

//         }
//         catch(Exception e){
//             System.out.println("Try Again.");
//         }
//     }
// }