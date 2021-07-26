<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>
<script>
       <%
          if(request.getAttribute("alert") != null){
                  out.println("alert('Enter Higher Amount');");
          }
       %>
</script>
<link rel = "stylesheet" type="text/css" href="autc.css">
    <body style="background:black;color:white;">
    <% 
         Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM AuctionSchedule;");
              int s = 0;
              rs.next();
                  String slot = rs.getString("Timings");
                  String item = rs.getString("Item");
                  String itemdesc = rs.getString("itemdesc");
                  int startprice = rs.getInt("startprice");
                  String date = rs.getString("Date");
                  out.println("<h3 id='about'>Item: "+itemdesc+".</h3>");
                  out.println("<img src='"+item+"' id='imagebid'/>");
    %>
        <%
             HttpSession sesn = request.getSession();
             String w = sesn.getAttribute("username").toString();
             sesn.setAttribute("itemaut",item);
             sesn.setAttribute("priceaut",startprice);
            out.println("<h1>Bidder: "+w+"</h1>");
        %>
        <h2>Minimum amount = <%out.println(startprice);%></h2>
        <form method = "GET" action="auction">
            <p>Enter Amount: </p>
            <input type = "number" name = "money"><br>
            <br><br>
            <input type = "submit"><br>
        </form>
        <h3>Total time = 60sec</h3>
       <iframe src='aution.jsp' style = 'width:100%;height:80%;border:none;'></iframe>
       

    </body>
</html>