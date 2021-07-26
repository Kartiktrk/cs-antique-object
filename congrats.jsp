<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.PreparedStatement"%>
<html>
  <script href = "userglobal.js"></script>  
    <body>
    <br><br><br>
    <%
          HttpSession sesn = request.getSession();
          String w = sesn.getAttribute("username").toString();
          out.println("<center><h1 id = 'username' style='color:white;'>"+w+"</h1></center>");
    %>
    <%
       Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM Auction;");
              int s = 0;
              String user = "null";
              while(rs.next()){
                  user = rs.getString("BiderName");
                  String pwd = rs.getString("BiderPassword");
                  sesn.setAttribute("priceaut",pwd);
                  break;
              }
              PreparedStatement ps = con.prepareStatement("DELETE FROM Auction;");
              ps.executeUpdate();
              out.println(user);
              out.println(w);
              if(user.equals(w)){
                  out.println("<style>body{background : url('confeti.jpg');}</style>");
                  out.println("<center><img src = 'https://media.giphy.com/media/dalJ0CpF7hwmN1nZXe/giphy.gif' width='20%'></center>");
                  out.println("<center><h1 style='color:white'>You Won!!</h1></center>");
                  out.println("<form action='addtocart.jsp' method='POST'>");
                  out.println("<center><button style='background:black.color:white'>Order Now</button></center>");
                  out.println("<input type='text' value='aut' name='Id' style='visibility:hidden;'/>");
                  out.println("</form>");
              }
              else{
                  out.println("<style>body{background : black;}</style>");
                  out.println("<center><img src = 'https://media.giphy.com/media/348bJfTR7gk4E/giphy.gif' width='20%'></center>");
                  out.println("<center><h1 style='color:white'>You Lost</h1></center>");
                  out.println("<center><h1 style='color:white'>Winner is "+user+"</h1></center>");
                  out.println("<meta http-equiv='refresh' content='10;url=home.jsp?user="+w+"'/>");
              }
    %>
    
    </body>
</html>