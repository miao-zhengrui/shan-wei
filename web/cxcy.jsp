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
        <title>查询</title>
              <link rel="stylesheet" type="text/css" href="css/cxcy.css"/>
    </head>
    <style>
        .li1:hover{
    background-color: rgba(92,150,230,0.4);
     border-radius: 20px;
}
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
    <body>
        <form method="post" name="frmLogin2" action="docx.jsp">
        <div align="left" style="font-size:25px">
           
            <p style="font-size:30px">查询宿舍成员信息</p>
            <ul style="list-style-type:none"> 
                <%String dname=null;
                String dno=null;
                String adname=null;%>
                <li class="li1">
                    ①输入宿舍信息查询<br />
                    楼编号:<input type="text" name="dname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;" ><br />
  
                    宿舍号:<input type="password" name="dno" maxlength=10 style="width: 180px; height:25px;"><br />
                    <input type="submit" name="submit" value="查询"style="width: 60px; height:35px;margin:10px 110px 0 90px;"  >
                </li>
                <br /> 
                <li class="li2">
                    ②输入学号查询<br />
                    学号：<input type="text" name="adname" maxlength=30 style="width: 180px; height:25px;margin-bottom:20px;"><br />
                    <input type="submit" name="submit" value="查询"style="width: 60px; height:35px;margin:48px 110px 0 90px;" >
                </li>
            </ul>
        </div>
        </form>
        <div> 
        <form method="post" name="Login5" action="login.html">         
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
        </div>
        </body>
</html>
