<html>
<link rel="stylesheet" type="text/css" href="bank.css"/>
    <link rel="stylesheet" type="text/css" href="contact.css"/>
   <body style="background-color:black;color:white;font-family: sans-serif;font-family: Caslon Antique;font-size:1.2rem;"> 
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Browse</a></li>
        <li><a href="index.html">Login</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="auction_home.jsp">Auction</a></li>
    </ul>
    <br><br><br><br><br>
    <center>
        <h1>Select Your Bank </h1><br><br>
    </center>
    <section class="flex">
    <div class="container auction"><br>Union Bank<br><br><br><br><input class='radio' type="radio" name='select_bank'></div>
    <div class="container users"><br>Axis Bank<br><br><br><br><input class='radio' type="radio" name='select_bank'></div>
    <div class="container queries"><br>ICICI<br><br><br><br><input class='radio' type="radio" name='select_bank'></div>
    </section>
    <br><br><br>
    <center><h1>
        Card Details
    </h1>
    </center>
    <h3></h3>
    <div>
     <center>
      <form action="process.html" style="border:solid gold;border-radius:1rem;width:50%">  
        <p>Card No: <input type="text" name="card_no"></p>
        <p style="margin-left:-9rem;">CCV: <input type="password" maxlength="3" name="ccv" style="width:2.5rem;"></p>
        <p>Expiry Date: <input type="date" name="expdate"></p>
        <p><input type="submit" value="Pay"/></p>
      </form>  
      </center>
      <br>
    </div>
    <%
        String itemname = request.getParameter("item-name").toString();
        String address = request.getParameter("address").toString();
        String pincode = request.getParameter("pincode");
        String state = request.getParameter("state");
        String name = request.getParameter("email_name");
        String email = request.getParameter("email_id");
        HttpSession sesn = request.getSession();
        sesn.setAttribute("ItemName" , itemname);
        sesn.setAttribute("address" , address);
        sesn.setAttribute("pincode" , pincode);
        sesn.setAttribute("state" , state);
        sesn.setAttribute("name" , name);
        sesn.setAttribute("email" , email);
    %>
  </body>
</html>