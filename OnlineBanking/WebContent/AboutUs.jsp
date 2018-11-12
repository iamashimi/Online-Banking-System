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
            <li><u><a class="active" href="AboutUs.jsp">About Us</a></u></li>
            <li><u><a href="ContactUs.jsp">Contact Us</a></u></li>
        </ul>
   
    </div>
    
    <div class="middle">
    
        <div class="left-column">
            <div class="uppercase"><br><br><br><br>
                <font size="4px">The Online Banking facility of Incredible Bank is developed with the objective of bringing the convenience 
                of banking anywhere you are because we know your time is important. We provide Online Banking facility to our 
                savings, current account holders and credit card holders. We are continuously improving our internet banking 
                services we deliver to our loyal customers. Our Online Banking facility allows you to access your account history,
                transfer funds between your accounts and credit cards, settle bills, and make changes to your contact details 
                along with a host of other benefits.</font>

              

            </div>

            <div class="lowercase" style="max-width: 500px">
                <img class="photo" src="images/bank1.jpg" style="width:100%" >
                <img class="photo" src="images/bank2.jpg" style="width:100% ">
                <img class="photo" src="images/bank3.png" style="width: 100%">
                <img class="photo" src="images/bank5.jpg" style="width: 100%">
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

        <div class="middle-column"><h1>ABOUT OUR INCREDIBLE BANK</h1>
        <h2 style= "font-size: 48px;">Services on offer for current and savings account holders:</h2>
				<li>View account summary.</li><br>
				<li>Check account transaction history up to one year.</li><br>
				<li>View inward remittances.</li><br>
				<li>Transfers funds to other Standard Chartered Bank accounts, other banks -locally and internationally.</li>
				<li>Request statements.</li><br>

			<h2 style= "font-size: 48px;">Current account holders may request for cheque books.</h2>
				<li>Set up standing orders.</li><br>
				<li>Make utility payments to leading establishments.</li><br>
				<li>Make payments to your Standard Chartered Bank Credit Card.</li>
				
			<h2 style= "font-size: 48px;">Services on offer for credit cardholders:</h2>
				<li>View transactions you have made since your last statement/payment.</li><br>
				<li>View prior statements</li><br>
				<li>View your outstanding balance</li><br>
				<li>View your minimum due amount and payment due date</li><br>
				<li>Settle your credit card dues (if you hold a current or savings account with the Bank)</li><br>
				<li>Request for card limit increases</li><br>
				<li>Check on card application status</li><br>
				<li>Make utility payments to leading establishments.</li><br>
				<li>Transfer funds from your credit card to your current or savings account with the Bank</li><br>
        </div>
        <div class="right-column">
        <h2>HISTORY</h2>
        <a><font size="4px">Incredible Bank is one of the world's largest banking and financial services organisations. We serve
         more than 38 million customers through four global businesses: Retail Banking and Wealth Management, Commercial Banking, 
         Global Banking and Markets, and Global Private Banking. Our network covers 66 countries and territories in Europe, Asia,
         the Middle East and Africa, North America and Latin America.<br>
         
         With around 3,800 offices worldwide, we aim to be where the growth is, connecting customers to opportunities, enabling 
         businesses to thrive and economies to prosper, and ultimately helping people to fulfil their hopes and realise their 
         ambitions.
Listed on the London, Hong Kong, New York, Paris and Bermuda stock exchanges, shares in Incredible Banks are held by around 
200,000 shareholders in more than 125 countries and territories.
</font>
</a>
        <h2>Our Vision</h2>
<a>To be the most technologically advanced, innovative and customer friendly financial services organisation in Sri Lanka, 
poised for further expansion in South Asia</a><br>
		<h2>Our Mission</h2>
<a>Providing reliable, innovative, customer friendly financial services, utilizing cutting edge technology and focusing 
continuously on productivity improvement whilst developing our staff and acquiring necessary expertise to expand locally 
and regionally</a>
        
        </div>
    </div>

    <div class="footer">
    
    </div>

</div>
<%@include file="Footers.jsp"%>
</body>
</html>
