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
  <a href="AdminHomePage.jsp" class="active">Home</a>

  <div class="dropdown">
    <button class="dropbtn">Customer Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="AdminPanel.jsp">View Profile</a>
      <a href="AdminUpdate.jsp">Update Profile</a>
      <a href="AdminDelete.jsp">Delete Profile</a>
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Loan Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Loan Details</a>
      <a href="#">Update Loan Details</a>
      <a href="#">Delete Loan Details</a>
    </div>
  </div> 
  
    <div class="dropdown">
    <button class="dropbtn">Cheque Book Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Cheque Book Details</a>
      <a href="#">Update Cheque Book Details</a>
      <a href="#">Delete Cheque Book Details</a>
    </div>
  </div> 

  <div class="dropdown">
    <button class="dropbtn">Customer Transaction 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View Transaction Details</a>
      <a href="#">Update Transaction</a>
      <a href="#">Delete Transaction</a>
    </div>
  </div> 
  
    <div class="dropdown">
    <button class="dropbtn">Admin Profile 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="GetAdminDetails.jsp">View Profile Details</a>
      <a href="UpdateAdmin.jsp">Update Profile</a>
      <a href="DeleteAdmin.jsp">Delete Profile</a>
    </div>
  </div> 
  
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</body>
</html>