<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.PreparedStatement"%>
<html>
        <%
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              HttpSession sesn = request.getSession();
              String w = sesn.getAttribute("username").toString();
              String name = request.getParameter("item-name").toString();
              String query = "DELETE FROM "+w+" WHERE Items_Name='"+name+"';";
              //String img = "image"+id;
              //String itm = "item"+id;
              //String prc = "price"+id;
              //String item_name = sesn.getAttribute(itm).toString();
              //String item_image = sesn.getAttribute(img).toString();
              //String price = sesn.getAttribute(prc).toString();
              PreparedStatement qry = con.prepareStatement(query);
              qry.executeUpdate();
              response.sendRedirect("cart.jsp");
              //RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
              //rd.forward(request,response);
              
        %>          
</html>