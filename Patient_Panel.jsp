<%-- 
    Document   : Patient_Panel
    Created on : 19 Nov, 2020, 1:29:05 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
<style>
*{
padding: 0;
margin: 0;
box-sizing: border-box;
}
body{
font-family: Sans-Serif;

}
.ul-list{
list-style: none;
display: inline-flex;
color: #fff;
}
li{
width: 120px;
margin: 15px;
padding: 13px;
}
a{

}
nav{
background:#00909E;
text-align: center;

}
a{
text-decoration: none;
color: white;
}
.active, nav ul li:hover{
background: #66b2b2;
border-radius: 13px;
}
.sub-list{
display: none;

}
nav ul li:hover .sub-list
{
display:block;
position: absolute;
background: #66b2b2;
margin-top: 15px;
margin-left: -15px;
list-style: none;
}
nav ul li:hover .sub-list ul{
display: block;
margin: 10px;
list-style: none;
}
nav ul li:hover .sub-list ul li{
width: 150px;
padding: 10px;
border-bottom: 1px dotted #fff;
background: transparent;
border-radius: 0;
text-align: left;
}
nav ul li:hover .sub-list ul li a:hover{
color: #b2ff00;
}
img{
    width:100%;
    height:150px;
}

</style>
</head>

<body>
       <section>
        <img src="head_medizin.jpg" >
    </section>
<nav>
<ul class="ul-list">
<li class="active"><a href="Patient_Panel.jsp">Home</a></li>
<li><a href="feedback.jsp">Feedback</a>
</li>
<li><a href="Checkup_view.jsp">PatientHistory</a></li>
 <li><a href="home_page.jsp">Logout</a>
</li>
<li><a href="Medicine_view.jsp">Medicine</a></li>
<li><a href="#">Appointment</a>
<div class="sub-list">
<ul>
<li><a href="Patient_Appointment.jsp">Apply</a>

</li>
<li><a href="App_View.jsp">View Status</a>
</li>
</ul>
</div>
</li>

<li><a href="Disease_view.jsp">Disease</a></li>

</ul>
   
</nav>
</body>
</html>

