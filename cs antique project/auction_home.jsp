<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>
    <body style = "background:black;color:white;">
              <form action = "">
                <input type="button"value="Home"/>
              </form>  
                   <ul>
                    <li><a href = "#">Home</a></li>
                    <li><a href="#">Browse</a></li>
                    <li><a href="index.html">Login</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="auction_home.jsp">Auction</a></li>
                </ul>
        <br><br>
        <center><p style="font-size:2rem;color:white;">Welcome to Auction</p></center>
        <center><img src = "auction-1.jpg" style ="width:50%;margin-top:3%;"/></center><br><br><br>
        <center><p style="font-size:2rem;color:white;">Auction Schedule</p></center><br><br>
        <%
            
              RequestDispatcher rd = req.getRequestDispatcher("autcvalid");
              out.println("<form action='congrats.html' method = 'POST'>");
              String n = request.getAttribute("user").toString();
              out.println("<input type='text' value="+n+"/>");
              out.println("<button>Enter</button>");
              out.println("</form>");  
            
        %>
<center><table border = '1' style="width:80%;color:white;border:solid yellow;" ><th>ID</th><th>Item</th><th>Date</th>
     <%                           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM AuctionSchedule;");
              int s = 0;
              while(rs.next()){
                  String id = rs.getString("id");
                  String item = rs.getString("Item");
                  //String timimgs = rs.getString("Timings");
                  String date = rs.getString("Date");
                  out.println("<tr><td>"+id+"</td><td>"+item+"</td><td>"+date+"</td></tr>");
              }
              out.println("</div>");
     %>  
     </table></center>
     </body>

</html>
