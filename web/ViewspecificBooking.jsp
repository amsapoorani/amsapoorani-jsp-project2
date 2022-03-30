<%-- 
    Document   : Displayoutput
    Created on : 15 Mar, 2022, 5:14:25 PM
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
        <title>Display output </title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
            int id=Integer.parseInt(request.getParameter("oid"));
            int i=id;
          String sql="SELECT c.cid,cname,address,p.pid,pname,price,oid,odate,ddate FROM order1 o JOIN customer c ON o.cid=c.cid  JOIN product_details p ON o.pid=p.pid HAVING o.oid='"+i+"'";
           ResultSet rs=stmt.executeQuery(sql);  
        %>
        <h1> Display Booking details</h1>
        <table border=2px>
            <tr>
                <th>customer id</th>
                 <th>customer name</th>
                  <th>customer address</th>
                   <th>product id</th>
                    <th>product name</th>
                     <th>price</th>
                      <th>order id</th>
                       <th>order date</th>
                        <th>delivery date</th>
                        <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getString(2)%></td> 
                <td><%=rs.getString(3)%></td> 
                <td><%=rs.getInt(4)%></td> 
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td> 
                <td><%=rs.getInt(7)%></td> 
                <td><%=rs.getString(8)%></td> 
                <td><%=rs.getString(9)%></td> 
            </tr>
            <% }%>
             </table>
             <%
            con.close();%>

    </body>
</html>
                    
               
           
