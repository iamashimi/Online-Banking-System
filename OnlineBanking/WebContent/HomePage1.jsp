<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="project11.css">

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
            <li><u><a class="active" href="#home">Home</a></u></li>
            <li><u><a href="Addcustomer.jsp">Create an account</a></u> </li>
            <li><u><a href="Login.jsp">Log in</a></u> </li>
            <li><u><a href="AboutUs.jsp">About Us</a></u></li>
            <li><u><a href="ContactUs.jsp">Contact Us</a></u></li>
        </ul>
   
    </div>
    <div class="middle">
<br><br><br><br>
                <img class="photo" src="images/banking4.jpg" style="width: 1500px ; height:500px">
                <img class="photo" src="images/banking3.jpg" style="width: 1500px; height:500px">
                <img class="photo" src="images/banking5.jpg" style="width: 1500px; height:500px">
				<img class="photo" src="images/banking8.jpg" style="width: 1500px; height:500px">
			
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
                    setTimeout(carousel,2500);
                }
            </script>

        </div>



<%@include file="Footers.jsp"%>
</div>

</body>
</html>
