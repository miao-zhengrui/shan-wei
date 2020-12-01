<%-- 
    Document   : vistor
    Created on : 2019-5-12, 13:43:48
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加访客</title>
        <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    </head>
    <body>
        <div align="center">  
       <form method="post" name="frmLogin" action="dovistor.jsp">
   
       <h1 style="margin-left:50px">添加访客信息</h1>
   <div style="font-size:25px">
      学号-------<input type="text" name="adname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      姓名-------<input type="text" name="sname" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
  出门时间-<input type="text" name="out" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
  回归时间-<input type="text" name="in" maxlength=10 style="width: 180px; height:25px;"><br />
     
   </p></div>
   <br />
       <input type="submit" name="submit" value="确定" onclick="validateLogin()" style="width: 60px; height:35px;margin:0 30px 0 100px;">
     <input type="reset" name="reset" value="重置" style="width: 60px; height:35px;"></form><br /> 
   
 </form>   
     
   </div>
    </body>
</html>
