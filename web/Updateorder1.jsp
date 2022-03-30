<%-- 
    Document   : Updateorder1
    Created on : 16 Mar, 2022, 2:24:14 PM
    Author     : VINOTH
--%>


<html>
    <head>
        <title>update the record</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
           #heading
           {
               color:darkred;
               font-family: serif;
               font-size: 25px;
               text-align:left; 
           }
           div{
               text-align: center;
               background-color: lightcyan;
                margin-left:10px;
                margin-right: 300px;
                width: 500px;
              
           }
           label
           {
              margin-top:20px; 
               color: darkgreen;
               font-family: serif;
               font-size: 20px;
               text-align: left; 
           }
           select
           {
               font-size: 20px;
               font-family: serif;
                color: darkgreen;
                text-align: center; 
                background-color:lightgray;
           }
           input{
               font-size: 20px;
               font-family: serif;
                color:darkviolet;
                background-color: lavenderblush;
           }
           #submit
           {
               color:darkolivegreen;
               background-color: lightgreen;
               font-size: 20px;
               font-family: serif;
               text-align: center;
           }
           body{
               background-color:lightblue; 
           }
        </style>
    </head>
    <body>  
          <h1 id="heading"> Update product Specific Record</h1>
        <form method="post" action="Updateorder.jsp">
            <div>
             <label> Enter the OId:</label><input type="text" name="oid"></input>
            <br><br>
            <select name="updatedetails">
                <option>cid</option>
                <option>pid</option>
                <option>odate</option>
                <option>ddate</option>
            </select>
            <br><br>
            <label>Enter the details to update:<input type="text" name="updatefield"></input> </label>
            <br><br>
          <input id="submit" type="submit"value="update"></input>
        </form>
</div>    
    </body>
</html>