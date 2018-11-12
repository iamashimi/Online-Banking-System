<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<SCRIPT LANGUAGE="JavaScript">
	function validateform(form) {

		for (var i = 0; i < 2; i++) {
			if (form.elements[0].value == null || form.elements[0].value == "") {
				alert("Please enter the first name.");
				form.elements[0].value = "";
				form.elements[0].focus();
				return false;
			}

			if (!isNaN(form.elements[i].value)) {
				alert("First Name cannot only have numbers.");
				form.elements[i].value = "";
				form.elements[i].focus();
				return false;
			}
			if (form.elements[1].value == null || form.elements[1].value == "") {
				alert("Please enter the last name.");
				form.elements[1].value = "";
				form.elements[1].focus();
				return false;
			}

			if (!isNaN(form.elements[i].value)) {
				alert("Last Name cannot only have numbers.");
				form.elements[i].value = "";
				form.elements[i].focus();
				return false;
			}
		}

		var nic = document.C1.nic.value;
		var nicp = /^[0-9]{9}[vV]$/;

		if (nic == null || nic == "") {
			alert("Please enter the NIC number.");
			document.C1.nic.value = "";
			document.C1.nic.focus();
			return false;
		}

		if (!nic.match(nicp)) {
			alert("Invalid NIC number");
			document.C1.nic.value = "";
			document.C1.nic.focus();
			return false;
		}

		var gender = form.querySelectorAll('input[name="gender"]:checked');
		if (!gender.length) {
			alert('You must select male or female');
			return false;
		}

		var dateofbirth = document.C1.dateofbirth.value;
		var date = /^(\d{4})-(\d{1,2})-(\d{1,2})/;

		if (dateofbirth == null || dateofbirth == "") {
			alert("Please Entre the Date Of Birth");
			document.C1.dateofbirth.value = "";
			document.C1.dateofbirth.focus();
			return false;
		}

		if (!dateofbirth.match(date)) {
			alert("Invalid date format.");
			document.C1.dateofbirth.value = "";
			document.C1.dateofbirth.focus();
			return false;
		}

		var email = document.C1.email.value;
		var mail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

		if (email == null || email == "") {
			alert("Please enter the Email.");
			document.C1.email.value = "";
			document.C1.email.focus();
		}

		if (!email.match(mail)) {
			alert("Invalid Email address.");
			document.C1.email.value = "";
			document.C1.email.focus();
			return false;
		}

		if (!isNaN(document.C1.phone.value)) {
			if (document.C1.phone.value > 9999999999) {
				alert("please check the phone number.");
				document.C1.phone.value = "";
				document.C1.phone.focus();
				return false;
			}

			if (document.C1.phone.value < 99999999) {
				alert("please check the phone number.");
				document.C1.phone.value = "";
				document.C1.phone.focus();
				return false;
			}
		} else {
			alert("Phone Number must be number.");
			document.C1.phone.value = "";
			return false;
		}

		if (document.C1.accountnum.value == null
				|| document.C1.accountnum.value == "") {
			alert("Please enter the Account No.");
			document.C1.accountnum.value = "";
			document.C1.accountnum.focus();
			return false;
		}

		if (!isNaN(document.C1.accountnum.value)) {
			if (document.C1.accountnum.value > 99999999) {
				alert("Account Number must contains 8 characters.");
				document.C1.accountnum.value = "";
				document.C1.accountnum.focus();
				return false;
			}

			if (document.C1.accountnum.value < 9999999) {
				alert("Account Number must contains 8 characters.");
				document.C1.accountnum.value = "";
				document.C1.accountnum.focus();
				return false;
			}
		} else {
			alert("Account No must be a Number.");
			document.C1.accountnum.value = "";
			document.C1.accountnum.focus();
			return false;
		}

		if (document.C1.amount.value == null || document.C1.amount.value == "") {
			alert("Please enter the Amount.");
			document.C1.amount.value = "";
			document.C1.amount.focus();
			return false;
		}

		if (!isNaN(document.C1.amount.value)) {
			if (document.C1.amount.value < 1000) {
				alert("Minimum Balance should be RS.1000/=.");
				document.C1.amount.value = "";
				document.C1.amount.focus();
				return false;
			}
		} else {
			alert("Amount must be a number.");
			document.C1.amount.value = "";
			return false;
		}

		if (document.C1.password.value != document.C1.repassword.value) {
			alert("Check Confirm Password.");
			document.C1.repassword.value = "";
			document.C1.repassword.focus();
			return false;
		}

	}
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incredible Bank...</title>
<link rel="stylesheet" type="text/css" href="project10.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	function click() {
		var sds = document.getElementById("num");
	}
