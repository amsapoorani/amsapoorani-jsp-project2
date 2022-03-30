<!DOCTYPE html>
<!--
view specific record
-->
<html>
    <head>
        <title>view record</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <style>
         button
        {
            color:darkcyan;
            font-size: 15px;
            background-color:lightgoldenrodyellow;
            font-family: cursive;
            font-variant:small-caps;
        }
        .box{
          margin-top:20px;
          margin-left: 20px;
          margin-right: 500px;
          padding-left: 20px;
          padding-right: 20px;
         
        }
        h1{
            color:lavender;
        }
         .bar{
            background-color:darkcyan;
        }
        </style>
    </head>
    <body>
        <div class="bar"> 
             <table>
                <tr>
                    <th> <div class="menubar"></th><th>&emsp;&emsp;</th>
                    <th><h1>View specific records</h1></th>
                </tr>
            </table>
        </div>
        </div>
        <hr>
        <div class="bodypart" >
            
                         <a href ="viewspecificorderfront.jsp" target="f4"><button>order</button></a>
                         <a href ="viewspecificproductfrot.jsp" target="f4"><button>product</button></a>
                         <a href ="viewspecificcustomerfront.jsp" target="f4"><button>customer</button></a>
                         <a href ="viewspecificBookingfront.jsp" target="f4"><button>Booking</button></a>
                        
        <div class="box">
            <center>     
                <iframe  width="800" height="650" name="f4" style="border: 0;background-size: cover; background-color:lightblue">
                    
                </iframe></center>
        </div>
         </div>
    </body>
</html>
