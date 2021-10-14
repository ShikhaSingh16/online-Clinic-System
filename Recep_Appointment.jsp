<%-- 
    Document   : Patient_Appointment
    Created on : 19 Nov, 2020, 12:46:29 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .btnsubmit{
border: none;
outline:none;
height:35px;
font-size: 16px;
width:70px;
color: #fff;
background-color:#00909E;
cursor: pointer;
border-radius: 20px;
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
         <%@include file="Receptionist_Panel.jsp"%>
      
         <form method="post" action="db_Appointment.jsp">
<table align="center">
<tr>
<td>Patient Name:</td><td><input type="text"
name="name" required></td>
</tr>

<tr>
<td>Phone No:</td><td><input type="number"
name="phone" required></td>
</tr>

<tr>
<td>Address:</td><td><input type="textarea"
name="Add" required></td>
</tr>

<tr>
<td>Age:</td><td><input type="number" name="Age"
required></td>
</tr>

<tr>
<td>Appointment Date:</td><td><input type="date"
name="d1" required></td>
</tr>

<tr>
<td>Gender:</td><td><input type="radio"
value="Male" name="Male">Male<input type="radio"
value="Female" name="Female">Female</td>
</tr>

<tr><td></td><td><input type="submit"
value="Submit" class="btnsubmit"> <input type="submit"
value="Back" class="btnsubmit"></td></tr>

</table>
</form>
        <section class="section1"></section><%@include file="footer.jsp"%>
</body>
</html>
