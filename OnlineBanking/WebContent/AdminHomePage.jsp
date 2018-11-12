<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title></title><link rel="stylesheet" type="text/css" href="project11.css">
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
 	Welcome Back! </tr><td><%=(request.getAttribute("username") == null) ? "" : request.getAttribute("username")%>
    </div>
    <div class="navigation">
   <%@include file="NavigatorAdmin.jsp"%>
    </div>
    <div class="middle">
        <div class="left-column">
            <div class="uppercase">
                <h2 style="text-align: center"></h2>

              

            </div>

            <div class="lowercase" style="max-width: 500px">
                <img class="photo" src="pp.jpeg" style="width:100%" >
                <img class="photo" src="ss.jpg" style="width:100% ">
                <img class="photo" src="mm.jpg" style="width: 100%">
                <img class="photo" src="tt.jpg" style="width: 100%">
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

        <div class="middle-column"></div>
        <div class="right-column"></div>
    </div>

    <div class="footer">

    </div>

</div>
<%@include file="Footers.jsp"%>
</body>
</html>
