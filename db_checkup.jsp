
<%-- 
    Document   : db_connection
    Created on : 6 Dec, 2020, 2:59:12 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%
    String Name=request.getParameter("name");
String Age=request.getParameter("Age");
String Consulted=request.getParameter("Consulted");
String Pulse=request.getParameter("Pulse");
String Blood=request.getParameter("Blood");
String Weight=request.getParameter("Weight");
String Symptoms=request.getParameter("Symptoms");
String Dose=request.getParameter("Dose");
String Disease=request.getParameter("Disease");
String Report=request.getParameter("Report");
String Remark=request.getParameter("Remark");
String Fees=request.getParameter("Fees");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root123");
        Statement st=con.createStatement();
             st.executeUpdate("insert into Checkup(Name,Age,Consulted,Pulse,Blood,Weight,Symptoms,Dose,Disease,Report,Remark,Fees)values('"+Name+"','"+Age+"','"+Consulted+"','"+Pulse+"','"+Blood+"','"+Weight+"','"+Symptoms+"','"+Dose+"','"+Disease+"','"+Report+"','"+Remark+"','"+Fees+"')");

   
       response.sendRedirect("save.html");
    }
    catch(Exception e)
    {
        
        out.print(e);
    }
    %>
