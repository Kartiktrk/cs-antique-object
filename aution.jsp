<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<meta http-equiv="refresh" content="2">
<html>
</center>
<script>
    window.onload = function myFunction() {
            setInterval(function () { var date = new Date()
             if((70-(date.getSeconds())) >= 13 ){
                 document.getElementById("time").innerHTML=""+(60-(date.getSeconds()));
             }
             else{
                 <%
                 HttpSession sesn = request.getSession();
                 String w = sesn.getAttribute("username").toString();
                 out.println("window.parent.location.href = 'congrats.jsp';");
                 %>
             } 
            }, 1000);
        }
    
</script>

<style>
table{
        border : solid yellow;
        border-radius : 2rem;
        width:90%;
        color:white;
        text-align: center;
    }
</style>
<body style="color:white">
<p><strong>Time-left:<strong></p><p id="time">.</p>
<div>
<center><table border = '1' id = 'disapear'style="margin-top:10%;" ><th>Bidder Name</th><th>Bid Amount</th>
     <%                           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM Auction;");
              int s = 0;
              while(rs.next()){
                  String user = rs.getString("BiderName");
                  String pwd = rs.getString("BiderPassword");
                  out.println("<tr><td>"+user+"</td><td>"+pwd+"</td></tr>");
              }
              out.println("</div>");
     %>  
     </table></center>
</body>

<html>
