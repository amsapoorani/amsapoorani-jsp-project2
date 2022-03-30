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
        <title>Display product details</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
           String sql="select * from product_details";
           ResultSet rs=stmt.executeQuery(sql);   
        %>
         <h1>Display product details</h1>
        <table border=2px>
            <tr>
                <th>product id</th>
                 <th>product name</th>
                   <th>price</th>
                       <th>qty</th>
                        
          <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getString(2)%></td> 
                <td><%=rs.getString(3)%></td> 
                <td><%=rs.getInt(4)%></td> 
              
            </tr>
            <% }%>
             </table>
             <%
            con.close();%>

    </body>
</html>
                    
               
           
