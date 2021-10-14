<%-- 
    Document   : newjsp
    Created on : 6 Dec, 2020, 2:57:45 PM
    Author     : DELL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="Update_Page.jsp" >
        Name:    <input type="text" name="name" >
          Status:  <input type="text" name="status" >
          <input type="submit" value="submit">
        </form>
    </body>
</html>