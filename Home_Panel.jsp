<%-- 
    Document   : Home_Panel
    Created on : 19 Nov, 2020, 1:20:52 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
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
background:#66b2b2;
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
.sub-list2{
display: none;
}
.hover-me:hover .sub-list2{
position: absolute;
display: block;
margin-top: -30px;
margin-left: 140px;
background: rgba(0,100,0);
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
<li class="active"><a href="Login.jsp">Appointment</a>
</li>
<li><a href="About_us.jsp">About us</a></li>

<li><a href="#">Account</a>
<div class="sub-list">
<ul>
<li class="hover-me"><a href="Doctor_Login.jsp">Doctor</a>
<div class="sub-list2">
</div>
</li>
<li class="hover-me"><a href="Receptionist_Login.jsp">Receptionist</a>
<li><a href="Registration.jsp">Registration</a></li>

</li>
<li class="hover-me"><a href="Login.jsp">Patient</a>
<div class="sub-list2">
</div>
</li>

</ul>
</div>
</li>
<li><a href="Contact_us.jsp">Contact us</a></li>
</ul>
</nav>
</body>
</html>

