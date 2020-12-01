<%-- 
    Document   : cyuan
    Created on : 2019-5-11, 16:52:51
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改</title>
        <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    </head>
    <body>
        <form method="post" name="frmLogin2" action="domod.jsp">
        <div align="left" style="font-size:25px">
           
            <p style="font-size:30px">修改宿舍成员信息</p>
         
                    输入需修改学生学号<br />
                    学号：<input type="text" name="adname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;"><br />

                    输入新的宿舍信息<br />
                    楼编号:<input type="text" name="dname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;" ><br />
                    宿舍号:<input type="password" name="dno" maxlength=10 style="width: 180px; height:25px;"><br />
                    <input type="submit" name="submit" value="修改"style="width: 60px; height:35px;margin:10px 110px 0 130px;"  >    
        </div>
        </form>
        
        <form method="post" name="Login5" action="rank1.jsp">
       <br />
              <input type="submit" name="submit" value="返回"  
                    style="width: 180px; height:40px;margin:0 30px 0 80px;"><br /> </form>
                    <form method="post" name="Login5" action="login.html">
       <br />
              <input type="submit" name="submit" value="退出"  
                    style="width: 180px; height:40px;margin:0 30px 0 80px;"><br /> </form>
    </body>
</html>
