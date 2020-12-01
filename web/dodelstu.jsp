<%-- 
    Document   : cyuan
    Created on : 2019-5-11, 18:12:49
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>查询确认</title>
   <meta http-equiv="keywords" content="jsp,登陆">
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
    <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
</head>
<body>
   <div align="center" style="font-size:15px">

   <%
       String stradname = request.getParameter("adname");
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
       String sql="delete FROM student where adname='"+stradname+"'";
       Statement stmt = connection.createStatement ( );
       stmt.executeUpdate(sql); 
       String sql2="delete FROM dormitory where adname='"+stradname+"'";
       Statement stmt2 = connection.createStatement ( );
       stmt2.executeUpdate(sql2);
       String sql3="delete FROM admin where adname='"+stradname+"'";
       Statement stmt3 = connection.createStatement ( );
       stmt3.executeUpdate(sql3);
   %>
   <p style="color:yellow; font-size:25px;margin:0 30px 0 60px;">  成功删除！</p>
   <%
    stmt.close ( );
    connection.close ( );
   %>
   </table>
   </div>
   <br />
   <div align="center" style="font-size:25px">
       
<!--       <button style="width: 200px; height:50px;margin:0 30px 0 60px;" onclick="history.back()">返回</button><br /> -->
        <form method="post" name="Login5" action="login.html">
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>            
   
   </div>
</body>
</html>