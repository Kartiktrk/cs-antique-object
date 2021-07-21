<html>
     
<head>
    <title>Antique Store</title>
    <link rel = "stylesheet" type = "text/css" href="home.css"/>
    <script>
        
    </script>
</head>

<body>
    <section class = "tophome">
      <div class="container">  
        <div class = "navbar">
            <div class="logo">
                <br>
                <img src = "logo.jpg" width = "35%" style = "margin-top:0%;margin-left:0%;">
            </div style="display:inline-block;">
            <nav style="margin-top:1rem;font-size:1.5rem;">
            <%
             if(request.getAttribute("user") != null){
                String l = request.getAttribute("user").toString();
                
                out.println("<form action='auction_home.jsp' method = 'post'>");
                out.println("<input type = 'text' value="+l+" name='user' style='visibility: hidden;'/>");
                out.println("<input type='submit' value='Auction' style='background:black;color:white;border:none'/>");
                out.println("</form>");

                out.println("<form action='#' method = 'post'>");
                out.println("<input type = 'text' value="+l+" name='user' style='visibility: hidden;'/>");
                out.println("<input type='submit' value='Browse' style='background:black;color:white;border:none'/>");
                out.println("</form>");

                out.println("<form action='#' method = 'post'>");
                out.println("<input type = 'text' value="+l+" name='user' style='visibility: hidden;'/>");
                out.println("<input type='submit' value='Contact' style='background:black;color:white;border:none'/>");
                out.println("</form>");

                out.println("<form action='#' method = 'post'>");
                out.println("<input type = 'text' value="+l+" name='user' style='visibility: hidden;'/>");
                out.println("<input type='submit' value='FAQ(s)' style='background:black;color:white;border:none'/>");
                out.println("</form>");

                out.println("<form action='#' method = 'post'>");
                out.println("<input type = 'text' value="+l+" name='user' style='visibility: hidden;'/>");
                out.println("<input type='submit' value='Cart' style='background:black;color:white;border:none'/>");
                out.println("</form>");
             }
             else{
                 out.println("<ul>");
                    out.println("<li><a href = '#'>Home</a></li>");
                    out.println("<li><a href='#'>Browse</a></li>");
                    out.println("<li><a href='index.html'>Login</a></li>");
                    out.println("<li><a href='#'>Contact</a></li>");
                    out.println("<li><a href='auction_home.jsp'>Auction</a></li>");
                out.println("</ul>");
             }
            %>
            </nav>
            <h1>Title</h1>
            
        </div>
       </div> 
    </section>
<br><br>
    <section>
        <div class = "banner">
            <center><p style="font-size: 2rem;color : white;margin-top:100px;">
            <%
                 if(request.getAttribute("user") == null){
                     out.println("'A World of Ancient Suprises'");
                 }
                 else{
                     String t = request.getAttribute("user").toString();
                     out.println("Hello "+t+", get ready to experience 'A World of Ancient Suprises'");
                 }
            %>
            </p></center>
        </div>
    </section>
    <br><br><br>
    <section>
        <center><p style="font-size:2rem;color:white;">New Arrivals</p><br><br><br></center>
        <div class = "slider"></div><br><br><br>
        
    </section>
    <center><p style="color:white;font-size:2rem">Know some History</p></center><br><br><br>
    <section class = "flex">
        <div class = "containers 1" ><center><img src = "furn.png" class = "fleximg" style="margin-top:3rem;"/><br><br><br>
        "The original Knole Settee (also known as the Knole Sofa) is a couch chair that was made in the 17th century, probably
        around 1640. It is housed at Knole in Kent, a house owned by the Sackville-West family since 1605 but now in the care
        of the National Trust."</center></div>
        <div class = "containers 2"><center><img src = "cartoon.png" class = "fleximg"/><br><br>
            "It is believed the teapot was developed during the Song Dynasty (960–1279 AD). An archaeological dig turned up an
        ancient kiln that contained the remnants of a Yixing teapot. The teaset here is made of bamboo."</center></div>
        <div class = "containers 3"><center><img src="knife.png" class="fleximg" /><br><br>"A knife (from Old Norse knifr, "knife, dirk") is a tool or weapon with a cutting edge or blade, often
        attached to a handle or hilt. One of the earliest tools used by humanity, knives appeared at least 2.5 million years
        ago, as evidenced by the Oldowan tools."</center></div>
    </section><br><br><br>
    <center><p style="font-size:2rem;color:white;">Why Antique ?</p><br><br><br></center>
        <p style = "color:white;font-size:1.5rem;" id = "imp">"In our modern and ever-changing world, antiques serve as a reminder of our rich past. Modern pieces generally decrease in value and often deteriorate faster than antiques. Therefore, in general antiques can
        be a wiser investment because their value, unlike newer pieces, has more potential to increase over time."</p><br><br>
  <%
  if(request.getAttribute("user") == null){
                     out.println("<center><p style = 'font-size : 2rem ; color : white;'>So Why Wait ?</p><br><br>");
                     out.println("<p style='color:white;font-size:2rem;'><button><a href = 'index.html' class = 'bottom'>Login</a></button> or <button><a href = 'signup.html' class = 'bottom'>Sign Up</a></button></p></center>");
                 }
                 else{
                     out.println("");
                 }
  %>
</body>

<footer>

</footer>
<br><br><br><br><br>
</html>