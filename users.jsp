<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>

<style>
   body{
       background:black;
       color:white;
       font-family:Caslon Antique;
   }
   ul li a{
        color : white;
        text-decoration:none;
        padding : 0rem 1rem 0rem 1rem;
        transition: ease-in-out 300ms;
        border-radius : 0.5rem;
    }
    ul li{
        display:inline;
    }
    ul{
        list-style-type: none;
        float:right;
    }
    ul li a:hover{
        background-color: white;
        color: black;
    }
    table{
        border : solid yellow;
        border-radius : 1rem;
        border-radius : 2rem;
        width:90%;
        color:white;
        text-align: center;
        height:10rem;
    }
    table th{
        font-size:2rem;
    }
    table td{
        font-size:1.5rem;
    }
    h1{
        font-size:3rem;
    }
</style>
<body>
    <ul>
        <li><a href="admin.html">Home</a></li>
        <li><a href="index.html">Logout</a></li>
    </ul>
    <br><br>
<h1><center>Users</center></h1>
<center><table border = '1'><th>Username</th><th>Email</th>
     <%                           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery("SELECT * FROM Users;");
              int s = 0;
              while(rs.next()){
                  String user = rs.getString("Username");
                  String mail = rs.getString("Email");
                  out.println("<tr><td>"+user+"</td><td>"+mail+"</td></tr>");
                  s = s+1;
              }
              out.println("<center><h2>Total users = "+s+"</center></h2>");
              out.println("</div>");
     %>  

     </body>