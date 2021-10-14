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
        String sql="Select * from Add_Staff where Username='"+name+"' and Password1='"+password+"'";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
      response.sendRedirect("Recep_Home.jsp");
}
else
        {
      response.sendRedirect("error.html");
    }
    }   
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
