<%-- 
    Document   : home_page
    Created on : 7 Dec, 2020, 3:07:01 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            article{
               width:100%;
               height:470px;
               background-image:url("B.jpg");
               background-size:cover;
               background-repeat:no-repeat;
            }
          
            
            </style>
    </head>
    <body>
         <%@include file="Doctor_Panel.jsp"%>
         <article>
         </article>
           <%@include file="footer.jsp"%>
          
    </body>
</html>
