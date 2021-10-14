<%-- 
    Document   : add_staff
    Created on : 19 Nov, 2020, 12:37:10 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title></title>
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
border-radius: 5px;
transition:-3s ease-in-out;
}
.btnsubmit:hover{
background-color: rgb(255,217,9);
}
            form{
                
                align:center;
            
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
        <%@include file="Admin_Panel.jsp"%>
        <form method="post" action="db_addstaff.jsp">
      <table align="center">
    
<tr>
<td>Name:</td><td><input type="text" name="name"
required></td>
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
<td>Username:</td><td><input type="text"
name="name2" required></td>
</tr>

<tr>
<td>Password:</td><td><input type="password"
name="Password" required></td>
</tr>

<tr>
<td>Qualification:</td><td><input type="text"

name="Qualifucation" required></td>
</tr>

<tr>
<td>Role:</td><td>Doctor<input type="radio"
value="Doctor" name="Role">Receptionist<input
type="radio" value="Receptionist"
name="Role">Other<input type="radio"
value="Other" name="Role"></td>
</tr>

<tr><td></td><td><input type="submit"
value="Submit" class="btnsubmit"> <input type="submit"
value="Back" class="btnsubmit"></td></tr>
</table>
</form>
         
        <section class="section1"></section><%@include file="footer.jsp"%>

    </body>
</html>