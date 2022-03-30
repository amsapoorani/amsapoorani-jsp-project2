
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
view specific customer record in the database
-->
<html>
    <head>
        <title>view the specific record</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
 
    </head>
    <body class="bodypart">
        
        <h1>view the Specific Record from customer table </h1> 
         <form action="Viewspecificcustomer.jsp">
      <div class="mb-3 mt-3" >
      <label style="color:darkblue;">select cid:</label>
      <% Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebooking","root","root");
            Statement stmt=con.createStatement();
            //int cid=Integer.parseInt(request.getParameter("cid"));
           String sql="select cid from customer";
            ResultSet rs=stmt.executeQuery(sql); 

     %>
           <select name="cid" >
               <%while(rs.next())
               {%>
               <option><%=rs.getInt("cid")%></option>
               <%}%>
           </select>
               <% con.close();%>
     <br>
      <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
    </body>
</html>
