<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<form method="post" action="UpdateCustomer">
	

		<table width="738" border="0" align="center">
			<h2 style align="center">Update Customer Account</h2>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Customer First Name:</td>
				<td><input type="text" name="fusername" id="fusername"
					value="${fusername}" disabled /></td>
			</tr>
			<tr>
				<td>Customer Last Name:</td>
				<td><input type="text" name="lusername" id="lusername"
					value="${lusername}" disabled /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" id="address"
					value="${address}" /></td>
			</tr>
			<tr>
				<td>National Identity card No:</td>
				<td><input type="text" name="nic" id="nic"
					value="${nic}" disabled/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="text" name="gender" id="gender"
					value="${gender}" disabled/></td>
			</tr>
			<tr>
				<td>Date Of Birth:</td>
				<td><input type="text" name="dateofbirth" id="dateofbirth"
					value="${dateofbirth}" />yyyy-mm-dd</td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="email" id="email"
					value="${email}" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phone" id="phone"
					value="${phone}" /></td>
			</tr>
			<tr>
				<td>Account No:</td>
				<td><input type="text" name="accountnum" id="accountnum"
					value=""${accountnum} disabled/></td>
			</tr>
			<tr>
				<td>Amount:</td>
				<td><input type="text" name="amount" id="amount"
					value="${amount}" disabled/></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="username" id="username"
					value="${username}" /></td>
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
				<td><input type="text" name="password" id="password"
					value="${password}" /></td>

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
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update" /> 
				<input type="submit" value="Cancel"></td>
			</tr>
		</table>
	</form>

</body>
</html>