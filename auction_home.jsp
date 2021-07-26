<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>
    <link rel="stylesheet" type="text/css" href="auctionhome.css"/>
    <body style = "background:black;color:white;">
                   <ul>
                    <li><a href = "home.jsp">Home</a></li>
                    <li><a href="product.html">Browse</a></li>
                    <li><a href="index.html">Login</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="auction_home.jsp">Auction</a></li>
                </ul>
                <img src="wordart.png" width='20%'/>
        <br><br>
        <center><h1 style="font-size:3rem;color:white;">Welcome to Auction</h1></center>
        <center><img src = "auction-1.jpg" style ="width:50%;margin-top:3%;"/></center><br><br><br>
        <center><p style="font-size:2rem;color:white;">Current Live Auction</p></center><br><br>
        <%
             HttpSession sesn = request.getSession();
             String w = sesn.getAttribute("username").toString();
        %>
        
<center><table border = '1'><th>Item</th><th>Item Image</th><th>Description</th><th>Strarting Price(Dollars)</th><th>Date</th><th>Timings</th><th>Status</th>
     <%                           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM AuctionSchedule;");
              int s = 0;
              rs.next();
                  String item_name = rs.getString("Item_Name");
                  String slot = rs.getString("Timings");
                  String item = rs.getString("Item");
                  String itemdesc = rs.getString("itemdesc");
                  int startprice = rs.getInt("startprice");
                  String date = rs.getString("Date");
                  out.println("<tr><td>"+item_name+"</td><td><img src='"+item+"'style='width:240px;' /></td><td>"+itemdesc+"</td><td>"+startprice+"</td><td>"+date+"</td><td>"+slot+"</td><td><button id = 'ent'><a href='wait.jsp'>Enter</a></button></td></tr>");
              out.println("</div>");
              sesn.setAttribute("itemaut","Ancient Chair");
              sesn.setAttribute("imageaut",item);
     %>  
     </table></center>
     </body>

</html>
