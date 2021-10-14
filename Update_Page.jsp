<%-- 
    Document   : Update_Page
    Created on : 10 Dec, 2020, 12:59:39 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/";%>
<%!String database = "mysql";%>
<%!String user = "root";%>
<%!String psw = "root123";%>
<%
String Name = request.getParameter("name");
String status=request.getParameter("status");

try
{
    Connection con = null;
PreparedStatement ps = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
"root", "root123");
String sql="update Appointment set status=? where Name='"+Name+"'";
ps = con.prepareStatement(sql);
ps.setString(1,status);
int i = ps.executeUpdate();
response.sendRedirect("App_View.jsp");
}
catch(SQLException sql)
{
out.print(sql);
}

%>