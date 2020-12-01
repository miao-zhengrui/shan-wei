<%-- 
    Document   : rank2
    Created on : 2019-5-11, 21:32:41
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>超级管理员</title>
       <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    </head>
    <body>
           <div align="center"> 
                <form method="post" name="Login" action="cxcy.jsp">
                    <h1 style="color:yellow;margin-left:20px;">超级管理员</h1>
           <h2 style="margin:0 30px 0 50px;">功能选择</h2>
                
                <h3 style="margin:0 30px 0 50px;">①</h3>
             <input type="submit" name="submit" value="查询宿舍成员信息" onclick="validateLogin()" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;">
             </form>
               <form method="post" name="Login3" action="docx1.jsp">
              <input type="submit" name="submit" value="查询全部宿舍成员信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
               
               <br />
               <h3 style="margin:0 30px 0 50px;">②管理宿舍成员信息</h3>
                    <form method="post" name="Login3" action="addstu1.jsp">
              <input type="submit" name="submit" value="添加宿舍成员信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
                    
                    <form method="post" name="Login4" action="delstu.jsp">
              <input type="submit" name="submit" value="删除宿舍成员信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
                    
                    <form method="post" name="Login4" action="modify.jsp">
              <input type="submit" name="submit" value="修改宿舍成员信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
                    <br />
                    
                    <h3 style="margin:0 30px 0 50px;">③管理宿舍信息</h3>
                    <form method="post" name="Login3" action="indormitory.jsp">
              <input type="submit" name="submit" value="查看宿舍信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
                    
                    
                    <form method="post" name="Login4" action="moddor.jsp">
              <input type="submit" name="submit" value="修改宿舍楼信息" 
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
                    <br />
                    
                    
                    <form method="post" name="Login5" action="login.html">
                         <h3 style="margin:0 30px 0 50px;">④</h3>
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
             </div>
    </body>
</html>