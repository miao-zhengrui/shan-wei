<%-- 
    Document   : delstu
    Created on : 2019-5-12, 19:47:40
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>删除</title>
       <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
         form{
             margin-left: 50px;
         }
     </style>
         
    
    </head>
    <body>
        
    <marquee id="affiche" style="font-size:25px;color:rgba(0,0,0,0.8)" align="left" behavior="scroll"  direction="right"  width="400px" hspace="50" vspace="20" loop="-1" scrollamount="10" scrolldelay="100" onMouseOut="this.start()" onMouseOver="this.stop()">
删除宿舍成员信息
</marquee>
        <form method="post" name="frmLogin2" action="dodelstu.jsp">
        <div align="left" style="font-size:20px">
           
       学号:<input type="text" name="adname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;" ><br />
        </div>
            <input type="submit" name="submit" value="删除"  
                    style="width: 180px; height:40px;margin:0 30px 0 45px;"><br /><br />
             
        </form>
    </body>
</html>
