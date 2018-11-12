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
<link rel="stylesheet" type="text/css" href="project11.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incredible Bank...</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
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
        <%@include file="NavigatorAdmin.jsp"%>
    </div>
  <div class="middle-column"><br><br>
			<h2 style align="center">Customer Delete Panel</h2>
		<table><tr><th>First Name</th>
           <th>Last Name</th>
           <th>Address</th>
           <th>NIC</th>
           <th>Gender</th>
           <th>DOB</th>
           <th>Email</th>
           <th>Phone Number</th>
           <th>Account No</th>
           <th>Amount</th>
           <th>User Name</th>
           <th>Password</th>
           <th>DELETE</th>
</tr>

<%
  
 try {       
      Class.forName("com.mysql.jdbc.Driver").newInstance();
            
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/oop?useSSL=false","root","root");
   
            PreparedStatement ps = con.prepareStatement("select * from customer");
            
               ResultSet rs = ps.executeQuery();
               
while(rs.next()){
	   
	   %>
        
       <tr><td><%=rs.getString(1)%></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
           <td><%=rs.getString(6)%></td>
           <td><%=rs.getString(7)%></td>
           <td><%=rs.getString(8)%></td>
           <td><%=rs.getString(9)%></td>
           <td><%=rs.getString(10)%></td>
           <td><%=rs.getString(11)%></td>
           <td><%=rs.getString(12)%></td>
           <td><a href="RequestDelete.jsp"><button>DELETE</button></a></td></tr>
           
            
           

	        <% }
      rs.close();
        ps.close();
        con.close();
      }catch(Exception e){System.out.println(e);}

        %>
        </table>
</div> 

    <div class="footer">

    </div>

</div>

</body>
</html>