
<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String Name=request.getParameter("name");
String PhoneNo=request.getParameter("phone");
String Address=request.getParameter("Add");
String Age=request.getParameter("Age");
String ADate=request.getParameter("date1");
String Gender=request.getParameter("Gender");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Appointment(Name,PhoneNo,Address,Age,ADate,Gender)values('"+Name+"','"+PhoneNo+"','"+Address+"','"+Age+"','"+ADate+"','"+Gender+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
