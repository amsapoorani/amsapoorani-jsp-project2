<%-- 
    Document   : Deletecustomerdetail
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
            int cid=Integer.parseInt(request.getParameter("cid"));
            String sqlselect="delete from onlinebooking.customer where cid='"+cid+"'";
             int i=stmt.executeUpdate(sqlselect);
            if(i>0)
            {
               out.println("Record Deleted Successfully!");
            }
           else
            {
               out.println("Record Not Found !");
            }
            con.close();
        %>

    </body>
</html>
                    
               
           
