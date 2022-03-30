<%-- 
    Document   : AddProductdetails
    Created on : 14 Mar, 2022, 8:38:40 PM
    Author     : VINOTH
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Product details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <% int pid=Integer.parseInt(request.getParameter("pid"));
       String pname = request.getParameter("pname");
       String price =request.getParameter("price");
       int qty =Integer.parseInt(request.getParameter("qty"));%>
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
            String sqlselect="select * from onlinebooking.product_details  where pid='"+pid+"' ";
            ResultSet rs=stmt.executeQuery(sqlselect);
             if(rs.next())
            {
               out.println("<script>alert('id already there');</script>");
               %>
                 <jsp:include page="Addtheproductdetail.html"></jsp:include>  <%
            }
            else
            {
            String sqlinsert="insert into onlinebooking.product_details values('"+pid+"','"+pname+"','"+price+"','"+qty+"')";
            int i=stmt.executeUpdate(sqlinsert);
            if(i>0)
            {
                 out.println("<b>registration successfully</b>");
            }
            else 
            {
                out.println("<b>not insert the record</b>");
            }
}
            con.close();%>
</body>
</html>
