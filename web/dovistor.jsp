<%-- 
    Document   : dologin
    Created on : 2019-5-10, 14:17:06
    Author     : SY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>访客确认</title>
   <meta http-equiv="keywords" content="jsp,登陆;charset=utf-8">
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
   <%
      request.setCharacterEncoding("utf-8");
    //获取账号
    String strUserName = request.getParameter("adname");
    //获取姓名
    String strSname = request.getParameter("sname");
    //获取出门时间
    String strOut = request.getParameter("out");
    //获取回归时间
    String strTime = request.getParameter("in");

    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
    String sql = "insert into io values('"+strUserName+"','"+strSname+"','"+strOut+"','"+strTime+"')";
    Statement stmt = connection.createStatement ( );
    stmt.executeUpdate(sql); 
    out.println("添加成功！");
   
    stmt.close ( );
    connection.close ( );
   %>
   </div>
</body>
</html>