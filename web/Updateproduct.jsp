<%-- 
    Document   : Updatecustomer
    Created on : 16 Mar, 2022, 10:14:14 AM
    Author     : VINOTH
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{background-color:lightblue;
                   color:darkblue;
                   font-style:italic;
                    text-align:center;
                    font-size:20px;}
            h1{color:darkred;
                  font-family:sans-serif;
                 text-align:center;
                font-size:20px;}
        </style>
    </head>
    <body>
        <h1>Update product detail</h1>
        <%Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking", "root", "root");
            Statement stmt = con.createStatement();
            int pid = Integer.parseInt(request.getParameter("pid"));
            String updata=request.getParameter("updatedetails");
            String upfield=request.getParameter("updatefield");
           boolean flag=false;
            if(updata.equals("pname"))
            {
               String sqlselect = "update onlinebooking.product_details set pname='"+upfield+"'where pid='" + pid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }
            if(updata.equals("price"))
            {
                 String sqlselect = "update onlinebooking.product_details set price='"+upfield+"'where pid='" + pid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }
            if(updata.equals("qty"))
            {
                 String sqlselect = "update onlinebooking.product_details set qty='"+upfield+"'where pid='" + pid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }
            if(flag=true)
            {
                 out.println("<script>alert('Record Updated!');</script>");
            }
            else
            {
                out.println("<script>alert('Record Not Found/Not Updated!');</script>");
            }
             stmt.close();
            con.close();
            %>
    </body>
</html>
