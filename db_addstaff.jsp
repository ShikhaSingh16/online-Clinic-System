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
String Username=request.getParameter("name2");
String Password1=request.getParameter("Password");
String Qualifications=request.getParameter("Qualifucation");
String Role=request.getParameter("Role");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Add_Staff(Name,PhoneNo,Address,Username,Password1,Qualifications,Role)values('"+Name+"','"+PhoneNo+"','"+Address+"','"+Username+"','"+Password1+"','"+Qualifications+"','"+Role+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
