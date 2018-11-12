<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="project9.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Allerta Stencil' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|3d-float">
<style>
a.A:link {color:#ff0000;text-decoration:none; font-family:Allerta Stencil;}
a.A:visited {color:#0000ff;text-decoration:none;}
a.A:hover {text-decoration:underline;}
h2{
font-family: 'Tangerine', serif;
text-shadow: 4px 4px 4px #aaa;
}

h1{
font-family: Allerta Stencil;
text-shadow: 4px 4px 4px #aaa;
}
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
            <li><u><a href="Login.jsp">Log in</a></u> </li>
            <li><u><a href="AboutUs.jsp">About Us</a></u></li>
            <li><u><a class="active"href="ContactUs.jsp">Contact Us</a></u></li>
        </ul>
   
    </div>
    
    <div class="middle">
    
        <div class="left-column">
            <div class="uppercase"><br><br><br>
				<h2 align="center" style= "font-size: 48px;">E-Mail</h2>
              <a>You can email us on IncredibleBank@gmail.com. We're here to help, 7 days a week. Please don't mail your personal or
               banking details. We'll never direct you to a webpage that asks you to share your personal details.</a>

            </div>

            <div class="lowercase" style="max-width: 500px">
                <img class="photo" src="images/contact.jpg" style="width: 1500px ; height:300px" >
                <img class="photo" src="images/contact1.jpg" style="width: 1500px ; height:300px">
                <img class="photo" src="images/contact2.jpg" style="width: 1500px ; height:300px">
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

        <div class="middle-column"><h1 align="center">CONTACT US</h1><br><br>
        <h2 align="center" style= "font-size: 48px;">Phone</h2>
        <a>For service on existing accounts, call 1-800-935-9935 call support representative Representatives available 24 hours a day,
         7 days a week.
For faster service and secure access to your account information, enter your debit card number and the same PIN you use at the ATM.</a>

        </div>
        <div class="right-column"><br><br><br>
        <h2 align="center" style= "font-size: 48px;">In person</h2>
        <a>Chase offers easy access to more than 5,100 branches and 16,000 ATMs nationwide.</a>
        </div>
    </div>

    <div class="footer">
    
    </div>

</div>
<%@include file="Footers.jsp"%>
</body>
</html>
