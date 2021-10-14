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
        <form method="post" action="db_connection.jsp" >
        username:    <input type="text" name="user" value=" ">
          password:  <input type="text" name="pass" value=" ">
          <input type="submit" value="submit">
        </form>
    </body>
</html>