</script>
<style>
table {
    
    font-size:20px;
    border-collapse: collapse;
    width: 45%;
    align: center;
}

td{
   font-weight: 600;
   
}
input {
    height:25px;
    weight:50px;
}

input::placeholder {
 font-size:16px;
}

</style>
</head>
<body>

<div class="full_page">

    <div class="header">
        <img src="kalani.jpg" height="150px">
        <div class="name"><br><h1></h1></div>

        <div class="search"><br><br>
           
            
        </div>

    </div>
    <div class="navigation">
        <ul>
            <li><u><a href="HomePage1.jsp">Home</a></u></li>
            <li><u><a class="active" href="Addcustomer.jsp">Create an account</a></u> </li>
            <li><u><a href="Login.jsp">Log in</a></u> </li>
            <li><u><a href="AboutUs.jsp">About Us</a></u></li>
            <li><u><a href="ContactUs.jsp">Contact Us</a></u></li>
            
        </ul>

    </div>
    <div class="middle">
        <div class="left-column">
            <div class="uppercase">
                <h2 style="text-align: center"></h2>

              

            </div>

            <div class="lowercase" style="max-width: 400px">
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

        <div class="middle-column">

<form name=C1 method="post" onSubmit="return validateform(this)" action="DisplayOne">

		<table width="500" border="0" align="center">

			<h2 style align="center"> New Customer Account</h2>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Customer First Name:</td>
				<td><input type="text" name="fusername" id="fusername"
					placeholder="Customer's First Name" size="25"/></td>
			</tr>
			<tr>
				<td>Customer Last Name:</td>
				<td><input type="text" name="lusername" id="lusername"
					placeholder="Customer's Last Name" size="25"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" id="address"
					placeholder="Customer's Address" size="25"/></td>
			</tr>
			<tr>
				<td>National Identity card No:</td>
				<td><input type="text" name="nic" id="nic"
					placeholder="942176429V" size="25"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" id="gender" value="Male" />Male</input>
					<input type="radio" name="gender" id="gender" value="Female" />Female</input></td>
			</tr>
			<tr>
				<td>Date Of Birth:</td>
				<td><input type="text" name="dateofbirth" id="dateofbirth"
					placeholder="yyyy-mm-dd" size="25"/></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="email" id="email"
					placeholder="tomcat@gmail.com" size="25"/></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phone" id="phone"
					placeholder="0112729729" size="25"/></td>
			</tr>
			<tr>
				<td>Account No:</td>
				<td><input type="text" name="accountnum" id="accountnum"
					placeholder="12345678" size="25"/></td>
			</tr>
			<tr>
				<td>Amount:</td>
				<td><input type="text" name="amount" id="amount"
					placeholder="1000.00" size="25"/></td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" id="username"
					placeholder="User Name" size="25"/></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="password"
					placeholder="Password" size="25"/></td>

			</tr>
			<tr>
				<td>Re-Password:</td>
				<td><input type="password" name="repassword" id="repassword"
					placeholder="Password" size="25"/></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><br><input type="submit" value="Submit" font-size:="10px"/> <INPUT TYPE=RESET VALUE="CLEAR"></td>
			</tr>
		</table>
	</form>
	</div>
        <div class="right-column"></div>
    </div>

    <div class="footer">

       

       <div class="right1-column"> <br>
            
        </div>


    </div>

</div>

</body>
</html>