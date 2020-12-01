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
   
    String stradname = request.getParameter("adname");
    String strgrade= request.getParameter("grade");
    String strsname = request.getParameter("sname"); 
    String stradpwd = request.getParameter("adpwd"); 
    String stradrank = request.getParameter("adrank"); 
    String strsex = request.getParameter("sex");   
    String strage = request.getParameter("age");
    String strcollege = request.getParameter("college");
    String strphone = request.getParameter("phone");
    String strdormitory = request.getParameter("dormitory");
    String strfloor = request.getParameter("floor");
    String strdno = request.getParameter("dno");
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接"jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC"
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    String sql5 ="select * from dormitoryhouse where dormitory='"+strdormitory+"'";
    Statement stmt5 = connection.createStatement ( );
   ResultSet rs5 = stmt5.executeQuery(sql5);
   if(rs5.next()==false){
         %>
         <p style="color:yellow; font-size:32px;margin:0 60px 0 110px;">该宿舍楼不存在！3秒后返回注册界面！</p>
   <span><meta http-equiv="refresh" content="2.5;URL=addstu.jsp"> </span>
   <% }
else{
    //SQL语句
    String sql4 ="select * from admin where adname='"+stradname+"'";
    Statement stmt4 = connection.createStatement ( );
   ResultSet rs4 = stmt4.executeQuery(sql4);
   if(rs4.next()){
         %>
         <p style="color:yellow; font-size:32px;margin:0 60px 0 110px;">该学号已存在！3秒后返回注册界面！</p>
   <span><meta http-equiv="refresh" content="2.5;URL=addstu.jsp"> </span>
   <% }
else{
    String sql = "select * from dormitory where dormitory='" + strdormitory+ "' and dno = '" + strdno +"'"; 
    Statement stmt = connection.createStatement ( );
    ResultSet rs = stmt.executeQuery(sql);
    int num=0;
    while(rs.next())
    {
        
        num=num+1;
    }
    
    if(num<=3)
    {
         sql = "insert into student values('"+stradname+"','"+strsname+"','"+strsex+"','"+strage+"','"+strcollege+"','"+strphone+"','"+strgrade+"')";
         stmt.executeUpdate(sql); 
         String sql2 = "insert into dormitory values('"+stradname+"','"+strdno+"','"+strfloor+"','1700','4','"+strsname+"','"+strdormitory+"')";
         Statement stmt2 = connection.createStatement ( );
         stmt2.executeUpdate(sql2); 
         String sql3 = "insert into admin values('"+stradname+"','"+stradpwd+"','"+stradrank+"')";
         Statement stmt3 = connection.createStatement ( );
         stmt2.executeUpdate(sql3);
         %>
         <p style="color:yellow; font-size:32px">信息添加成功！</p>
   <% }
    else
    {%>
        <p style="color:red; font-size:32px">该宿舍人数已满，3秒后返回注册界面！</p>
    <span><meta http-equiv="refresh" content="3;URL=addstu.jsp"> </span>
   <% }
//    stmt.executeUpdate(sql); 
//    out.println("添加成功！");}
    stmt.close ( );
    connection.close ( );
}}
   %>
   </div>
</body>
</html>