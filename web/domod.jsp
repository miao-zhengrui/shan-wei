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
      
   <%
     String strDname = request.getParameter("dname");
     String strDno = request.getParameter("dno");
    String strSname = request.getParameter("adname");
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
    String sql = "select * from dormitory where dormitory='" + strDname+ "' and dno = '" + strDno +"'"; 
    Statement stmt = connection.createStatement ( );
    ResultSet rs = stmt.executeQuery(sql);
    int num=0;
    while(rs.next())
    {
        num=num+1;
    }
    
    if(num<=3)
    {
         String sql3 = "update dormitory set dormitory='"+strDname+"' where adname='"+strSname+"'";
    Statement stmt3 = connection.createStatement ( );
    stmt3.executeUpdate(sql3); 
    
    String sql2 = "update dormitory set dno='"+strDno+"' where adname='"+strSname+"'";
    Statement stmt2 = connection.createStatement ( );
    stmt2.executeUpdate(sql2); 
         %>
         <p style="color:yellow; font-size:32px">信息修改成功！！</p>
   <% }
    else
    {%>
        <p style="color:red; font-size:32px">该宿舍人数已满，3秒后返回修改界面！</p>
    <span><meta http-equiv="refresh" content="3;URL=modify.jsp"> </span>
   <% }  
    stmt.close ( );
    connection.close ( );
   %>
   
   <form method="post" name="Login5" action="login.html">
                         <h3 style="margin:0 30px 0 50px;"></h3>
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin-right: 25px"><br /> </form>
   </div>
</body>
</html>
<!--       <button style="width: 200px; height:50px;margin:0 30px 0 60px;" onclick="history.back()">返回</button><br /> -->