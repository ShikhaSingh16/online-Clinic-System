<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String Dname=request.getParameter("DName");
String Description1=request.getParameter("Description");
    String Symptoms1=request.getParameter("SName");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Disease(Disease_Name,Description,Symptoms)values('"+Dname+"','"+Description1+"','"+Symptoms1+"')");
   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
