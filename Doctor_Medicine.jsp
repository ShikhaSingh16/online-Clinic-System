<%-- 
    Document   : medicine
    Created on : 19 Nov, 2020, 12:43:06 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> <style>
            .btnsubmit{
border: none;
outline:none;
height:35px;
font-size: 16px;
width:70px;
color: #fff;;
background-color: #00909E;
cursor: pointer;
border-radius:5px;
transition:-3s ease-in-out;
}
.btnsubmit:hover{
background-color: rgb(255,217,9);
}
 .section1{
                height:180px;
            }
             input{
                height:30px;
            }
            table{
               padding-top: 55px;
            }
        </style>
    </head>
    <body>
                <%@include file="Doctor_Panel.jsp"%>

<form>
<table align="center">
<tr>
<td>Medicine Name:</td><td><input type="text"
name="MName" required></td>
</tr>

<tr>
<td>Type:</td><td><input type="text" name="Typ"
required></td>
</tr>

<tr>
<td>Company Name:</td><td><input type="text"
name="CName" required></td>
</tr>

<tr>
<td>Price:</td><td><input type="number"
name="Price" required></td>
</tr>

<tr><td></td><td><input type="submit"
value="Submit" class="btnsubmit"> <input type="submit"
value="Back" class="btnsubmit"></td></tr>

</table>
</form>
                        <section class="section1"></section><%@include file="footer.jsp"%>


    </body>
</html>