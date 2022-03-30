<%-- 
    Document   : Loginjsp
    Created on : 16 Mar, 2022, 11:05:36 AM
    Author     : VINOTH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
            String role=request.getParameter("role");
            int id=Integer.parseInt(request.getParameter("id"));
            String pwd=request.getParameter("pwd");
            String sqlselect="select role,id from onlinebooking.login where id='"+id+"' ";
            ResultSet rs=stmt.executeQuery(sqlselect);
            if(rs.next())
            {
               out.println("<script>alert('id already there');</script>");
               %>
                 <jsp:include page="SignUppage.html"></jsp:include>  <%
            }
            else
            {
                String sql="insert into onlinebooking.login values('"+role+"','"+id+"','"+pwd+"')";
              int i=stmt.executeUpdate(sql);
              if(i>0)
            {%>
                 <jsp:include page="SignINbooking.html"></jsp:include>  <%
                out.println("<b>SignUp successfully</b>");
                 
            }
            else 
            {
                out.println("<b>MIssig somthing!</b>");
            }
           
             }
           
            
            con.close();%>
    </body>
</html>
