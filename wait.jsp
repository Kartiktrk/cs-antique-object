
<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>
     <%                           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM AuctionSchedule;");
              int s = 0;
              String slot = "null";
              String item_name = "null";
              while(rs.next()){
                  item_name = rs.getString("Item_Name");
                  slot = rs.getString("Timings");
              HttpSession sesn = request.getSession();
              sesn.setAttribute("itemaut","Ancient Chair");
              break;
              }
      %>   

       <script>
      var curr = new Date();
      var g = '<% out.println(slot+"'");%>;
      const arr = g.split(":");
      var hour = curr.getHours();
      var min= curr.getMinutes();
      var second = curr.getSeconds();
      if(hour > 12){
            hour = hour - 12;
      }
     window.onload = function myFunction() {
            setInterval(function () { var date = new Date()
             if((70-(date.getSeconds())) <= 68 ){
                 document.getElementById("time").innerHTML=""+(60-(date.getSeconds()));
             }
             else{
                 document.getElementById("start").innerHTML="<center><button><a href='autc.jsp'>Start</a><center>";
                 document.getElementById("time").innerHTML="Auction Started";
                 clearInterval();
             } 
            }, 1000);
        }

 </script>
<body style = "background:black;color:white;font-family:Caslon Antique;">
 <center><h1>Time left : </h1><h1 id='time'></h1><center>
 <div style="border:solid gold;border-radius:1rem;width:80%;">
     <center><h1 style="font-size:3rem;">Instructions</h1></center>
     <ul>
       <li style="font-size:2rem;">The auction will run for 60 seconds</li>
       <li style="font-size:2rem;">Highest Bidder at end of auction wins</li>
       <li style="font-size:2rem;">If you win the auction you can pay for the item within next 10 days</li>
     <ul>
 </div>
 <center><p id = "start"></p></center>
 </body>
</html>