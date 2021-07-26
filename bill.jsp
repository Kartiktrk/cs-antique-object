<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.PreparedStatement"%>

<html>
<body style="background-color:black;color:white">
   <style>
        #table_id{
            width : 70%;
            text-align:center;
            border : solid gold;
            border-radius : 1rem;
        }
        #table_id1{
            width : 70%;
            border : solid gold;
            border-radius : 1rem;
        }
        a{
            text-decoration:none;
            color:white;
        }
        button{
            background-color:black;
            border:none;
            border-radius:1rem;
        }
        a{
            background:black;
            transition : ease-in-out 300ms;
        }
        a:hover{
            background:white;
            color:black;
        }
   </style>
   <center><h2>Thank you, your order recieved</h2></center>
   <br><br><br><br><br>
   <center><h1>Bill</h1></center>
       <center><table border = "1" id="table_id">
    <tr>
    <td>Item Name</td><td>Item Image</td><td>Price</td>
    <%
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              HttpSession sesn = request.getSession();
              String w = sesn.getAttribute("username").toString();
              String name = sesn.getAttribute("ItemName").toString();
              String address = sesn.getAttribute("address").toString();
              String cusname = sesn.getAttribute("name").toString();
              String email = sesn.getAttribute("email").toString();
              String pincode = sesn.getAttribute("pincode").toString();
              String state = sesn.getAttribute("state").toString();
              String query = "SELECT * FROM "+w+" WHERE Items_Name='"+name+"';";
              Statement qry = con.createStatement();
              ResultSet rs = qry.executeQuery(query);
              rs.next();
              String item_name = rs.getString("Items_Name");
              String img = rs.getString("Items");
              String price = rs.getString("Price");
                  out.println("<tr><td>"+item_name+"</td><td><img src='"+img+"'style='width:240px;' /></td><td>"+price+"</td></tr>");
              //RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
              //rd.forward(request,response);  
        %>       
        </table><br><br>
        <div style="border: solid gold; border-radius:1rem;width:70%;">
        <center><h2>Shipping Address</h2></center>
        <table border="1" id="table_id1">
            <tr><td><strong>Name:</strong></td><td> <%out.println(cusname);%></td></tr>
            <tr><td><strong>State:</strong></td><td><%out.println(state);%></td></tr>
            <tr><td><strong>Pincode:</strong></td><td> <%out.println(pincode);%></td></tr>
            <tr><td><strong>Address:</strong></td><td> <%out.println(address);%></td></tr>
            <tr><td><strong>Estimated Time of Delivery:</strong></td><td> 4-5 Bussiness Days</td></tr>
        </table>
        <br><br><br>
        <button><a href="home.jsp">Continue Shopping</a></button>
        </div>
    </body>
</html>