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
             <table border="1" align="center" style="background: rgba(204,255,250,0.5);"height="60px" width="600px" >
                 <caption style="font-size:20px">宿舍成员信息</caption>
    <tr>
   <th>学号</th>
   <th>姓名</th> 
   <th>性别</th>
<th>年龄</th>
   <th>专业</th>
   <th>年级</th>
   <th>楼编号</th>
   <th>宿舍号</th>
   </tr>
   <%
       request.setCharacterEncoding("utf-8");
    //获取楼编号
    String strDname = request.getParameter("dname");

   
    //获取宿舍号
    String strDno = request.getParameter("dno");
    String strSname = request.getParameter("adname");

    
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
     String sql = "select * from dormitory,student where dormitory.adname=student.adname and dormitory.dormitory='" + strDname+ "' and dormitory.dno = '" + strDno + "'"; 
    Statement stmt = connection.createStatement ( );
    ResultSet rs = stmt.executeQuery(sql);  
    String sql2 = "select * from dormitory,student where dormitory.adname=student.adname and student.adname='" +strSname+"'"; 
    Statement stmt2 = connection.createStatement ( );
    ResultSet rs2 = stmt2.executeQuery(sql2);
       while(rs.next()){%>
     <tr style="color:white">
   <td><%=rs.getString("adname") %></td>
   <td><%=rs.getString("sname") %></td>
   <td><%=rs.getString("sex") %></td>
<td><%=rs.getString("age") %></td>
   <td><%=rs.getString("college") %></td>
<td><%=rs.getString("grade") %></td>
   <td><%=rs.getString("dormitory") %></td>
   <td><%=rs.getString("dno") %></td>
   </tr>
   <%} 


 while(rs2.next()){%>
     <tr style="color:white">
   <td><%=rs2.getString("adname") %></td>
   <td><%=rs2.getString("sname") %></td>
   <td><%=rs2.getString("sex") %></td>
   <td><%=rs2.getString("age") %></td>
   <td><%=rs2.getString("college") %></td>
   <td><%=rs2.getString("grade") %></td>
   <td><%=rs2.getString("dormitory") %></td>
   <td><%=rs2.getString("dno") %></td>
   </tr>
   <%} 

 
    rs.close ( );
    stmt.close ( );
    connection.close ( );
   %>
   </table>
   </div>
   <br />
   <div align="center"> 
   <form method="post" name="Login5" action="login.html">
                      
              <input type="submit" name="submit" value="退出"  
                     style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form></div>
</body>
</html>