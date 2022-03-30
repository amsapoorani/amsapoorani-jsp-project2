<%-- 
    Document   : AddOrderdetails
    Created on : 14 Mar, 2022, 8:38:40 PM
    Author     : VINOTH
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Add Order details</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <% int oid = Integer.parseInt(request.getParameter("oid"));
            int cid = Integer.parseInt(request.getParameter("cid"));
            int pid = Integer.parseInt(request.getParameter("pid"));
            String odate = request.getParameter("odate");
            String ddate = request.getParameter("ddate");
        %>
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking", "root", "root");
            String sqlselect="select * from onlinebooking.order1  where oid='"+oid+"' ";
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery(sqlselect);
             if(rs.next())
            {
               out.println("<script>alert('id already there');</script>");
               %>
                 <jsp:include page="AddtheOrderdetail.html"></jsp:include>  <%
            }
            else
            {
            String sqlinsert = "insert into onlinebooking.order1 values(?,?,?,?,?)";
             PreparedStatement psmt= con.prepareStatement(sqlinsert);
             psmt.setInt(1,oid);
             psmt.setInt(2,cid);
             psmt.setInt(3,pid);
             psmt.setString(4,odate);
             psmt.setString(5,ddate);
            int i = psmt.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('registration successfully');</script>");
            } else {
                out.println("<script>alert('not insert the record');</script>");
            }
}
            con.close();%>
    </body>
</html>
