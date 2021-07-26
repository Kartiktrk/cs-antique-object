<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.PreparedStatement"%>
<html>
<head>
  <link rel = "stylesheet" type="text/css" href="cart.css"/>
</head>
<body>
 <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="product.html">Browse</a></li>
        <li><a href="index.html">Login</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="auction_home.jsp">Auction</a></li>
    </ul>
    <br><br><br><br><br>
<div>
<center><table border = "1" id="table_id">
<tr>
<th colspan="5"><h1>Cart</h1></th>
</tr>
<tr>
<td>Item Name</td><td>Item Image</td><td>Price</td><td>Payment</td><td>Remove</td>
    <%
         HttpSession sesn = request.getSession();
         String w = sesn.getAttribute("username").toString();
         Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM "+w+";");
              int s = 0;
              while(rs.next()){
                  String name = rs.getString("Items_Name");
                  String img = rs.getString("Items");
                  String price = rs.getString("Price");
                  out.println("<tr><td>"+name+"</td><td><img src='"+img+"'style='width:240px;' /></td><td>"+price+"</td><td><form action='payment.jsp' method='POST'><input id='inpt' type='text' value='"+name+"' name='item-name'/><br><button id='btn'>Pay</button></form></td>");
                  out.println("<td><form action='delete_item.jsp' method='POST'><input id='inpt' type='text' name='item-name' value='"+name+"'><br><button class='btn'>Delete</button></form></td></tr>");
              }
    %>

</table>
</body>    
</html>