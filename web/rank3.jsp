<%-- 
    Document   : rank3
    Created on : 2019-5-11, 18:18:54
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生</title>
       <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    </head>
    <body>
       <form method="post" name="Login" action="cxcy.jsp">
            <div align="center"> 
                <h1 style="color:yellow;">普通用户</h1>
           <h2>学生功能</h2>
             <input type="submit" name="submit" value="查询宿舍成员信息" onclick="validateLogin()" style="width: 200px; height:50px;margin:0 30px 0 60px;">
        </form>
        <br /><br />
        <form method="post" name="Login5" action="login.html">
                         <h3 style="margin:0 30px 0 50px;"></h3>
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
             </div>
    </body>
</html>
