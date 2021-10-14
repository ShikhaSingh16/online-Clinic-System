<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String Name=request.getParameter("PName");
String Email_Id=request.getParameter("Email");
String PhoneNo=request.getParameter("phone");
String Description=request.getParameter("Description");
String Gender=request.getParameter("Gender");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Feedback1(Name,Email_Id,PhoneNo,Description,Gender)values('"+Name+"','"+Email_Id+"','"+PhoneNo+"','"+Description+"','"+Gender+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
