<html>
   <body>
       <%
          String a = request.getAttribute("user").toString();
           out.println("Hello "+a+"<br>");
       %>
   </body>
</html>