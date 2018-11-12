<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="project11.css">
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
       <%@include file="Head.jsp"%>
    </div>
    
    <div class="navigation">
    <%@include file="Navigator.jsp"%>
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

    <div class="footer">
    
    </div>

</div>
<%@include file="Footers.jsp"%>
</body>
</html>
