<%-- 
    Document   : Updateorder
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
        <h1>Update order detail</h1>
        <%Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking", "root", "root");
            Statement stmt = con.createStatement();
            int oid = Integer.parseInt(request.getParameter("oid"));
            String updata=request.getParameter("updatedetails");
            String upfield=request.getParameter("updatefield");
            out.println("updatedetail:"+updata);
              out.println("updatefield:"+upfield);
            
           boolean flag=false;
            /*if(updata.equals("cid"))
            {
                int id=Integer.parseInt("upfield");
               String sqlselect = "update onlinebooking.order1 set cid='"+id+"'where oid='" + oid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }
            if(updata.equals("pid"))
            {
                 String sqlselect = "update onlinebooking.order1 set pid='"+upfield+"'where oid='" + oid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }*/
            if(updata.equals("odate"))
            {
                 String sqlselect = "update onlinebooking.order1 set odate='"+upfield+"'where oid='" + oid + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("Record Updated");
                   flag=true;
               }
            }
            if(updata.equals("ddate"))
            {
                 String sqlselect = "update onlinebooking.order1 set ddate='"+upfield+"'where oid='" + oid + "'";
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
