<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String name=request.getParameter("user");
    String password=request.getParameter("pass");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
        st.executeUpdate("insert into user2(username,password1)values('"+name+"','"+password+"')");
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
