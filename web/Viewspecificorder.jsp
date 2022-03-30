<%-- 
    Document   : Viewspecificorder
    Created on : 16 Mar, 2022, 7:35:42 AM
    Author     : VINOTH
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display output order</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
            int oid=Integer.parseInt(request.getParameter("oid"));
           String sql="select * from onlinebooking.order1 where oid='"+oid+"'";
           ResultSet rs=stmt.executeQuery(sql);   
        %>
        <h1>Display order details</h1>
        <table border=2px>
            <tr>
                <th>order id</th>
                 <th> customer id</th>
                   <th>product id</th>
                       <th>order date</th>
                        <th>delivery date</th>
          <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getInt(2)%></td> 
                <td><%=rs.getInt(3)%></td> 
                <td><%=rs.getString(4)%></td> 
                <td><%=rs.getString(5)%></td> 
            </tr>
            <% }%>
             </table>
             <%
            con.close();%>

    </body>
</html>
                    
               
           
