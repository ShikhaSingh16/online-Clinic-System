<%-- 
    Document   : Checkup_details
    Created on : 19 Nov, 2020, 12:48:58 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
<style>
    form{
       text-align:center;
        float:center;
    }
.text1
{
width:100px;
height: 33px;
}
.textarea1{
height: 50px;
width:100px;
}
.text2
{
height: 33px;
    width:100px;
}
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
top:2%
}
.btnsubmit:hover{
background-color: rgb(255,217,9);
}
.section1{
                height:180px;
            }
             input{
                 width:60px;
                height:30px;
            }
            table{
               padding-top: 55px;
            }

</style>
</head>
<body>
<%@include file="Doctor_Panel.jsp"%>
<center>         
    <form method="post" action="db_checkup.jsp">
<table align="center">
<tr>
<td>Patient Name:</td><td><input type="text"
name="name" required class="text2"></td>
</tr>

<tr>
<td>Age:</td><td><input type="number" name="Age"
required class="text2"></td>
</tr>

<tr>
<td>Consulted To:</td><td><input type="text"
name="Consulted" required class="text2"></td>
</tr>

<tr>
<td>Pulse:</td><td><input type="text" name="Pulse"
class="text1"></td></tr>
<tr>
<td>Blood:</td><td><input type="text"
name="Blood" class="text1"></td>
</tr>
<tr>
<td>weight(kg):</td><td><input type="number"
name="Weight" class="text1"></td>
</tr>

<tr>
<td>Symptoms:</td><td><input type="textarea"
name="Symptoms" required class="textarea1"></td>
</tr>

<tr>
<td>prescription:</td><td><input type="textarea"
name="Pres" required class="textarea1"></td>
</tr>

<tr>
<td>Dose:</td><td><input type="radio"
value="morning" name="Dose">morning</tr>
<tr><td>
</td>
<td>
<input type="radio" value="morning+evening"
name="Dose">morning+evening
</td>
</tr>

<tr>
<td> </td>
<td>
<input type="radio" value="morning+afternoon+night"
name="Dose">mrng+afternoon+night</td>
</tr>

<tr>
<td> </td>

<td>
<input type="radio" value="Before_Meal"
name="Dose">Before Meal</td>
</tr>

<tr>
<td> </td>
<td>
<input type="radio" value="At night only"
name="Dose">At night before sleep</td>
</tr>

<tr>
<td>Disease:</td><td><input type="textarea"
name="Disease" class="text2"></td>
</tr>

<tr>
<td>Lab Report :</td><td><input type="textarea"
name="Report" class="textarea1" ></td>
</tr>

<tr>
<td>Remark :</td><td><input type="textarea"
name="Remark" class="textarea1" ></td>
</tr>
<tr>
<td>Fees :</td><td><input type="text" name="Fees"
class="text2" ></td>

</tr>

<tr><td></td><td><input type="submit"
value="Submit" class="btnsubmit"> <input type="submit"
value="Back" class="btnsubmit"></td></tr>

</table>
</form></center>
<section class="section1"></section><%@include file="footer.jsp"%>
</body>
</html>