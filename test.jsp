<%@page import="javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse" %>
<html>
    <form action = "<%= see() %>" method="GET">
        <input type = "number" name = "num">
        <input type="submit"/>
    </form>

    <%!
       void see() throws Exception {
           System.out.println("alert");
       }
    %>
</html>