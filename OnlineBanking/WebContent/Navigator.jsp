<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Navigation.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="HomePage.jsp" class="active">Home</a>

  <div class="dropdown">
    <button class="dropbtn">Check Book Order
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Profile Details</a>
      <a href="#">Update Profile</a>
      <a href="#">Delete Profile</a>
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Transaction
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Profile Details</a>
      <a href="#">Update Profile</a>
      <a href="#">Delete Profile</a>
    </div>
  </div> 
  
    <div class="dropdown">
    <button class="dropbtn">Loan Apply
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Profile Details</a>
      <a href="#">Update Profile</a>
      <a href="#">Delete Profile</a>
    </div>
  </div> 

  <div class="dropdown">
    <button class="dropbtn">Customer Profile 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Getcustomer.jsp">View Profile Details</a>
      <a href="Updatecustomer.jsp">Update Profile</a>
      <a href="Deletecustomer.jsp">Delete Profile</a>
    </div>
  </div> 
  
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</body>
</html>