<%-- 
    Document   : App_View
    Created on : 10 Dec, 2020, 12:55:26 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("description_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mysql";
String userid = "root";
String password = "root123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<style>
table , th, td{
border: 1px solid black;
border-collapse: collapse;

}
td {
padding: 10px;
}
</style>
</head>
<body>
<div align="center">
<h1>Medicine Details</h1>
<table border="1" width="70%" height="80" align="center">
<tr>
<td><center><b>Medicine_Name</b></center></td>
<td><center><b>Type</b></center></td>
<td><center><b>Company_Name</b></center></td>
<td><center><b>Price</b></center></td>
</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
"root", "root123");
statement=connection.createStatement();
String sql ="select * from Medicine";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><center><%=resultSet.getString("Medicine_Name") %></center></td>
<td><center><%=resultSet.getString("Type") %></center></td>
<td><center><%=resultSet.getString("Company_Name") %></center></td>
<td><center><%=resultSet.getString("Price") %></center></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>
