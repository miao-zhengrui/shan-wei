<%-- 
    Document   : delstu
    Created on : 2019-5-12, 15:51:57
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加学生信息</title>
          <link rel="stylesheet" type="text/css" href="css/addstu.css"/>
    </head>
    <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    <body>
        
       <form method="post" name="frmLogin" action="doaddstu.jsp">
   
       <h1  align="center" style="margin-left:50px;font-size:30px">添加学生信息</h1> 
       <div class="att" align="center">  
   <div class="att1" style="font-size:15px">
      学号：<input type="text" name="adname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      姓名：<input type="text" name="sname" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      密码：<input type="text" name="adpwd" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      权限：<input type="text" name="adrank" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      <div style="color:black"> (普通管理员输入“2”)</div><br />
       <div style="color:black">( 普通学生输入“3” )</div><br />
      性别：<input type="text" name="sex" maxlength=10 style="width: 180px; height:25px;margin:0px 0 20px;"><br />
      </div>
           
       <div class="att2">
      年龄：<input type="text" name="age" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      专业：<input type="text" name="college" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      年级：<input type="text" name="grade" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      电话：<input type="text" name="phone" maxlength=11 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      楼编号：<input type="text" name="dormitory" maxlength=6 style="width: 160px; height:25px;margin-bottom:20px;"><br />
      楼层：<input type="text" name="floor" maxlength=10 style="width: 180px; height:25px;margin-bottom:20px;"><br />
      宿舍号：<input type="text" name="dno" maxlength=6 style="width: 160px; height:25px;margin-bottom:20px;"><br />
       </div>
           
   </p></div>
       <div align="center">
       <input type="submit" name="submit" value="确定" onclick="validateLogin()" style="width: 60px; height:35px;margin: 0 10px">
     <input type="reset" name="reset" value="重置" style="width: 60px; height:35px;margin: 0 10px"></form><br /> 
   
 
 <form method="post" name="frmLogin" action="rank1.jsp">
      <input type="submit" name="submit" value="返回菜单" onclick="validateLogin()" 
                    style="width: 180px; height:40px;margin-top: 30px">
 </form>
   </div>
    </body>
</html>
