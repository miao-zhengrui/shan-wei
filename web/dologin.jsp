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
   <title>登录确认</title>
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
   <div align="center">
   <%
    //获取用户名
    String strUserName = request.getParameter("adName");
    //获取密码
    String strPassword = request.getParameter("adPwd");
    
    
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
    String sql = "select * from admin where adname='" + strUserName
      + "' and adpwd = '" + strPassword + "'";
    Statement stmt = connection.createStatement ( );
    ResultSet rs = stmt.executeQuery(sql); //返回查询结果
    //如果记录集非空，表明有匹配的用户名和密码，登陆成功
    if ( rs.next())
    {
        if(rs.getInt("adrank")==1){%>
        <jsp:forward page="rank1.jsp"></jsp:forward> 
        <%}
        if(rs.getInt("adrank")==2){%>
      <jsp:forward page="rank2.jsp"></jsp:forward> 
        <%}
        if(rs.getInt("adrank")==3){%>
       <jsp:forward page="rank3.jsp"></jsp:forward> 
        <%}
    } else
    //否则登录失败
    {%> 
    <p style="color:red; font-size:32px">学号不存在或密码错误，3秒后返回登陆界面！</p>
    <span><meta http-equiv="refresh" content="2.5;URL=login.html"> </span>
       <% }
    rs.close ( );
    stmt.close ( );
    connection.close ( );
   %>
   </div>
</body>
</html>