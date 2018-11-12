<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Header.css">
    <link href='https://fonts.googleapis.com/css?family=Allerta Stencil' rel='stylesheet'>
<style>
a {color:black;text-decoration:none; font-family:Allerta Stencil;}
a:visited {color:#0000ff;text-decoration:none;}
a:hover {text-decoration:underline;}

</style>
</head>
<%
String uname=(String)session.getAttribute("username");
%>
<body>

 <div class="headers">
 <div class="images"><img src="kalani.jpg" height="150px"></div>
 <div class="name"></div>
 <div class="logouts">
 
 <a href="<%=request.getContextPath()%>/LogoutServelet"><font color="Black" size="4" >Log Out</font></a>
 &nbsp; &nbsp; &nbsp;<a align="right"> Welcome Back! <% out.println(session.getAttribute("username")); %></a>
 </div>
 </div>
 
 </body>
 </html>
