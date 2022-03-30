<%-- 
    Document   : LoginVerfication
    Created on : 16 Mar, 2022, 3:07:39 PM
    Author     : VINOTH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
      
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            
            String role=request.getParameter("role");
            String id=request.getParameter("id");
            String pwd=request.getParameter("pwd");
            //out.println("role:"+role);
           // out.println("id:"+id);
           // out.println("pwd:"+pwd);
            String sql="select * from login where role='"+role+"' and id='"+id+"'and pwd='"+pwd+"'";
            Statement stmt=con.createStatement();
         
           ResultSet rs=stmt.executeQuery(sql);
            if(rs.next())
            { 
                if(role.equalsIgnoreCase("Admin"))
                {
                    %><jsp:include page="viewbookingdetails.html"></jsp:include>
              <%
                }
                
                else if(role.equalsIgnoreCase("Customer"))
                {%>
                <jsp:include page="Customer.html"></jsp:include><%
                
                }
              
                else if(role.equalsIgnoreCase("Productmanager"))
                {%>  
                <jsp:include page="productmanager.html"></jsp:include>
                <%
                }
                else
                {
                 out.println("Invalid user name and pwd ");%>
                  <jsp:include page="SignINbooking.html"></jsp:include>
                    <%
                }
            }
            con.close();
            %>
    </body>
</html>
