<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException,javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.Statement,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.PreparedStatement"%>
<html>
        <%
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csproject","root","rajendran");
              HttpSession sesn = request.getSession();
              String w = sesn.getAttribute("username").toString();
              String id = request.getParameter("Id").toString();
              String img = "image"+id;
              String itm = "item"+id;
              String prc = "price"+id;
              String item_name = sesn.getAttribute(itm).toString();
              String item_image = sesn.getAttribute(img).toString();
              String price = sesn.getAttribute(prc).toString();
              PreparedStatement qry = con.prepareStatement("INSERT INTO "+w+"(Items_Name,Items,Price) VALUES(?,?,?);");
              qry.setString(1,item_name);
              qry.setString(2,item_image);
              qry.setString(3,price);
              qry.executeUpdate();
              response.sendRedirect("cart.jsp");
              //RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
              //rd.forward(request,response);
              
        %>          
</html>