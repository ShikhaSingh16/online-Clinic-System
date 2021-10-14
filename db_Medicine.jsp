<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String MName=request.getParameter("MName");
String Type1=request.getParameter("Type1");
String CName=request.getParameter("CName");
int Price=Integer.parseInt(request.getParameter("Price"));
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Medicine(Medicine_Name,Type,Company_Name,Price)values('"+MName+"','"+Type1+"','"+CName+"','"+Price+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
