<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="project10.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Allerta Stencil' rel='stylesheet'>
<style>
a.A:link {color:#ff0000;text-decoration:none; font-family:Allerta Stencil;}
a.A:visited {color:#0000ff;text-decoration:none;}
a.A:hover {text-decoration:underline;}

</style>
</head>
<body>
<div class="full_page">

    <div class="header">
        <img src="kalani.jpg" height="150px">
        <div class="name"><br>    
       </div>

        <div class="search">
       </div>

    </div>
    <div class="navigation">
        <ul>
            <li><u><a href="HomePage1.jsp">Home</a></u></li>
            <li><u><a href="Addcustomer.jsp">Create an account</a></u> </li>
            <li><u><a class="active" href="Login.jsp">Log in</a></u> </li>
            <li><u><a href="AboutUs.jsp">About Us</a></u></li>
            <li><u><a href="ContactUs.jsp">Contact Us</a></u></li>
            
        </ul>

    </div>
    <div class="middle">
        <div class="left-column">
            <div class="uppercase">
                <h2 style="text-align: center"></h2>

              

            </div>

            <div class="lowercase" style="max-width: 500px">
                <img class="photo" src="login5.jpg" style="width:100%" >
                <img class="photo" src="login2.jpg" style="width:100% ">
                <img class="photo" src="login3.jpg" style="width: 100%">
                <img class="photo" src="login6.jpg" style="width: 100%">
            </div>

            <script>
                var myIndex= 0;
                carousel();

                function carousel() {
                    var i;
                    var x = document.getElementsByClassName("photo");
                    for (i=0; i<x.length; i++){
                        x[i].style.display = "none";
                    }
                    myIndex++;
                    if(myIndex > x.length){myIndex = 1}
                    x[myIndex-1].style.display = "block";
                    setTimeout(carousel,2000);
                }
            </script>

        </div>

      <div class="middle-column">
<br><br><br><br>
       <form action="LoginCheck" method="post" >
			<table align="center">
				<tr><h1>Login</h1></tr>
     			<tr><td style="width:175px">User name:</td>
         		<td><input type="text" placeholder="User name" name="username" required></td></tr>

     			<tr><td>Password:</td>
        		 <td><input type="password" placeholder="Password" name="password" required></td></tr>
         
     				 <tr><td><span style="color:red"><%=(request.getAttribute("errmessage") == null) ? "" : request.getAttribute("errmessage")%></span></td></tr>
     				 
     			 <tr><td></td><td><button  type="submit" name="submit">LOGIN</button></td></tr>
			</table>
        </form>
   
    </div>

    <div class="footer">
    
    </div>

</div>
<%@include file="Footers.jsp"%>
</body>
</html>
</body>
</html>