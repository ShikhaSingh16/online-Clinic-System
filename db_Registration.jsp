<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String Name=request.getParameter("name");
String Email_Id=request.getParameter("Email_Id");
String PhoneNo=request.getParameter("phone");
String Username=request.getParameter("name2");
String Password1=request.getParameter("pass");
String CPassword=request.getParameter("Cpass");
String Address=request.getParameter("Add");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Registration(Name,Email_id,PhoneNo,Username,Password1,CPassword,Address)values('"+Name+"','"+Email_Id+"','"+PhoneNo+"','"+Username+"','"+Password1+"','"+CPassword+"','"+Address+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
