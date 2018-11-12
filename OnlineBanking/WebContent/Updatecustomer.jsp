<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="project10.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incredible Bank...</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
    align: center;
}

th{
    border: 2px solid #dddddd;
    text-align: center;
    padding: 8px;
    
}

td {
    border: 2px solid #D0D3D4;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

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

        <div class="middle-column">
<%
  if(session.getAttribute("username") != null){
	  String username = (String) session.getAttribute("username");
	  
  
 try { 
	 
      Class.forName("com.mysql.jdbc.Driver").newInstance();
            
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/oop?useSSL=false","root","root");
   
            PreparedStatement ps = con.prepareStatement("select * from customer where username='"+username+"'");
            
               ResultSet rs = ps.executeQuery();
               rs.next();
               
               
        %>

		<form method="post" action="UpdateCustomer">
	

		<table width="800" border="0" align="center">
			<h2 style align="center">Detail Information of <%=rs.getString(1)%> <%=rs.getString(2)%></h2>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Customer First Name:</td>
				<td><input type="text" name="Fname" id="Fname"
					value="<%=rs.getString(1)%>" disabled /></td>
			</tr>
			<tr>
				<td>Customer Last Name:</td>
				<td><input type="text" name="Lname" id="Lname"
					value="<%=rs.getString(2)%>" disabled /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="Address" id="Address"
					value="<%=rs.getString(3)%>" /></td>
			</tr>
			<tr>
				<td>National Identity card No:</td>
				<td><input type="text" name="NIC" id="NIC"
					value="<%=rs.getString(4)%>" disabled/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="text" name="Gender" id="Gender"
					value="<%=rs.getString(5)%>" disabled/></td>
			</tr>
			<tr>
				<td>Date Of Birth:</td>
				<td><input type="text" name="DOB" id="DOB"
					value="<%=rs.getString(6)%>" />yyyy-mm-dd</td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="Email" id="Email"
					value="<%=rs.getString(7)%>" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="PhoneNo" id="PhoneNo"
					value="<%=rs.getString(8)%>" /></td>
			</tr>
			<tr>
				<td>Account No:</td>
				<td><input type="text" name="AccountNo" id="AccountNo"
					value="<%=rs.getString(9)%>" disabled/></td>
			</tr>
			<tr>
				<td>Amount:</td>
				<td><input type="text" name="Amount" id="Amount"
					value="<%=rs.getString(10)%>" disabled/></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="username" id="username"
					value="<%=rs.getString(11)%>" disabled/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password" id="password"
					value="<%=rs.getString(12)%>" /></td>

			</tr>
			<tr><td><input type="submit" value="Update"></td></tr>
		</table>
	</form>
	        <%
              
      rs.close();
        ps.close();
        con.close();
      }catch(Exception e){System.out.println(e);}
      
      }else
{
   response.sendRedirect("Login.jsp?id=Your session may be expired. You have to login first");

  
}

        %>
        </div>
        <div class="right-column"></div>
    </div>

    <div class="footer">

    </div>

</div>

</body>
</html>