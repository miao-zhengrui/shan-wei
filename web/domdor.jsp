<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>宿舍成员信息修改</title>
  
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
   <div align="center">
       <table border="1" align="center">
   <%
     String strDname = request.getParameter("dname");
     String strNum = request.getParameter("num");

    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
    String sql ="update dormitoryhouse set number='"+strNum+"'where dormitory='"+strDname+"'";
    Statement stmt = connection.createStatement ( );
   stmt.executeUpdate(sql);
   
         %>
         <p style="color:yellow; font-size:32px;margin:0 60px 0 110px;">信息修改成功！</p>
   <% 
    stmt.close ( );
    connection.close ( );
   %>
   </table> 
   <form method="post" name="Login5" action="login.html">
                         <h3 style="margin:0 30px 0 50px;"></h3>
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
   </div>
</body>
</html>
<!--       <button style="width: 200px; height:50px;margin:0 30px 0 60px;" onclick="history.back()">返回</button><br /> -->