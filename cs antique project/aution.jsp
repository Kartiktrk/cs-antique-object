<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>

<html>
</center>
<script>
    var target = new Date(2021,07,21,18,51,00,00);
    function myFunction() {
            setInterval(function () { var date = new Date()
             if((70-(date.getSeconds())) >= 13 ){
                 document.getElementById("time").innerHTML=""+(60-(date.getSeconds()));
             }
             else{
                 window.parent.location.href = "congrats.html";
             } 
            }, 1000);
        }
    
</script>
<body>
<button onclick="myFunction()">Haaaa</button>
<p id="time"></p>
<div>
<center><table border = '1' style="margin-top:10%;width:80%;border-radius:2rem;border:solid black;border-collapse:collapse;" ><th>Bid Name</th><th>Bid Amount</th>
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
