<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*"%>
<html>

<style>
    input{
        background-color: black;
        border : solid yellow;
        border-radius : 0.5rem;
        color:white;
        align-content: left;
    }
    input:focus , textarea:focus{
        outline: none;
    }
    textarea{
        background-color: black;
        border: solid yellow;
        border-radius:1rem;
        color:white;
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
        border-collapse: collapse;
        border-radius : 2rem;
        width:90%;
        color:white;
        text-align: center;
    }
</style>

<body style="background-color:black;color:white;font-family: sans-serif;font-family: Caslon Antique;font-size:1.2rem;">
    <ul>
        <li><a href="admin.html">Home</a></li>
        <li><a href="index.html">Logout</a></li>
    </ul>
    <br><br>
    <center>
        <h1>
            Create Auction
        </h1>
    </center>
    <div>
        <center>
            <form action="create" style="border:solid gold;border-radius:1rem;width:50%">
                <p>Item Name: <input type="text" name="item"></p>
                <p>Price: <input type="number" name="amt"/></p>
                <p>Timings: <input type="time" name="timings"></p>
                <p>Date: <input type="date" name="date"></p>
                <p>Description:<br><textarea name="description" rows="10" cols="50"></textarea></p>
                <p>Choose File: <input type="file" name="image" ></p>
                <br>
                <input type="submit" value="Create" onclick="alert('created')"/>
                <br><br>
            </form>
        </center>
    </div><br><br><br><br>
    <h1><center>Auction Schedule</center></h1>
    <center>
        <table border='1'>
            <th>Item</th>
            <th>Item Image</th>
            <th>Description</th>
            <th>Strarting Price(Dollars)</th>
            <th>Date</th>
            <th>Timings</th>
            <% Class.forName("com.mysql.jdbc.Driver"); Connection
                con=DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran"); 
                Statement qry=con.createStatement(); 
                ResultSet rs=qry.executeQuery("SELECT * FROM AuctionSchedule;"); 
                int s=0;
                while(rs.next()){
                    String Name = rs.getString("Item_Name");
                    String slot=rs.getString("Timings"); 
                    String item=rs.getString("Item"); 
                    String itemdesc=rs.getString("itemdesc"); 
                    int startprice=rs.getInt("startprice"); 
                    String date=rs.getString("Date");
                    out.println("<tr><td>"+Name+"</td><td><img src='"+item+"' style='width:240px;' /></td><td>"+itemdesc+"</td><td>"+startprice+"</td><td>"+date+"</td><td>"+slot+"</td></tr>");
                }
    
                out.println("</div>");
                %>
        </table>
    </center>
</body>

</html>